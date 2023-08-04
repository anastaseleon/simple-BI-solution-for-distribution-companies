## Leveraging SAS and Power BI to Gain Insights


![project snapshot](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/BI/png/snapshot.png?raw=true)

Through calculated metrics, we aim to provide valuable insights into the operations of EfficientRide Logistics.

## Logistics Dashboard
By employing User Stories, we ensure that our dashboard has a clear purpose right from the start, eliminating unnecessary steps. Each user story targets a specific need, driving the focus towards the most relevant and impactful data visualizations.

| Management Level | User Story | Measures & Visuals |
|------------------|------------|--------------------|
| Operational      | User Story 1: As a logistics manager, I want to know the average number of orders received each day so that I can manage resources effectively. | **Measures: Daily Average number of orders received.    Visuals: Breakdown of orders per type of driver, breakdown of orders per equipment required.** |
|                  | User Story 2: As a logistics manager, I want to know how many drivers are available each day so that I can schedule deliveries efficiently. | **Measures: Current number of available drivers.    Visuals: Available drivers per license type, available drivers per seniority, available drivers for the next week.** |
|                  | User Story 3: As a logistics manager, I want to know the average number of unassigned drivers each day so that I can identify staffing needs. | **Measures: Daily Average of orders per driver for the current month.** |
|                  | User Story 4: As a logistics manager, I want to know how many orders are rescheduled so that I can improve customer satisfaction. | **Visuals: Distribution of issues category for the current month. Using a scorecard to evaluate service level.** |
|                  | User Story 5: As a logistics manager, I want to know how many orders are delivered late so that I can improve delivery processes. | **Visuals: Distribution of issues category for the last month.** |
| Strategic        | User Story 6: As a logistics director, I want to identify peak periods for orders so that I can plan for high-demand times. | **Visuals: Distribution of average orders per month.** |
|                  | User Story 7: As a logistics director, I want to identify drivers or equipment types associated with late deliveries so that I can address performance issues. | **Slicer to filter by driver.** |
|                  | User Story 8: As a logistics director, I want to identify regions or customers with a high incidence of rescheduled orders so that I can improve customer service. | **List of top best-served and worst-served locations.** |

## Use SAS or SQL  To  Only Extract the Data We Need for the Report

We will use SAS to extract only the tables and columns we need to avoid having a too-heavy report. We will also create a scorecard to evaluate the service level for User Story 4. To get the service level data, we can create a scorecard in SAS. If you are working with a small dataset, you can just create the scorecard in SAS. 

Here is a list of tables we will need from the dataset:

| Locations | Trailers Pool | Orders | Drivers | Schedule | Vacations | Event Description |
|-----------|---------------|--------|---------|----------|-----------|-------------------|
| Location Name | Equipment ID | Order ID | Driver ID | Date | Driver ID | Event ID |
| Location Type | Equipment Type | Pickup Date | Driver Name | Driver ID | Start Date | Event Description |
| Location Latitude |  | Event | License Type | Equipment ID | End Date |  |
| Location Longitude |  | Delivery Date | Seniority | Equipment Available |  |  |
|  |  | Delivery Location | Vacation Days | License Type |  |  |
|  |  | Status |  | Equipment Type |  |  |
|  |  | Trailer Requirement |  |  |  |  |
|  |  | Actual Pickup Date |  |  |  |  |
|  |  | Driver ID |  |  |  |  |
|  |  | Actual Delivery Date |  |  |  |  |
|  |  | Cost |  |  |  |  |
|  |  | Revenue |  |  |  |  |

[See the SAS Files used to create the scorecards](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/tree/2dcc37b1da4182d00b316f42c28c296bc7282e7c/BI/SAS%20codes)

