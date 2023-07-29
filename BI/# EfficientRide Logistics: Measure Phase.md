# Measure Phase

In this phase of the project, we aim to gather and measure the data from various sources. This data provides a quantitative basis for our analysis and helps us understand the current state of business operations.

The Measure phase consists of three major steps: Data Extraction, Data Modelling, and Data Measurement.

In Data Extraction, we pull all necessary data from different sources. Our goal is to extract all relevant information that can aid in answering business-related questions and exploring the company's fundamental components.

Next, in Data Modelling, we create a model of the data. We structure the data in a way that makes it easy to analyze and draw insights from. The model reflects the real-world entities and relationships that exist within the business.

Finally, in Data Measurement, we calculate various metrics that can provide insights into the operations of EfficientRide Logistics. These metrics include measures such as the average number of orders received each day, the number of available drivers each day, the number of unassigned drivers per day, and more.

Let's dive deeper into each of these steps.

| Department | Management Level | Potential Questions | Related Strategy |
|------------|------------------|---------------------|------------------|
| Logistics  | Operational      | How many orders are received on average each day? | Efficiency |
|            |                  | How many drivers are available on average each day? | Efficiency |
|            |                  | What is the average number of unassigned drivers per day? | Efficiency |
|            |                  | How many orders are rescheduled? | Customer Satisfaction |
|            |                  | How many orders are delivered late? | Customer Satisfaction |
|            | Strategic        | What are the peak periods for orders? | Efficiency |
|            |                  | Are there recurring patterns in order volume? | Efficiency |
|            |                  | Are there certain drivers or equipment types that are associated with late deliveries? | Efficiency, Customer Satisfaction |
|            |                  | Are there certain regions or customers that have a higher incidence of rescheduled orders? | Customer Satisfaction |
| Finance    | Operational      | What is the cost associated with rescheduled orders? | Efficiency |
|            |                  | What is the cost associated with late deliveries? | Efficiency |
|            | Strategic        | Are there cost-saving opportunities in optimizing driver and equipment scheduling? | Efficiency |
|            |                  | Can we predict future order volume for budgeting purposes? | Efficiency |
| HR         | Operational      | Are there enough drivers to handle the volume of orders? | Efficiency |
|            |                  | Are drivers being evenly utilized or are some drivers being overworked? | Efficiency |
|            | Strategic        | Do we need to hire more drivers or acquire more equipment? | Efficiency |
|            |                  | Are there training needs for drivers to handle different types of equipment or orders? | Efficiency |

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
