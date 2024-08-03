
SELECT
os.CustomerID, c.CustomerName,
sum(os.OrderCount) as OrderCount,
sum(os.revenue) as revenue
FROM {{ ref('order_fact')}} os 
INNER JOIN {{ref('customer_stg')}}  c
ON c.CustomerID = os.CustomerID
GROUP BY os.CustomerID, c.CustomerName
ORDER BY Revenue DESC
