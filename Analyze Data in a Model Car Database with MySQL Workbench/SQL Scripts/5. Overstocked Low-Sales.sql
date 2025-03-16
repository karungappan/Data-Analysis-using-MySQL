/* Overstocked products with low sales */

SELECT 
    p.productCode,
    p.productName,
    p.quantityInStock,
    COALESCE(SUM(o.quantityOrdered), 0) AS total_sold
FROM
    products p
        LEFT JOIN
    orderdetails o ON p.productCode = o.productCode
GROUP BY p.productCode , p.productName , p.quantityInStock
ORDER BY total_sold ASC , p.quantityInStock DESC;