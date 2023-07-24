## EfficientRide Logistics Dataset Description

The dataset consists of the following tables:

1. **Orders**: Each row represents an individual order that the company has to deliver.
    - **Order ID**: Unique identifier for each order.
    - **Status**: Current status of the order (e.g., "Delivered", "In Transit").
    - **Volume**: Volume of the goods in the order.
    - **Lead Time**: Time from order placement to the planned delivery date.
    - **Trailer Requirement**: Type of trailer needed for the order.
    - **Delivery Date**: Date when the order is to be delivered.
    - **Destination**: Destination of the order.
    - **Event**: Any event that affected the order (e.g., delay, damage, or cancellation).
    - **Cost**: Cost incurred to deliver the order.
    - **Revenue**: Revenue earned from delivering the order.

2. **Drivers**: Holds data about the company's drivers.
    - **Driver ID**: Unique identifier for each driver.
    - **Name**: Driver's name.
    - **License Type**: Type of driving license held by the driver.
    - **Seniority**: Driver's level of experience or length of service with the company.

3. **Trailers**: Information about the company's fleet of trailers.
    - **Equipment ID**: Unique identifier for each piece of equipment.
    - **Equipment Type**: Type of equipment (e.g., "Flatbed", "Refrigerated Truck").
    - **Capacity**: Maximum volume the equipment can carry.

4. **Events**: Categorizes various events that can affect an order.
    - **Event ID**: Unique identifier for each type of event.
    - **Event Description**: Description of each type of event (e.g., "No issues", "Delay", "Complaint", "Rescheduled", "Cancellation", "Damages", "Accidents").

5. **Schedule**: Shows which drivers are scheduled to use which equipment on each day.
    - **Date**: Date of the schedule.
    - **Driver ID**: ID of the scheduled driver.
    - **Equipment ID**: ID of the equipment that the driver is scheduled to use.
    - **Equipment Available**: Boolean field indicating whether the equipment is available.
    - **License Type**: Type of driving license required to use this equipment.
    - **Equipment Type**: Type of equipment.

6. **Locations**: Information about the different locations that the company serves.
    - **Location ID**: Unique identifier for each location.
    - **Address**: Address of the location.
    - **City**: City where the location is located.
    - **State**: State where the location is located.

7. **Unavailability**: Data about when drivers or equipment are unavailable.
    - **Date**: Date of the unavailability.
    - **Driver ID**: ID of the unavailable driver, if any.
    - **Equipment ID**: ID of the unavailable equipment, if any.

8. **Vacations**: Information about driver vacation schedules.
    - **Start Date**: Start date of the vacation.
    - **End Date**: End date of the vacation.
    - **Driver ID**: ID of the driver on vacation.

This dataset provides a comprehensive overview of the logistics operations of the EfficientRide company, enabling detailed analysis and optimization of their operations.
