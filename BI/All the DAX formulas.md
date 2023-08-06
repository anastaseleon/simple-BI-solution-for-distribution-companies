


# DAX Calculations and Explanations

## Average Daily Pickups Per Driver

This calculation determines the average number of pickups per driver on a daily basis.

```dax
Average Daily Pickups Per Driver = 
VAR DriverDayCount = 
    SUMMARIZE (
        Orders,
        Orders[Driver ID],
        Orders[Actual Pickup Date]
    )
VAR DriverPickups =
    SUMMARIZE (
        Orders,
        Orders[Driver ID],
        "TotalPickups", COUNT ( Orders[Order ID] )
    )
RETURN
    AVERAGEX ( DriverPickups, [TotalPickups] / COUNTROWS(DriverDayCount) )
```

## Available Drivers

Subtracts the number of drivers on vacation from the total number of drivers to determine how many are available.

```dax
Available Drivers = [Total Drivers] - [Drivers on Vacation]
```

## Days Since Last Accident

Computes the number of days since the last accident (represented by the event code `6`).

```dax
Days Since Last Accident = 
VAR CurrentDate = TODAY()
VAR LastEvent6Date =
    CALCULATE(
        MAX('Orders'[Actual Pickup Date]),
        FILTER(
            ALL('Orders'),
            'Orders'[Event] = 6 && 'Orders'[Actual Pickup Date]  <= CurrentDate
        )
    )
RETURN
IF(LastEvent6Date = CurrentDate, 0, DATEDIFF(LastEvent6Date, CurrentDate, DAY))
```

## Drivers on Vacation

Counts the number of drivers on vacation on the maximum pickup date.

```dax
Drivers on Vacation = 
CALCULATE(
    DISTINCTCOUNT(Vacations[Driver ID]), 
    FILTER(
        Vacations, 
        Vacations[Start Date] <= MAX(Orders[Pickup Date]) && Vacations[End Date] >= MAX(Orders[Pickup Date])
    )
)
```

## Total Drivers

Computes the total number of distinct drivers.

```dax
Total Drivers = DISTINCTCOUNT(Drivers[Driver ID])
```

## Service Level

Computes the average relative score from the `Monthly_scorecard` table.

```dax
Service level = AVERAGE(Monthly_scorecard[relative_score])
```

## Average Orders Per Day

Calculates the average number of orders per day up to the current date.

```dax
AVERAGE_ORDERS_PER_DAY = 
DIVIDE(
    CALCULATE(
        COUNTROWS('Orders'), 
        'Orders'[Actual Pickup Date] <= TODAY()
    ), 
    CALCULATE(
        COUNTROWS(
            SUMMARIZE('Orders', 'Orders'[Actual Pickup Date])
        ),
        'Orders'[Pickup Date] <= TODAY()
    )
)
```

## Drivers Unavailable

Counts the number of drivers who are unavailable on the maximum scheduled date.

```dax
Drivers Unavailable = 
CALCULATE(
    DISTINCTCOUNT(Unavailability[ID]), 
    FILTER(
        Unavailability, 
        Unavailability[Date] = MAX(Schedule[Date]) && Unavailability[Type] = "Driver"
    )
)
```


