SQL> SELECT *
  2  FROM (
  3      SELECT
  4          Product.Product_ID,
  5          Product.Product_Name,
  6          Product.Price,
  7          SUM(Orders.Quantity) AS Total_Order_Quantity
  8      FROM
  9          Product
 10      JOIN
 11          Order_Product ON Product.Product_ID = Order_Product.Product_ID -- Corrected alias
 12      JOIN
 13          Orders ON Order_Product.Order_ID = Orders.Order_ID
 14      GROUP BY
 15          Product.Product_ID, Product.Product_Name, Product.Price
 16      ORDER BY
 17          Total_Order_Quantity DESC
 18  )
 19  WHERE ROWNUM <= 3;
        Orders ON Order_Product.Order_ID = Orders.Order_ID
        *
ERROR at line 13:
ORA-00942: table or view does not exist 


SQL> SPOOL OFF
