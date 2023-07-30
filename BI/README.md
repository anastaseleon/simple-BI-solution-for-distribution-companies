# Measure Phase

In this phase of the project, we aim to gather and measure the data from various sources. This data provides a quantitative basis for our analysis and helps us understand the current state of business operations.

The Measure phase consists of three major steps: Data Extraction, Data Modelling, and Data Measurement.

In Data Extraction, we pull all necessary data from different sources. Our goal is to extract all relevant information that can aid in answering business-related questions and exploring the company's fundamental components.

Next, in Data Modelling, we create a model of the data. We structure the data in a way that makes it easy to analyze and draw insights from. The model reflects the real-world entities and relationships that exist within the business.

Finally, in Data Measurement, we calculate various metrics that can provide insights into the operations of EfficientRide Logistics. These metrics include measures such as the average number of orders received each day, the number of available drivers each day, the number of unassigned drivers per day, and more.

Let's dive deeper into each of these steps.
| Department | Management Level | User Story | Related Strategy |
|------------|------------------|------------|------------------|
| Logistics  | Operational      | User Story 1: As a logistics manager, I want to know the average number of orders received each day so that I can manage resources effectively. | Efficiency |
|            |                  | User Story 2: As a logistics manager, I want to know how many drivers are available each day so that I can schedule deliveries efficiently. | Efficiency |
|            |                  | User Story 3: As a logistics manager, I want to know the average number of unassigned drivers each day so that I can identify staffing needs. | Efficiency |
|            |                  | User Story 4: As a logistics manager, I want to know how many orders are rescheduled so that I can improve customer satisfaction. | Customer Satisfaction |
|            |                  | User Story 5: As a logistics manager, I want to know how many orders are delivered late so that I can improve delivery processes. | Customer Satisfaction |
|            | Strategic        | User Story 6: As a logistics director, I want to identify peak periods for orders so that I can plan for high-demand times. | Efficiency |
|            |                  | User Story 7: As a logistics director, I want to identify drivers or equipment types associated with late deliveries so that I can address performance issues. | Efficiency, Customer Satisfaction |
|            |                  | User Story 8: As a logistics director, I want to identify regions or customers with a high incidence of rescheduled orders so that I can improve customer service. | Customer Satisfaction |
| Finance    | Operational      | User Story 9: As a finance officer, I want to know the cost associated with rescheduled orders so that I can manage the budget effectively. | Efficiency |
|            |                  | User Story 10: As a finance officer, I want to know the cost associated with late deliveries so that I can control expenses. | Efficiency |
| HR         | Operational      | User Story 11: As an HR manager, I want to know if there are enough drivers to handle the volume of orders so that I can meet staffing needs. | Efficiency |
|            |                  | User Story 12: As an HR manager, I want to know if drivers are being evenly utilized or if some drivers are being overworked so that I can ensure fair workloads. | Efficiency |
|            | Strategic        | User Story 13: As an HR director, I want to know if there are training needs for drivers to handle different types of equipment or orders so that I can improve driver skills. | Efficiency |


## Power BI Report Structure

The Power BI report is organized into several dashboards to address the above user stories:

1. **Overview Dashboard**: Provides high-level information such as the total number of orders, total revenue, total cost, and the average number of orders per day. 

2. **Logistics Dashboard**: Contains visuals that address User Stories 1-6, and 8-9, including charts for orders received, available drivers, unassigned drivers, rescheduled and late orders, peak periods for orders, and late deliveries by driver and equipment type.

3. **Finance Dashboard**: Contains visuals related to User Stories 10-11, including charts for cost associated with rescheduled orders and late deliveries.

4. **Human Resources Dashboard**: Contains visuals related to User Stories 14, 15, and 17, including charts for the number of drivers, workload distribution among drivers, and drivers needing training.

## Data Extraction

The data extraction process involves pulling all the necessary data from the different sources.  The goal is to extract all the relevant information that can help in answering the business-related questions and aid in the exploration of the company's fundamental components.

Here are the tables we will be working with:
<table>
<tr>
<td>

- **Locations**
    - Location Name
    - Location Type
    - Location Latitude
    - Location Longitude

- **Trailers Pool**
    - Equipment ID
    - Equipment Type
    - Capacity

- **Orders**
    - Order ID
    - Pickup Date
    - Lead Time
    - Volume
    - Event
    - Delivery Type
    - Delivery Date
    - Pickup Address
    - Delivery Location
    - Status
    - Trailer Requirement
    - Actual Pickup Date
    - Driver ID
    - Equipment ID
    - Actual Delivery Date
    - Not Delivered Reason
    - Cost
    - Revenue

</td>
<td>

- **Drivers**
    - Driver ID
    - Driver Name
    - Hired Date
    - License Type
    - Seniority
    - Vacation Days

- **Schedule**
    - Date
    - Driver ID
    - Equipment ID
    - Equipment Available
    - License Type
    - Equipment Type

</td>
<td>

- **Vacations**
    - Driver ID
    - Start Date
    - End Date

- **Unavailability**
    - Date
    - ID (can be equipment or driver)

- **Event Description**
    - Event ID
    - Event Description

</td>
</tr>
</table>

[Link to SQL queries for data extraction]

## Data Modelling

In this step, I'll be creating a model of the data. This involves structuring the data in a way that makes it easy to analyze and draw insights from. The model will reflect the real-world entities and relationships that exist in the business.

![data model](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/BI/Data%20Model1.png?raw=true)

Once the data model is built, the next step is to measure the data. This involves calculating various metrics that can provide insights into the operations of EfficientRide Logistics. Some of these metrics include the average number of orders received each day, the number of available drivers each day, the number of unassigned drivers per day, etc.

[Link to data measurement code]
