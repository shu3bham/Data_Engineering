select  orderitemid,orderid,productid,quantity,unitprice,quantity*unitprice as TotalPrice,updated_at
from L1_LANDING.orderitems
