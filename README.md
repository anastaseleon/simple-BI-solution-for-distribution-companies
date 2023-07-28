# Business Intelligence and Machine Learning for a Small Transport Company

## The Dataset
The dataset used in this project originates from EfficientRide Logistics, a hypothetical regional transportation service provider specializing in a diverse array of delivery needs in and around a bustling port city. The company operates within a strategic network encompassing customer distribution centers, retail stores, and carrier warehouses, thus establishing a robust logistics framework. The dataset contains comprehensive information about the company's orders, drivers, trailers, schedules, locations, and various events that affect orders. This data provides a detailed perspective of EfficientRide's logistics operations, enabling in-depth analysis and potential optimization of their operations.

[Description of the company](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/a7bc34710d6630b4935095d5c83fa9274d6a000a/Description%20of%20the%20dataset%20.md)

## Project Objective
This project seeks to illustrate how a small transport company, without a pre-existing ERP system, can utilize modern data gathering techniques, business intelligence, and machine learning to improve operational efficiency, inform strategic decision-making, and enhance customer satisfaction.

## Core Business Strategy
It is important for me to link every project to the core strategy of the business. In real life, the strategy of the business should be used as a guide to all projects. Let's say that EfficientRide Logistics strives to deliver the best service quality to its customers, ensuring prompt and reliable transportation services. The core strategies are:

- **Operational Efficiency:** Efficient utilization of drivers and equipment to maximize productivity.
- **Customer Satisfaction:** Providing reliable and timely services to ensure high customer satisfaction.
- **Risk Mitigation:** Proactively identifying and managing potential risks to ensure smooth operations.
- **Data-Driven Decision Making:** Leveraging data insights to inform strategic business decisions.

## Project Components
Using a methodology is a good way to structure our projects. 

## The DMAIC Methodologie
Our approach follows the principles of the Six Sigma DMAIC methodology:

**Define:** The first step involves defining the problem and the project objectives clearly. In this case, the problem is to improve the operational efficiency of the transport company, increase customer satisfaction, and enable data-driven decision-making. The objective is to use business intelligence, machine learning, and modern data gathering techniques to achieve these goals.

**Measure:** In this step, we gather and measure the data from various sources like orders, drivers, trailers, schedules, locations, and events. This data provides a quantitative basis for our analysis and helps us understand the current state of the business operations.

**Analyze:** The collected data is then analyzed using SQL for data extraction and Power BI for data visualization. We identify trends, patterns, and areas of improvement in the operations. We also use machine learning algorithms to predict future sales, identify potential risks, and forecast customer satisfaction.

**Improve:** Based on the insights derived from the analysis, we suggest improvements in the existing processes and strategies. This might involve optimizing driver and equipment schedules, implementing proactive risk mitigation measures, or enhancing customer communication and real-time tracking.

**Control:** In this final step, we monitor the implementation and effects of the improvements to ensure that they deliver the expected benefits. We set up control charts and other monitoring mechanisms to keep track of key performance indicators. We also continue to iterate on our models and strategies as needed, to adapt to changes in the business environment or operations.

By following the Six Sigma DMAIC methodology, we ensure a systematic, data-driven approach to problem-solving and process improvement. This methodology allows us to provide EfficientRide Logistics with actionable insights and recommendations to enhance their operations and service quality.

## Establishing the Foundation: Defining the Objectives and Deliverables

In the Define phase, we establish the goals of the project in relation to the company's strategy and customer demands. This step involves clearly defining the problem, the project objectives, and the deliverables.

### Problem Statement:

EfficientRide Logistics aims to enhance operational efficiency, increase customer satisfaction, and make strategic decisions based on data-driven insights. However, the absence of an ERP system and the lack of modern data gathering techniques pose challenges in achieving these objectives.

### Project Objectives:

1. **Operational Efficiency:** Improve the assignment of drivers and equipment to orders, optimize the use of resources, and minimize the number of unassigned drivers and equipment per day.
2. **Customer Satisfaction:** Reduce the number of rescheduled or late deliveries, enhance communication and real-time tracking for customers, and predict and improve customer satisfaction.
3. **Strategic Decision-Making:** Enable data-driven decision-making by providing insights into sales forecasting, risk assessment, cost-saving opportunities, and other strategic areas.

### Deliverables:

1. **Business Intelligence Report:** A comprehensive report visualizing the company's resources, demand, sales, and other key metrics, using Power BI.
2. **Sales Forecasting Model:** A machine learning model to forecast future sales based on historical data.
3. **Risk Assessment Model:** A machine learning model to identify potential risks such as delays, damages, or cancellations.
4. **Customer Satisfaction Assessment:** A component that evaluates customer satisfaction based on data such as feedback scores, number of complaints, and number of late or rescheduled deliveries.
5. **Data Gathering Techniques:** Implement modern data gathering techniques such as voice-to-text for order status updates and license plate recognition to update the yard list.

By clearly defining the problem, the project objectives, and the deliverables, we ensure that the project aligns with the company's strategy and meets the needs of the customers. This clarity helps set the direction for the subsequent phases of the project.

### Setting the Path for Analytical Exploration

With the foundation of my project clearly defined, it's time for me to delve into the realm of data analysis. My journey begins with Business Intelligence and Reporting, where I aim to convert the wealth of data at my disposal into meaningful and actionable insights. This phase is instrumental in understanding the current state of operations at EfficientRide Logistics and will set the stage for further analytical exploration and strategy formulation.

### Business Intelligence and Reporting

In this phase, I leverage SQL and Power BI, powerful tools for data extraction and visualization, to dissect the dataset and provide a holistic view of the company's operations. My exploration of the dataset through various business-related queries enables me to understand the fundamental components of EfficientRide Logistics.

The visualization capabilities of Power BI not only aid in understanding the current state of affairs but also in presenting my findings to stakeholders in an intuitive and accessible format. Furthermore, my BI report serves as a benchmark, providing a basis for comparison as I implement improvements and modifications in the subsequent stages of my project.

# EfficientRide Logistics: Measure Phase

In this phase of the project, I'll be primarily focused on gathering and measuring the data from various sources like orders, drivers, trailers, schedules, locations, and events. This data will provide a quantitative basis for the analysis and will help in understanding the current state of the business operations.

We aim to measure the following:
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

This should provide a clear mapping between each question and the related business strategy.

## Summary

At the end of the Measure phase, I'll have a rich dataset at my disposal, ready for analysis. This data not only represents the current state of operations at EfficientRide Logistics but also sets the stage for identifying areas of improvement in the subsequent phases of the project.
## Unraveling the Whys: Analyzing the Data for Insights

Having measured key operational metrics and gathered a robust dataset, the next step in our DMAIC methodology is the Analyze phase. In this phase, my goal is to understand the root causes of inefficiencies, delays, and customer dissatisfaction. I delve deeper into the data, looking for patterns, correlations, and causal relationships that can explain the current performance and guide my improvement efforts.

Here are some of the key tasks I undertake in the Analyze phase:

### Sales Forecasting Model:
I use machine learning algorithms to develop a model that can forecast future sales based on historical data. This model can help anticipate demand, optimize supply chain operations, and inform strategic decision-making.

### Risk Assessment Model:
I apply machine learning techniques to identify potential risks such as delays, damages, or cancellations. This model can facilitate proactive decision-making, allowing EfficientRide Logistics to manage potential risks and mitigate their impact.

### Customer Satisfaction Assessment:
I incorporate a component that evaluates customer satisfaction based on various data such as feedback scores, number of complaints, and number of late or rescheduled deliveries. I also use machine learning to predict future customer satisfaction levels, which can guide strategies for enhancing customer service.

By the end of the Analyze phase, I have a clear understanding of the root causes of the issues identified in the Measure phase. This sets the stage for the next phase of my project, the Improve phase, where I use these insights to develop and implement solutions that can enhance the operational efficiency and customer satisfaction of EfficientRide Logistics.
