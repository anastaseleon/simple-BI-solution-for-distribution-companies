PROC SQL;
    /* Create a table with event counts for the current month */
    CREATE TABLE temp AS
    SELECT *
    FROM event_description;

    CREATE TABLE current_month_counts_master AS
    SELECT * 
    FROM temp
    LEFT JOIN 
        (SELECT event, COUNT(*) AS event_count
        FROM orders
        WHERE status = 'Delivered' AND
        MONTH(Actual_Delivery_Date) = MONTH(TODAY()) AND
        YEAR(Actual_Delivery_Date) = YEAR(TODAY())
        GROUP BY event) as event_counts
    ON temp.event_id= event_counts.event;
QUIT;

DATA current_month_counts_master;
    SET current_month_counts_master (DROP=event RENAME=(event_id=Event));
    IF missing(event_count) THEN event_count = 0; 
RUN;

PROC SQL;
    /* Get the total number of events for the current month */
    CREATE TABLE total_events AS
    SELECT COUNT(*) AS total_count
    FROM orders
    WHERE status = 'Delivered' AND
        MONTH(Actual_Delivery_Date) = MONTH(TODAY()) AND
        YEAR(Actual_Delivery_Date) = YEAR(TODAY());

    /* Calculate the percentage of each event */
    CREATE TABLE event_percentages AS
    SELECT current_month_counts_master.event,
           (current_month_counts_master.event_count / total_events.total_count) AS event_percentage
    FROM current_month_counts_master, total_events;
QUIT;

/* Assign scores, goals, and importance */
PROC SQL;
    CREATE TABLE master_scorecard AS
    SELECT event_percentages.event,
           event_percentages.event_percentage, 
           CASE
               WHEN event_percentages.event = 0 THEN event_percentages.event_percentage
               ELSE 1 - (event_percentages.event_percentage * 
               /*Not all issues has the same weights*/
               CASE
                   WHEN event_percentages.event = 1 THEN 0.9 /* Same day delays are tolerated*/
                   WHEN event_percentages.event = 2 THEN 1 /* customer complaints are taking seriously*/
                   WHEN event_percentages.event = 3 THEN 0.8 /* Reschedule can be tolerated has long as it's due to capacity issues*/
                   WHEN event_percentages.event = 4 THEN 1
                   WHEN event_percentages.event = 5 THEN 1
                   WHEN event_percentages.event = 6 THEN 1
                   ELSE 0
               END)
           END AS relative_score,
           0.95 AS goal,
           CASE
               WHEN event_percentages.event = 0 THEN 1
               WHEN event_percentages.event = 1 THEN 0.9
               WHEN event_percentages.event = 2 THEN 1
               WHEN event_percentages.event = 3 THEN 0.8
               WHEN event_percentages.event = 4 THEN 1
               WHEN event_percentages.event = 5 THEN 1
               WHEN event_percentages.event = 6 THEN 1
               ELSE 0
           END AS importance
    FROM event_percentages;
QUIT;

/* Export the scorecard table to a CSV file */
PROC EXPORT DATA=master_scorecard
    OUTFILE="C:/Users/anast/OneDrive - HEC Montréal/School/Portfolio/Monthly_master_scorecard.csv" 
    DBMS=CSV 
    REPLACE;
RUN;
