select  o.orderid,o.orderdate,o.customerid,o.employeeid,o.storeid,o.statusDesc,oi.updated_at,count(distinct o.orderid) as OrderCount, sum(oi.TotalPrice) as revenue
from {{ref('order_stg')}} o join {{ ref('orderitems_stg')}} oi on o.orderid=oi.orderid
group by 
o.orderid,o.orderdate,o.customerid,o.employeeid,o.storeid,o.status,o.updated_at

