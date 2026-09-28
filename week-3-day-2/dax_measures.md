# Week 3 Day 2 — DAX Basics

## 1. Total Sales

```DAX
Total Sales =
SUM(SalesData[Sales])
```

### Explanation

This measure calculates the total sales from the Sales column.

---

## 2. South Sales using CALCULATE()

```DAX
South Sales =
CALCULATE(
    SUM(SalesData[Sales]),
    SalesData[Region] = "South"
)
```

### Explanation

`CALCULATE()` evaluates an expression using a modified filter context.

Here, the calculation is filtered to include only records where the Region is South.

---

## 3. YTD Sales using DATESYTD()

```DAX
YTD Sales =
CALCULATE(
    SUM(SalesData[Sales]),
    DATESYTD(SalesData[Date])
)
```

### Explanation

This measure calculates Year-to-Date sales.

It calculates sales from the beginning of the year up to the current date in the report.

---

## 4. Running Total using EARLIER()

```DAX
Running Total =
CALCULATE(
    SUM(SalesData[Sales]),
    FILTER(
        SalesData,
        SalesData[Date] <= EARLIER(SalesData[Date])
    )
)
```

### Explanation

This calculated column creates a cumulative running total of sales.

`EARLIER()` is used to access the current row's date while filtering the table.

---

## 5. Profit Margin %

```DAX
Profit Margin % =
DIVIDE(
    SalesData[Sales] - SalesData[Cost],
    SalesData[Sales],
    0
)
```

### Explanation

This calculated column calculates profit margin using:

Profit Margin = (Sales - Cost) / Sales

`DIVIDE()` safely handles division by zero.

---

# Row Context and Filter Context

## Row Context

Row context means that DAX is working with the current row.

It is commonly used in calculated columns.

For example:

```DAX
Profit =
SalesData[Sales] - SalesData[Cost]
```

The calculation is performed separately for each row.

## Filter Context

Filter context determines which rows are included when a measure is calculated.

For example:

```DAX
South Sales =
CALCULATE(
    SUM(SalesData[Sales]),
    SalesData[Region] = "South"
)
```

Only rows belonging to the South region are included in the calculation.

## Context Transition

`CALCULATE()` can convert an existing row context into a filter context.

This allows the current row to influence the calculation.

---

# Measure vs Calculated Column

## Measure

A measure is calculated dynamically based on the current filter context.

Example:

```DAX
Total Sales =
SUM(SalesData[Sales])
```

## Calculated Column

A calculated column is calculated row by row and stored in the data model.

Examples:

- Running Total
- Profit Margin %

---

# Summary

In this exercise, I practiced:

- DAX measures
- Calculated columns
- SUM()
- CALCULATE()
- DATESYTD()
- FILTER()
- EARLIER()
- DIVIDE()
- Row context
- Filter context
- Context transition