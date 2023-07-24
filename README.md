# Business Intelligence and Machine Learning for a Small Transport Company

## The Dataset
The dataset used in this project originates from EfficientRide Logistics, a hypothetical regional transportation service provider specializing in a diverse array of delivery needs in and around a bustling port city. The company operates within a strategic network encompassing customer distribution centers, retail stores, and carrier warehouses, thus establishing a robust logistics framework.
The dataset contains comprehensive information about the company's orders, drivers, trailers, schedules, locations, and various events that affect orders. This data provides a detailed perspective of EfficientRide's logistics operations, enabling in-depth analysis and potential optimization of their operations.

[Description of the dataset](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/a7bc34710d6630b4935095d5c83fa9274d6a000a/Description%20of%20the%20dataset%20.md)

## Project Objective
This project seeks to illustrate how a small transport company, without a pre-existing ERP system, can utilize modern data gathering techniques, business intelligence, and machine learning to improve operational efficiency and inform strategic decision-making.

## Project Components

### Business Intelligence and Reporting
Initially, we will use Power BI to portray a broad picture of the company, offering a basic understanding of their resources and demand.

[The Power Bi file](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/a7bc34710d6630b4935095d5c83fa9274d6a000a/EfficientRide_logistics.pbix)

![Report created with Power BI](https://github.com/anastaseleon/simple-BI-solution-for-distribution-companies/blob/main/Presentation%20of%20the%20company.png?raw=true)

Subsequently, by employing SQL, we'll ask a series of business-related questions to understand the company's fundamental components. This exploration can lead to the creation of views that can be represented in Power BI or Tableau.

### Sales Forecasting
We'll utilize machine learning algorithms to forecast future sales based on historical data. The forecasting model can assist in planning and optimizing supply chain operations.

 [Will be posted on July 31st]
### Risk Assessment
We'll apply machine learning techniques to identify potential risks such as delays, damages, or cancellations. The risk assessment model can facilitate proactive decision-making and risk mitigation.

 [Will be posted on August 7th]

### Data Gathering
Lastly, we will explore options for more efficient data gathering:
- **Voice-to-Text for Order Status Updates:** Implement a voice-to-text system that drivers can use to verbally update the status of orders. This system can be developed using speech recognition APIs like Google Speech-to-Text.
- **License Plate Recognition to Update Yard List:** Use computer vision techniques to automatically recognize and track license plates of vehicles in the yard. This can be achieved using machine learning libraries like OpenCV or services like Amazon Rekognition.
 [Will be posted on August 14th]

## Tools to be Used
- SQL for data extraction
- Python libraries for data manipulation and machine learning (pandas, OpenCV, Google Speech-to-Text, scikit-learn)
- Power BI for data visualization

