
# Week 2 Day 4 — Data Cleaning Log

## Dataset
Titanic public dataset loaded using Seaborn.

## Initial Data Quality
The dataset was profiled for:
- Number of rows and columns
- Data types
- Missing values
- Duplicate records

## Missing Value Treatment

### Age
Missing age values were replaced using the median because age is a numerical variable and the median is less sensitive to extreme values.

### Embarked
Missing values were replaced using the mode because this is a categorical variable.

### Embark Town
Missing values were replaced using the mode because this is a categorical variable.

### Deck
The deck column was removed because it contained a high proportion of missing values and heavy imputation could introduce unreliable information.

### Forward Fill
Forward-fill was demonstrated as an alternative missing-value technique. It carries the previous valid observation forward and is particularly useful for ordered or time-series data.

## Duplicate Handling
Duplicate rows were identified and removed using Pandas `drop_duplicates()`.

## String Standardisation
Categorical string values were standardised by:
- Removing leading and trailing whitespace
- Converting gender values to lowercase
- Applying title case to embarkation town values

## Outlier Treatment
Fare outliers were detected using the Interquartile Range (IQR) method.

IQR = Q3 - Q1

Lower Bound = Q1 - 1.5 × IQR

Upper Bound = Q3 + 1.5 × IQR

Extreme fare values were capped at the calculated IQR boundaries instead of deleting the records.

## Validation
The cleaned dataset was checked again for:
- Missing values
- Duplicate rows
- Data types
- Dataset dimensions

## Output
The cleaned dataset was exported as:

`cleaned_dataset.csv`

A before/after quality comparison was also exported as:

`data_quality_comparison.csv`
