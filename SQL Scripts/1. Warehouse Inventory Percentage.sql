/* What percentage of total inventory is stored in each warehouse? */

SELECT 
    w.warehousename,
    SUM(p.quantityinstock),
    (SUM(p.quantityInStock) / (SELECT 
            SUM(quantityInStock)
        FROM
            products) * 100) AS percentage_of_total
FROM
    warehouses w
        LEFT JOIN
    products p ON w.warehousecode = p.warehousecode
GROUP BY w.warehousename;
