SELECT 
  SUM(amount) AS net_revenue
FROM purchases
WHERE
  refunded = FALSE

;
