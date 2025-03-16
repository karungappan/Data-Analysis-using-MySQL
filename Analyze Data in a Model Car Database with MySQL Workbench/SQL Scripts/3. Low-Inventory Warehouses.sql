/* Warehouses with the lowest inventory */

SELECT 
    w.warehouseCode,
    w.warehouseName,
    COUNT(p.productCode) AS total_products,
    SUM(p.quantityInStock) AS total_stock
FROM
    warehouses w
        JOIN
    products p ON w.warehouseCode = p.warehouseCode
GROUP BY w.warehouseCode , w.warehouseName
ORDER BY total_stock ASC;