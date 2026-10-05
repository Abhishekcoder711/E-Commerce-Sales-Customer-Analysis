# E-Commerce Sales & Customer Analysis

An end-to-end data analysis project that cleans, analyzes, and visualizes e-commerce sales data using **SQL, Excel, and Power BI**, with an interactive dashboard that tracks sales, profit, and customer behavior.

> **Tools:** SQL · Excel (Lookup, Pivot Tables, Pivot Charts) · Power BI

---

## Table of Contents
- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Key Metrics](#key-metrics)
- [Dataset](#dataset)
- [Tools & Technologies](#tools--technologies)
- [Project Workflow](#project-workflow)
- [Dashboard](#dashboard)
- [Key Insights](#key-insights)
- [Recommendations](#recommendations)
- [Repository Structure](#repository-structure)
- [How to Use](#how-to-use)
- [Author](#author)

---

## Project Overview
This project analyzes e-commerce order data to understand sales performance, profitability, and customer buying patterns. Raw data was cleaned and validated using SQL and Excel, then analyzed with Pivot Tables and visualized in an interactive Power BI dashboard.

## Business Problem
An online retailer wants to know:
- How much revenue and profit is the business generating?
- Which categories, products, and states perform best (and worst)?
- Which payment modes do customers prefer?
- Where are the opportunities to grow sales and improve profit?

## Key Metrics

| Metric | Value |
|---|---|
| Total Sales | ₹438K |
| Total Profit | ₹37K |
| Units Sold | 6K |
| Average Order Value | ₹292 |

## Dataset
- **Source:** [https://www.kaggle.com/datasets/saadharoon27/madhav-store-dataset]
- **Size:** [2000 Rows and 10+ Coloumn]
- **Main fields:** [Order ID, Order Date, Customer Name, State, Category, Sub-Category, Amount, Profit, Quantity, Payment Mode]

## Tools & Technologies
| Tool | Used for |
|---|---|
| **SQL** | Data cleaning, transformation, validation, and querying |
| **Excel** | Lookup functions, Pivot Tables, Pivot Charts, data checks |
| **Power BI** | Interactive dashboard and visualizations |
| **DAX** | [Add measures you created, e.g., Average Order Value, Profit Margin %] |

## Project Workflow
1. **Data cleaning (SQL & Excel):** removed duplicates, handled missing values, fixed data types and inconsistencies.
2. **Data validation:** checked totals and row counts after each transformation.
3. **Data transformation:** merged and enriched data using Lookup functions.
4. **Exploratory analysis:** built Pivot Tables and Pivot Charts to explore sales by category, state, and payment mode.
5. **Dashboard development:** loaded the cleaned data into Power BI and created an interactive dashboard.

## Dashboard
![Dashboard Preview](https://github.com/Abhishekcoder711/E-Commerce-Sales-Customer-Analysis/blob/main/Dashboard%20Image.png)

**Dashboard pages and views:**
- Overview: Total Sales, Profit, Units Sold, Average Order Value
- Customer analysis
- Product and category performance
- Payment-mode analysis
- State-wise sales trends

[Add a link to the live dashboard or a Power BI report, if available]

## Key Insights
> Replace the placeholders with real findings from your dashboard.

- **Top category:** [category] generated the highest sales at [₹X / X%].
- **Top state:** [state] led in sales, while [state] was the lowest.
- **Payment mode:** [payment mode] was the most used at [X%] of orders.
- **Profitability:** [category/product] had the highest profit margin, while [category/product] had the lowest.
- **Customers:** [e.g., top customers contribute X% of sales / repeat customer pattern].

## Recommendations
> Edit these to match your findings.

- Focus marketing and inventory on high-performing categories and states.
- Review pricing or costs for low-margin categories.
- Promote preferred payment modes with offers to increase conversions.
- Look for growth opportunities in states with low sales.

## Repository Structure
```
├── data/
│   ├── raw_data.csv
│   └── cleaned_data.csv
├── sql/
│   └── data_cleaning.sql
├── excel/
│   └── ecommerce_analysis.xlsx
├── powerbi/
│   └── ecommerce_dashboard.pbix
├── images/
│   └── dashboard.png
└── README.md
```
*(Adjust the folder and file names to match your repository.)*

## How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/Abhishekcoder711/E-Commerce-Sales-Customer-Analysis
   ```
2. Run the SQL script in `sql/` to clean the data.
3. Open the Excel file to view the Pivot Table analysis.
4. Open the `.pbix` file in **Power BI Desktop** to explore the dashboard.

## Author
**Abhishek Mishra**
- Email: abhishekind711@gmail.com
- LinkedIn: [https://www.linkedin.com/in/abhishek-kumar-mishra6/]
- Portfolio: [https://abhishek-mishra-portfolio.netlify.app/]
