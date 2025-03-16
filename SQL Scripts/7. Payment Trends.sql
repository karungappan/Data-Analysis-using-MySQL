/* Payment Trends */

SELECT 
    YEAR(p.paymentDate) AS year, 
    MONTH(p.paymentDate) AS month, 
    ROUND(SUM(p.amount) ) AS totalPayments
FROM payments p
GROUP BY year, month
ORDER BY year DESC, month DESC;
