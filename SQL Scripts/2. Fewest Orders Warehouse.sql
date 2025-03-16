/* Which warehouse processes the fewest orders? */

SELECT 
    w.warehousename,
    p.warehousecode,
    COUNT(o.quantityordered) AS total_orders
FROM
    warehouses w
        LEFT JOIN
    products p ON w.warehousecode = p.warehousecode
        LEFT JOIN
    orderdetails o ON p.productcode = o.productcode
GROUP BY w.warehousename , p.warehousecode
ORDER BY total_orders ASC
LIMIT 1;