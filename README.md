# Retail Customer & RFM Analysis Dashboard

An end-to-end data analytics project focused on analyzing retail transactions, customer purchasing behavior, revenue performance, customer retention, and RFM-based customer segmentation using MySQL, Python, Pandas, Jupyter Notebook, and Power BI.

## Project Overview

This project analyzes retail transaction data from two Excel datasets covering 2009–2010 and 2010–2011.

The objective was to clean and prepare raw transactional data using SQL, calculate customer-level RFM metrics using Python, segment customers based on their purchasing behavior, and develop interactive Power BI dashboards to generate meaningful business insights.

## Business Objectives

- Analyze overall revenue and customer performance.
- Understand customer purchasing behavior and retention.
- Identify valuable, loyal, and at-risk customer segments.
- Perform RFM (Recency, Frequency, Monetary) analysis.
- Analyze customer and revenue trends over time.
- Compare customer performance across different countries.

## Tools & Technologies

- **Microsoft Excel:** Source datasets.
- **MySQL:** Data cleaning, transformation, validation, and table merging.
- **Python:** Data processing and RFM calculations.
- **Pandas:** Data manipulation, filtering, grouping, and aggregation.
- **Jupyter Notebook:** Python development environment.
- **Power BI:** Interactive dashboards, DAX measures, KPIs, bookmarks, and visualizations.

## Project Workflow

### 1. Data Collection

- Downloaded two retail transaction datasets in Excel format.
- Imported both datasets into MySQL.
- Examined the structure and columns of both tables.

### 2. Data Cleaning & Preparation Using SQL

Performed data cleaning and validation in MySQL.

Key activities:

- Checked column names and data types.
- Corrected data types where required.
- Identified NULL and missing values.
- Checked negative quantities and handled invalid records.
- Identified and removed duplicate records.
- Validated important business columns.
- Prepared cleaned tables for further analysis.
- Combined both yearly datasets into a single consolidated table using UNION ALL.

### 3. Data Processing Using Python

Imported the consolidated dataset into Jupyter Notebook using Pandas.

Key activities:

- Loaded the cleaned dataset.
- Renamed columns for better readability.
- Filtered records based on valid customer IDs and positive quantities.
- Created a calculated Total Price column.
- Prepared customer-level transactional data.
- Grouped transaction records by Customer ID.
- Calculated Recency, Frequency, and Monetary values.

### 4. RFM Analysis & Customer Segmentation

Applied the RFM (Recency, Frequency, Monetary) framework to understand customer purchasing behavior.

**RFM Metrics:**

- **Recency:** Number of days since a customer's most recent purchase.
- **Frequency:** Number of distinct purchase dates for each customer.
- **Monetary:** Total amount spent by each customer.

**RFM Calculation:**

- Used 10 December 2011 as the snapshot date.
- Calculated Recency using the difference between the snapshot date and the customer's latest purchase date.
- Calculated Frequency using the number of unique invoice dates.
- Calculated Monetary by multiplying Quantity by Price and aggregating the total spending for each customer.

After calculating RFM metrics, customers were scored and categorized into different customer segments based on their purchasing behavior.

### 5. Power BI Dashboard Development

Developed an interactive Power BI report consisting of two main pages.

#### Page 1: Business Overview

Provides an overview of business performance and customer behavior.

**Key Features:**

- Total Customers
- Total Revenue
- Customer Churn Percentage
- Average Customer Value
- Customer Distribution by Segment
- Customer Retention by Segment
- Monthly Customer Trends
- Quarterly Customer Trends
- Yearly Customer Trends

**Interactive Features:**

- Month
- Quarter
- Year
- Country
- Segment
- Is Churned

Implemented bookmarks to switch between Revenue Analysis and Customer Analysis views.

#### Page 2: RFM Analysis

Focuses on customer segmentation and country-level performance.

**Key Features:**

- Country Performance Summary
- Total Customers by Country
- Total Revenue by Country
- Average Recency Score
- Average Frequency Score
- Average Monetary Score
- Top 5 Countries by Average Customer Value
- Monthly Churn Trends
- Quarterly Churn Trends
- Yearly Churn Trends

**Interactive Features:**

- Customer Segment Analysis
- Country-wise Analysis
- Bookmarks to switch between Segment and Country views.
- Interactive slicers for filtering the analysis.

## Dashboard Screenshots

### Business Overview

![Business Overview Dashboard](https://github.com/arbaz-khan-data-analyst/Retail-Customer-RFM-Analysis/blob/main/Business%20Overview.mp4)

### RFM Analysis

![RFM Analysis Dashboard](https://github.com/arbaz-khan-data-analyst/Retail-Customer-RFM-Analysis/blob/main/RFM%20Analysis.mp4)

## Key Analysis Areas

- Overall revenue and customer performance.
- Customer retention and churn analysis.
- RFM-based customer segmentation.
- Customer purchasing behavior.
- Country-wise customer and revenue comparisons.
- Monthly, quarterly, and yearly performance trends.


## Conclusion

This project demonstrates an end-to-end data analytics workflow, from SQL-based data cleaning and preparation to Python-based RFM calculations, customer segmentation, and interactive Power BI dashboard development.

The project helped transform raw retail transaction data into meaningful customer insights and business performance reports to support data-driven decision-making.

---

**Project:** Retail Customer & RFM Analysis Dashboard

**Tools:** MySQL | Python | Pandas | Jupyter Notebook | Power BI

**Created by:** Arbaz Khan
