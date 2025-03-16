/* Overdue Payments */

SELECT 
    c.customerNumber, 
    c.customerName, 
    o.orderNumber, 
    o.orderDate, 
    p.paymentDate, 
    p.amount, 
    DATEDIFF(p.paymentDate, o.orderDate) AS daysToPay
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
LEFT JOIN payments p ON c.customerNumber = p.customerNumber
WHERE p.paymentDate IS NULL OR p.paymentDate > o.orderDate + INTERVAL 30 DAY
ORDER BY daysToPay DESC;