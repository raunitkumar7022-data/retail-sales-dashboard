# Retail Sales Performance Dashboard

An end-to-end data analytics project on the Superstore sales dataset. Raw data was cleaned in Python, queried in PostgreSQL, summarized with Excel pivot tables, and presented in an interactive Power BI dashboard.

![Dashboard](dashboard.png)

## Tools

- Python (Pandas) for data cleaning
- PostgreSQL (pgAdmin 4) for storing and querying data
- Microsoft Excel for pivot tables
- Power BI Desktop for the dashboard

## Dataset

- Superstore sales data from Kaggle: 9,800 rows and 18 columns
- Order dates from January 2015 to December 2018
- Columns include order details, customer, segment, region, state, category, sub-category, product, and sales
- The dataset has no profit column, so the analysis focuses on sales, orders, and customers

## Workflow

1. **Cleaning (Python):** removed duplicate rows, converted `Order Date` and `Ship Date` to date format (day first), filled 11 missing postal codes with 0, and renamed columns to snake_case. See `clean_data.ipynb`.
2. **Database (PostgreSQL):** created a `superstore` table and loaded the cleaned CSV. Queries are in `queries.sql`.
3. **Excel:** built pivot tables for sales by category (with a region filter) and monthly sales by year. See `retail_analysis.xlsx`.
4. **Dashboard (Power BI):** built KPI cards, a monthly sales trend, sales by category and region, a top 10 products chart, and slicers. See `retail_dashboard.pbix`.

## Key metrics

| Metric | Value |
|---|---|
| Total sales | 2.26M |
| Total orders | 4,922 |
| Total customers | 793 |

## Insights

- Technology had the highest sales (about 827K), followed by Furniture (about 729K) and Office Supplies (about 705K).
- West was the top region (about 710K) and South the lowest (about 389K).
- Yearly sales were highest in 2018 (about 722K) and grew each year from 2016.
- Sales peak in September to December, with November the strongest month overall.
- The Canon imageCLASS 2200 Advanced Copier was the top product (about 61.6K).
- California generated the most sales of any state (about 446K).

## Files

- `clean_data.ipynb`: data cleaning notebook
- `queries.sql`: PostgreSQL table and analysis queries
- `retail_analysis.xlsx`: Excel pivot tables
- `retail_dashboard.pbix`: Power BI dashboard
- `dashboard.png`: dashboard screenshot
