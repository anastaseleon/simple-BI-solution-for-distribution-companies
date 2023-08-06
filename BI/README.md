# Leveraging SAS and Power BI for EfficientRide Logistics Insights

## Introduction

EfficientRide Logistics aimed to harness the power of modern data analytics tools to extract significant operational and strategic insights. This project showcased the integration of SAS for data extraction and Power BI for comprehensive visualization, giving the company a clearer view of its operations.

## Project Overview

![Project Snapshot](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/BI/png/snapshot.png?raw=true)

*An illustrative snapshot of the final dashboard used to represent data and insights.*

## Approach to Solution

1. **User Story Creation**: Before diving into the data, we identified the core questions and insights the company sought, crystallizing them into user stories.
2. **Data Extraction**: We chose SAS and SQL, coupled with Power Query, as our primary data extraction tools. This step was crucial to filter out noise and bring out meaningful data for visualization.
3. **Data Modeling**: To aid in easy visualization, the extracted data was molded into a cohesive model.
4. **Report Design**: Power BI, with its vast array of visualization tools, was used to bring the data to life, turning numbers into easily digestible charts and graphs.

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

A focused and light extraction was performed using SAS/SQL, targeting only the necessary tables and columns. This fine-tuned data acted as the base for the Power BI visualization. Here's a glimpse of the data model:


The following table can be imported directly to power bi 
| Locations | Trailers Pool | Orders | Drivers | Schedule | Vacations | Event Description | Monthly Master scorecard (calculated using SAS or SQL) | Store Scorecard (calculated using SAS or SQL) |
|-----------|---------------|--------|---------|----------|-----------|-------------------|------------------|----------------|
| Location Name | Equipment ID | Order ID | Driver ID | Date | Driver ID | Event ID | Event | Delivery_Location |
| Location Type | Equipment Type | Pickup Date | Driver Name | Driver ID | Start Date | Event Description | Frequency | Event |
| Location Latitude |  | Event | License Type | Equipment ID | End Date | | Relative Score | Frequency |
| Location Longitude |  | Delivery Date | Seniority | Equipment Available | | | Goal | Relative Score |
|  |  | Delivery Location | Vacation Days | License Type | | | Importance | Goal |
|  |  | Status |  | Equipment Type | | | | Importance |
|  |  | Trailer Requirement |  | | | | |
|  |  | Actual Pickup Date |  | | | | |
|  |  | Driver ID |  | | | | |
|  |  | Actual Delivery Date |  | | | | |
|  |  | Cost |  | | | | |
|  |  | Revenue |  | | | | 

The SAS scripts used for the scorecards creation can be accessed [here](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/tree/2dcc37b1da4182d00b316f42c28c296bc7282e7c/BI/SAS%20codes).

## Visualization with Power BI

The Power BI report, rooted in the data model, offers diverse visualizations. It features breakdowns by driver type, issues distributions, service level scorecards, and much more. This variety ensures that stakeholders at different levels can glean insights tailored to their needs.

## Delivering Value

With this dashboard, EfficientRide Logistics can now:

- Track the average daily order intake.
- Monitor driver availability.
- Plan for high-demand periods.
- Evaluate daily orders per driver for effective staffing.
- Assess the time since the last accident for safety measures.
- Analyze monthly issues distributions.
- Determine service levels.
- Prioritize best and worst-served locations.
- Investigate daily orders by license type, equipment, and delivery type.

## Looking Ahead

This project opened up avenues for further exploration:

- Diving deeper into accident causes and other pivotal events.

In essence, this integration of SAS and Power BI empowers EfficientRide Logistics to make informed decisions, optimize operations, and pave the way for future growth.
