# Business Intelligence and Machine Learning for a Small Transport Company
## The dataset
EfficientRide Logistics is a fake regional transportation service provider, specializing in diverse delivery needs in and around a bustling port city. Operating within a tight-knit network of various strategic locations, the company has established a robust logistics framework that includes customer distribution centers, retail stores, and carrier warehouses.

The dataset reflects the operations of EfficientRide Logistics and includes the following key components:

1. **Orders:** Each entry in the dataset represents an individual order. Key information recorded for each order includes the order ID, pickup date, lead time, and volume. The status of each order is also tracked, indicating whether it has been delivered, is on the way, or is yet to be picked up.

2. **Delivery:** Additional details related to the delivery are included, such as the type of delivery (direct or not direct), delivery date, pickup address, and delivery location. The type of trailer required for each order is also recorded.

3. **Equipment and Drivers:** Each order is associated with specific equipment and a driver. The dataset includes a unique ID for each piece of equipment and each driver, allowing for efficient tracking and management.

4. **Events, Cost, and Profit:** The dataset also includes an 'Event' column, which records any issues that occurred during the delivery process. Associated with this, the cost incurred for each order and the profit generated is also tracked.

5. **Location Data:** The dataset includes detailed location data, with the latitude and longitude for each location type, which includes Ports, Customer DC, Customer Stores, and Carrier Warehouses.

6. **Driver Information:** Detailed information about each driver is included, such as their hire date and the type of license they hold.

The dataset effectively reflects the intricacies of EfficientRide Logistics' operations, providing a comprehensive view of the order process, from pickup to delivery. It demonstrates the company's meticulous approach to recording data, highlighting its commitment to operational efficiency and customer service.## Objective

This project aims to demonstrate how a small transport company, without a pre-existing ERP system, can leverage modern data gathering techniques, business intelligence, and machine learning to improve operational efficiency and inform strategic decision-making.

## Content
I will progressively work oon the following:


### Paint a picture of the supply chain ( Business Intelligence and Reporting)

Use SQL to extract insights from the data and Power BI to visualize these insights. The reports can include:
- Key Performance Indicators (KPIs) such as order fulfillment rate, lead time, cost efficiency, etc.
- Driver performance metrics.
- Impact of different events (delays, damages, cancellations, etc.) on operations, costs, and customer satisfaction.
  
### Data Gathering

- **Voice-to-Text for Order Status Updates:** Implement a voice-to-text system that drivers can use to verbally update the status of orders. This system can be developed using speech recognition APIs like Google Speech-to-Text.

- **License Plate Recognition to Update Yard List:** Use computer vision techniques to automatically recognize and track license plates of vehicles in the yard. This can be achieved using machine learning libraries like OpenCV or services like Amazon Rekognition.
### Sales Forecasting

Use machine learning algorithms to forecast future sales based on historical data. The forecasting model can help in planning and optimizing the supply chain operations.

### Risk Assessment

Use machine learning to identify potential risks such as delays, damages, or cancellations. The risk assessment model can aid proactive decision-making and risk mitigation.

## Tools to be Used

- SQL for data extraction
- Python libraries for data manipulation and machine learning (pandas, OpenCV, Google Speech-to-Text, scikit-learn)
- Power BI for data visualization

