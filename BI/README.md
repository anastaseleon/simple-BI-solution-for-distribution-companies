# Leveraging SAS and Power BI for EfficientRide Logistics Insights

## Introduction

EfficientRide Logistics aims to harness the power of modern data analytics tools to extract significant operational and strategic insights. This project showcases the integration of SAS for data extraction and Power BI for comprehensive visualization, giving the company a clearer view of its operations.

If you wish to reproduce this project, start by running the code to generate the EfficientRide dataset.

## Project Overview

![Project Snapshot](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/BI/png/snapshot.png?raw=true)

*An illustrative snapshot of the final dashboard used to represent data and insights.*

## Approach to Solution

1. **User Story Creation**: Before diving into the data, we identified the core questions and insights the company sought, crystallizing them into user stories.
2. **Data Extraction**: We selected SAS and SQL, coupled with Power Query, as our primary data extraction tools. This step was crucial to filter out noise and bring forth meaningful data for visualization.
3. **Data Modeling**: To aid in easy visualization, the extracted data was molded into a cohesive model.
4. **Report Design**: Power BI, with its vast array of visualization tools, was utilized to bring the data to life, converting numbers into easily digestible charts and graphs.

## Detailed User Stories and Corresponding Metrics

User stories drive the process of dashboard creation, ensuring a targeted and user-centered design. These stories represent the needs and questions of both operational and strategic management levels.

| Management Level | User Story | Associated Metrics & Visuals |
|------------------|------------|-----------------------------|
| Operational      | I need to gauge the average daily order intake for resource allocation. | Daily average of orders, breakdown by driver type and equipment. |
| Operational      | How many drivers are available daily for scheduling? | Current available drivers, segmented by license type, seniority, and upcoming week availability. |
| Operational      | I want to ascertain the average number of unscheduled drivers daily. | Daily average of orders per driver for the month. |
| Operational      | How often are orders rescheduled? | Monthly distribution of categorized issues with a scorecard for service levels. |
| Operational      | Which orders face delays in delivery? | Distribution of issues from the previous month. |
| Strategic        | What are our peak order times? | Monthly distribution of average orders. |
| Strategic        | Which drivers or equipment types are most associated with delivery delays? | A slicer tool to filter insights by individual drivers. |
| Strategic        | Which regions or customers experience the most rescheduled orders? | Lists detailing the best and worst served locations. |

## The Power of SAS/SQL in Data Extraction & Modeling

A focused and streamlined extraction was performed using SAS/SQL, targeting only the essential tables and columns. This refined data served as the foundation for the Power BI visualization. Here's a glimpse of the data model:

#### The following table can be imported directly to Power bi ,using power query, you only need to keep the following columns,
| Locations           | Trailers Pool | Orders               | Drivers              | Schedule             | Vacations    | Event Description   |
|---------------------|---------------|----------------------|----------------------|----------------------|--------------|---------------------|
| Location Name       | Equipment ID  | Order ID             | Driver ID            | Date                 | Driver ID    | Event ID            |
| Location Type       | Equipment Type| Pickup Date          | Driver Name          | Driver ID            | Start Date   | Event Description   |
| Location Latitude   |               | Event                | License Type         | Equipment ID         | End Date     |                     |
| Location Longitude  |               | Delivery Date        | Seniority            | Equipment Available  |              |                     |
|                     |               | Delivery Location    | Vacation Days        | License Type         |              |                     |
|                     |               | Status               |                      | Equipment Type       |              |                     |
|                     |               | Trailer Requirement  |                      |                      |              |                     |
|                     |               | Actual Pickup Date   |                      |                      |              |                     |
|                     |               | Driver ID            |                      |                      |              |                     |
|                     |               | Actual Delivery Date |                      |                      |              |                     |
|                     |               | Cost                 |                      |                      |              |                     |
|                     |               | Revenue              |                      |                      |              |                     |

By utilizing the codes provided [here](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/tree/main/BI/SAS%20codes), you can generate these additional tables.



| Monthly Master scorecard           | Store Scorecard                   | Driver_productivity   |
|-----------------------------------|----------------------------------|-----------------------|
| Event                             | Delivery_Location                | Actual_Pickup_Date    |
| Frequency                         | Event                            | Driver_ID             |
| Relative Score                    | Frequency                        | Number_of_Pickups     |
| Goal                              | Relative Score                   |                       |
| Importance                        | Goal                             |                       |
|                                   | Importance                       |                       |
## Visualization with Power BI

The Power BI report, rooted in the data model, offers diverse visualizations. It features breakdowns by driver type, issues distributions, service level scorecards, and much more. This diversity ensures that stakeholders at different levels can glean insights tailored to their needs.

## Delivering Value

With this dashboard, EfficientRide Logistics can:
Track the average daily order intake;

The use of the drill-through option allows us to get more in-depth insights about the orders and help  manage resources 

![Drill trhough](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/BI/png/Drill%20through1%20orders.gif?raw=true)
With the logistics dashboard the managers can do the following:
- Plan for high-demand periods.
- Evaluate daily orders per driver for effective staffing.
- Assess the time since the last accident for safety measures.
- Analyze monthly issues distributions.
- Determine service levels.
- Prioritize best and worst-served locations.
- Investigate daily orders by license type, equipment, and delivery type.
![dashboard](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/BI/png/Logistics.png?raw=true)

- Monitor driver availability. with another drill-through for more insights
  ![Driver drill through](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/BI/png/Drill%20trough%20drivers.gif?raw=true)



### Summary of Steps to Reproduce the EfficientRide Logistics Insights:

1. **Run the Dataset**: [Dataset](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/tree/main/Dataset)
   
2. **Generate Additional Tables**:  [SAS/SQL codes](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/tree/2dcc37b1da4182d00b316f42c28c296bc7282e7c/BI/SAS%20codes) 
   
3. **Load Data into Power BI**: [Power BI template](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/BI/Logistics%20Report%20pbit.pbit)
   
4. **Design the Dashboard**: Utilize the Power BI suite of visualization tools to design the dashboard. This will be based on the data model created earlier, taking into account the user stories and associated metrics.
   
5. **Review and Refine**: Periodically check and ensure the accuracy and relevance of the visualizations, refining them as per the evolving needs of the company.
   
6. **Deploy**: Once satisfied with the dashboard, deploy it for stakeholders to start accessing the insights.

7. **Feedback Loop**: Regularly gather feedback from users of the dashboard to further enhance and tailor the visualizations to their needs.



### Next steps
In the next project, we will use machine learning to investigate the reason behind these issues:

![issues](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/BI/png/event.png?raw=true)
