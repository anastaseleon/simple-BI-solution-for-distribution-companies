DATA WORK.event_description;
    SET WORK.EFFICIENTRIDE_DATASET_0001;
RUN;
DATA WORK.orders;
    SET WORK.EFFICIENTRIDE_DATASET_0002 ;
RUN;

PROC SQL;
    /* Calculate the percentage of each event for each delivery location */
    CREATE TABLE location_event_percentages AS
    SELECT
        current_month_counts.Delivery_Location,
        current_month_counts.event,
        (current_month_counts.event_count / (SELECT COUNT(*) FROM orders WHERE status = 'Delivered' AND Delivery_Location = current_month_counts.Delivery_Location AND MONTH(Actual_Delivery_Date) = MONTH(TODAY()) AND YEAR(Actual_Delivery_Date) = YEAR(TODAY()))) AS event_percentage
    FROM
        current_month_counts;
QUIT;

PROC SQL;
    /* Assign scores, goals, and importance for each delivery location */
    CREATE TABLE location_scorecard AS
    SELECT
        location_event_percentages.Delivery_Location,
        location_event_percentages.event,
        location_event_percentages.event_percentage,
        CASE
            WHEN location_event_percentages.event = 0 THEN 100 * location_event_percentages.event_percentage
            ELSE 1 - (location_event_percentages.event_percentage * 
                CASE
                    WHEN location_event_percentages.event = 1 THEN 0.9
                    WHEN location_event_percentages.event = 2 THEN 1
                    WHEN location_event_percentages.event = 3 THEN 1
                    WHEN location_event_percentages.event = 4 THEN 1
                    WHEN location_event_percentages.event = 5 THEN 1
                    WHEN location_event_percentages.event = 6 THEN 1
                    ELSE 0
                END)
        END AS relative_score,
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
        END AS importance
    FROM
        location_event_percentages;
QUIT;
PROC SQL;
    /* Create a template of all possible events for each delivery location */
    CREATE TABLE template AS
    SELECT DISTINCT
        Delivery_Location,
        event_description.event_id
    FROM
        orders, event_description;

    /* Merge the template with the location scorecard */
    CREATE TABLE merged_scorecard AS
    SELECT
        template.Delivery_Location,
        template.event_id as Event,
        COALESCE(location_scorecard.event_percentage, 0) AS event_percentage,
        COALESCE(location_scorecard.relative_score, 100) AS relative_score,
        COALESCE(location_scorecard.goal, 0.95) AS goal,
        COALESCE(location_scorecard.importance, 1) AS importance
    FROM
        template
    LEFT JOIN
        location_scorecard ON template.Delivery_Location = location_scorecard.Delivery_Location AND template.event_id = location_scorecard.event;
QUIT;

/* Export the scorecard table to a CSV file */
PROC EXPORT DATA=merged_scorecard
    OUTFILE="C:/Users/anast/OneDrive - HEC Montréal/School/Portfolio/Monthly_scorecard.csv" 
    DBMS=CSV 
    REPLACE;
RUN;
