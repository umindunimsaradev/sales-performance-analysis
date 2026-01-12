-- Sales perfomance Analysis
-- Dataset : Superstore

-- 1. Total sales by Year

SELECT Year, SUM(Sales) AS total_sales
FROM sales
GROUP BY Year
ORDER BY Year;

-- 2. Monthly sales trend

SELECT Year, Month, SUM(Sales) AS monthly_sales
FROM sales
GROUP BY Year, Month
ORDER BY Year;

-- 3. Sales by Category

SELECT Category, SUM(Sales) AS category_sales
FROM sales
GROUP BY Category
ORDER BY category_sales DESC;

-- 4. Top 10 Products by Revenue

SELECT "Product Name", SUM(Sales) AS total_sales
FROM sales
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;

-- 5. Sales by Region

SELECT Region, SUM(Sales) AS regional_sales
FROM sales
GROUP BY Region
ORDER BY regional_sales DESC;

-- 6. Profit analysis by Category

SELECT Category, SUM(Profit) AS total_profit
FROM sales
GROUP BY Category
ORDER BY total_profit DESC;
