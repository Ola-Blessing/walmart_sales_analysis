# walmart_sales_analysis

## Project Overview
This project involves cleaning and analyzing Walmart sales data using SQLite. The goal was to explore the relationships between sales, CPI, unemployment, fuel prices, and holidays.

## Data Cleaning
- Sorted data by store number and date.
- Formatted date to MM-DD-YYYY.
- Rounded weekly sales to 2 decimal places, temperature to the nearest whole number, and other variables as needed.
- Checked for and addressed missing data.

## SQL Queries
The following queries were used to analyze the data:
- `correlation_cpi_sales.sql`: Calculates the correlation between CPI and weekly sales.
- `holiday_sales_analysis.sql`: Analyzes the impact of holidays on sales.
- ...

## Findings
- Holidays such as Thanksgiving and Christmas showed the most significant sales increases, indicating that these periods are crucial for Walmart's revenue.
- There is a weak correlation between CPI and weekly sales during non-holiday periods, but this strengthens during holidays.
- Store with the highest unemployment: Located in a region with economic downturns and lower consumer spending. This store showed lower average sales, indicating a potential correlation between high unemployment and reduced purchasing power.
- Store with the lowest unemployment: Found in a region with a thriving economy, likely benefiting from diverse industries and stable job growth. This store had higher average sales, suggesting that low unemployment correlates with higher consumer spending.
- The data showed that rising fuel prices tended to correlate with a slight decrease in weekly sales, likely due to consumers allocating more of their budget to transportation costs.

Insights & Recommendations
Holiday Planning: Walmart should focus on optimizing inventory and marketing efforts during high-impact holidays like Thanksgiving and Christmas to capitalize on increased consumer spending.
Economic Sensitivity: The weak but noticeable correlation between CPI and sales during holidays suggests that Walmart should closely monitor economic indicators to anticipate changes in consumer behavior, especially during peak shopping periods.
Regional Strategies: Tailoring marketing and pricing strategies for stores in high-unemployment regions could help mitigate reduced consumer spending. Conversely, stores in low-unemployment areas might benefit from premium offerings or expanded services.
Fuel Price Considerations: With fuel prices affecting consumer spending, Walmart may consider offering promotions or discounts during periods of rising fuel costs to help maintain sales levels.
Conclusion
This project provided valuable insights into the factors that influence Walmart's sales, including the impact of holidays, economic conditions, and regional unemployment rates. The findings can help guide strategic decisions to optimize sales and improve overall performance.


