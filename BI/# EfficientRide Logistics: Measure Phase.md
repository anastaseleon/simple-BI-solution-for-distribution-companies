
| Department | Management Level | Potential Questions | Related Strategy | SQL/DAX |
|------------|------------------|---------------------|------------------|---------|
| Logistics  | Operational      | How many orders are received on average each day? | Efficiency | `SELECT AVG(COUNT(OrderID)) FROM Orders GROUP BY OrderDate` |
|            |                  | How many drivers are available on average each day? | Efficiency | `SELECT AVG(COUNT(DriverID)) FROM Schedule WHERE EquipmentAvailable = True GROUP BY Date` |
|            |                  | What is the average number of unassigned drivers per day? | Efficiency | `SELECT AVG(COUNT(DriverID)) FROM Schedule WHERE EquipmentAvailable = False GROUP BY Date` |
|            |                  | How many orders are rescheduled? | Customer Satisfaction | `SELECT COUNT(OrderID) FROM Orders WHERE OrderStatus = 'Rescheduled'` |
|            |                  | How many orders are delivered late? | Customer Satisfaction | `SELECT COUNT(OrderID) FROM Orders WHERE ActualDeliveryDate > PlannedDeliveryDate` |
|            | Strategic        | What are the peak periods for orders? | Efficiency | `SELECT TOP 5 COUNT(OrderID), OrderDate FROM Orders GROUP BY OrderDate ORDER BY COUNT(OrderID) DESC` |
|            |                  | Are there recurring patterns in order volume? | Efficiency | python. |
|            |                  | Are there certain drivers or equipment types that are associated with late deliveries? | Efficiency, Customer Satisfaction | `SELECT DriverID, EquipmentType, COUNT(OrderID) FROM Orders JOIN Schedule ON Orders.DriverID = Schedule.DriverID WHERE ActualDeliveryDate > PlannedDeliveryDate GROUP BY DriverID, EquipmentType` |
|            |                  | Are there certain regions or customers that have a higher incidence of rescheduled orders? | Customer Satisfaction | `SELECT CustomerID, COUNT(OrderID) FROM Orders WHERE OrderStatus = 'Rescheduled' GROUP BY CustomerID` |
| Finance    | Operational      | What is the cost associated with rescheduled orders? | Efficiency |  |
|            |                  | What is the cost associated with late deliveries? | Efficiency |. |
|            | Strategic        | Are there cost-saving opportunities in optimizing driver and equipment scheduling? | Efficiency | machine learning or optimization models. |
|            |                  | Can we predict future order volume for budgeting purposes? | Efficiency |pythonl. |
| HR         | Operational      | Are there enough drivers to handle the volume of orders? | Efficiency | `SELECT COUNT(DISTINCT DriverID), COUNT(DISTINCT OrderID) FROM Schedule JOIN Orders ON Schedule.Date = Orders.OrderDate WHERE EquipmentAvailable = True` |
|            |                  | Are drivers being evenly utilized or are some drivers being overworked? | Efficiency | `SELECT DriverID, COUNT(OrderID) FROM Orders GROUP BY DriverID` |
|            | Strategic        | Do we need to hire more drivers or acquire more equipment? | Efficiency | . |
|            |                  | Are there training needs for drivers to handle different types of equipment or orders? | Efficiency | `SELECT EquipmentType, COUNT(DISTINCT DriverID) FROM Schedule GROUP BY EquipmentType` |

## Data Extraction

The data extraction process involves pulling all the necessary data from the different sources. I'll be using SQL for this purpose. The goal is to extract all the relevant information that can help in answering the business-related questions and aid in the exploration of the company's fundamental components.

[Link to SQL queries for data extraction]

## Data Quality Check

Data quality is paramount for any analytical project. In this step, I'll be checking the quality of the extracted data. This involves checking for missing values, outliers, and any inconsistencies in the data.

[Link to data quality check code]

## Data Measurement

Once the data quality is assured, the next step is to measure the data. This involves calculating various metrics that can provide insights into the operations of EfficientRide Logistics. Some of these metrics include the average number of orders received each day, the number of available drivers each day, the number of unassigned drivers per day, etc.

[Link to data measurement code]
