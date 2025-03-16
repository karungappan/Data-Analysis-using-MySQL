/* Who are the most valuable customers, and which products do they frequently purchase? */

SELECT 
    c.customernumber,
    c.customername,
    sum(od.quantityordered * od.priceeach) AS total_spent,
    p.productcode,
    p.productname,
    COUNT(od.productcode) AS purchase_frequency
FROM
customers c
JOIN orders o ON c.customernumber = o.customernumber
JOIN orderdetails od ON o.ordernumber = od.ordernumber
JOIN products p ON od.productcode = p.productcode
GROUP BY c.customernumber , p.productcode
ORDER BY total_spent desc , purchase_frequency DESC
limit 10;