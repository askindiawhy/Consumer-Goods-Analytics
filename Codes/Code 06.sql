-- 6. Generate a report which contains the top 5 customers who received an
-- average high pre_invoice_discount_pct for the fiscal year 2021 and in the
-- Indian market. The final output contains these fields,
-- customer_code
-- customer
-- average_discount_percentage



SELECT c.customer_code, c.customer, round(AVG(pre_invoice_discount_pct),4) AS average_discount_percentage
FROM fact_pre_invoice_deductions d
JOIN dim_customer c ON d.customer_code = c.customer_code
WHERE c.market = "India" AND fiscal_year = "2021"
GROUP BY customer_code
ORDER BY average_discount_percentage DESC
LIMIT 5;
