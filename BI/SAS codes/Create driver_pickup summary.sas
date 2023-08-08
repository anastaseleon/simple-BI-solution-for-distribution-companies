PROC SQL;
	CREATE TABLE driver_pickup_summary AS
		SELECT
			Actual_Pickup_Date,
			Driver_ID,
			COUNT(*) AS Number_of_Pickups
		FROM
			Orders
		WHERE 
			(Driver_ID IS NOT NULL AND Driver_ID NE 'Outsourced') AND
			MONTH(Actual_Pickup_Date) = MONTH(TODAY()) AND
			YEAR(Actual_Pickup_Date) = YEAR(TODAY())
		GROUP BY
			Driver_ID,
			Actual_Pickup_Date;
QUIT;


PROC EXPORT DATA=WORK.DRIVER_PICKUP_SUMMARY
    OUTFILE="C:/Users/anast/OneDrive - HEC Montréal/School/Portfolio/Driver_productivity.csv" 
    DBMS=CSV 
    REPLACE;
RUN;
