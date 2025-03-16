/* Products in storage that have never been ordered */

SELECT 
    p.productCode, p.productName, p.quantityInStock
FROM
    products p
        LEFT JOIN
    orderdetails od ON p.productCode = od.productCode
WHERE
    od.productCode IS NULL;