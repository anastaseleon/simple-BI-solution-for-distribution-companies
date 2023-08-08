DATA WORK.event_description;
	SET WORK.EFFICIENTRIDE_DATASET_0001;
RUN;

DATA WORK.orders;
	SET WORK.EFFICIENTRIDE_DATASET_0002;
RUN;

/*------------------------------------------------------ */
/* Create a template of all possible events for each delivery location */
PROC SQL;
	CREATE TABLE template AS
		SELECT DISTINCT
			event_description.event_id as Event, Delivery_Location

		FROM
			orders, event_description;
QUIT;


/* Create event counts for the current month per location */
PROC SQL;
	CREATE TABLE current_month_counts AS
		SELECT
			template.Delivery_Location,
			template.event,
			COALESCE(COUNT(orders.event), 0) AS event_count
		FROM
			template
		LEFT JOIN orders ON template.Delivery_Location = orders.Delivery_Location AND template.event = orders.event
			WHERE
				orders.status = 'Delivered' AND
				MONTH(orders.Actual_Delivery_Date) = MONTH(TODAY()) AND
				YEAR(orders.Actual_Delivery_Date) = YEAR(TODAY())
			GROUP BY
				template.Delivery_Location, template.event;
QUIT;
/* Calculate the percentage of each event for each delivery location */
PROC SQL;
	CREATE TABLE location_event_percentages AS
		SELECT
			current_month_counts.Delivery_Location,
			current_month_counts.event,
			(current_month_counts.event_count / 
				(SELECT SUM(event_count) FROM current_month_counts AS inner_counts WHERE inner_counts.Delivery_Location = current_month_counts.Delivery_Location)
			) AS event_percentage
		FROM
			current_month_counts;
QUIT;


/* Assign scores, goals, and importance for each delivery location */
proc sql;
	CREATE TABLE location_scorecard AS
		SELECT
			location_event_percentages.Delivery_Location,
			location_event_percentages.event,
			location_event_percentages.event_percentage,
		CASE
			WHEN location_event_percentages.event = 0 THEN location_event_percentages.event_percentage
			ELSE 1- (location_event_percentages.event_percentage * 
		CASE
			WHEN location_event_percentages.event = 1 THEN 0.9
			WHEN location_event_percentages.event = 2 THEN 1
			WHEN location_event_percentages.event = 3 THEN 1
			WHEN location_event_percentages.event = 4 THEN 1
			WHEN location_event_percentages.event = 5 THEN 1
			WHEN location_event_percentages.event = 6 THEN 1
			ELSE 0
		END)
		END 
	AS relative_score,
		0.95 AS goal,
	CASE
		WHEN location_event_percentages.event = 0 THEN 1
		WHEN location_event_percentages.event = 1 THEN 0.9
		WHEN location_event_percentages.event = 2 THEN 1
		WHEN location_event_percentages.event = 3 THEN 0.8
		WHEN location_event_percentages.event = 4 THEN 1
		WHEN location_event_percentages.event = 5 THEN 1
		WHEN location_event_percentages.event = 6 THEN 1
		ELSE 0
	END 
AS importance
	FROM
		location_event_percentages;
QUIT;


/* Export the scorecard table to a CSV file */
PROC EXPORT DATA=location_scorecard
	OUTFILE="C:/Users/anast/OneDrive - HEC Montréal/School/Portfolio/Monthly_scorecard.csv" 
	DBMS=CSV 
	REPLACE;
RUN;

