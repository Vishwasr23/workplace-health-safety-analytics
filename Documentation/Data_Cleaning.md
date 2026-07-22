## Overview

Before performing SQL analysis and creating the Power BI dashboard, the OSHA Workplace Health & Safety dataset was cleaned to ensure data quality and consistency.

---

## Dataset

- Dataset Name: OSHA HSE DATA ALL ABSTRACTS 15-17 FINAL
- Source: OSHA Workplace Health & Safety Records
- Total Records: Approximately 4,794
- File Format: CSV

---

## Data Cleaning Process

### 1. Imported Dataset

- Imported the CSV dataset into MySQL Workbench.
- Verified all columns and data types.

### 2. Date Formatting

- Converted the Event Date column into SQL DATE format using STR_TO_DATE().
- Standardized date values for future analysis.

### 3. Missing Value Check

- Reviewed all columns for missing or null values.
- Confirmed that important analytical columns contained usable data.

### 4. Duplicate Validation

- Checked for duplicate records.
- No significant duplicate records affecting the analysis were found.

### 5. Data Validation

Validated important categorical fields including:

- Degree of Injury
- Event Type
- Human Factor
- Environmental Factor
- Nature of Injury
- Project Type
- Construction End Use

### 6. Data Preparation

Prepared the cleaned dataset for:

- SQL Business Analysis
- Power BI Dashboard
- Business Insights

---

## Tools Used

- Microsoft Excel
- MySQL Workbench
- Power BI Desktop

---

## Outcome

A clean and structured dataset suitable for business intelligence reporting and workplace safety analysis.