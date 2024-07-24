SQL> SELECT
  2    Invoice.Invoice_ID,
  3    Invoice.Order_Date,
  4    Orders.Order_ID,
  5    Product.Product_ID,
  6    Product.Product_Name,
  7    Product.Price
  8  FROM
  9    Invoice
 10  JOIN
 11    Orders ON Invoice.Invoice_ID = Orders.Invoice_ID
 12  JOIN
 13    Order_Product ON Orders.Order_ID = Order_Product.Order_ID
 14  JOIN
 15    Product ON Order_Product.Product_ID = Product.Product_ID
 16  WHERE
 17    Invoice.Order_Date BETWEEN TO_DATE('2023-05-01', 'YYYY-MM-DD') AND TO_DATE('2023-05-28', 'YYYY-MM-DD')
 18    AND Product.Product_ID = 2;

INVOICE_ID ORDER_DAT   ORDER_ID PRODUCT_ID PRODUCT_NAME              PRICE      
---------- --------- ---------- ---------- -------------------- ----------      
       566 10-MAY-23         51          2 iphone 10                   400      
       567 16-MAY-23         52          2 iphone 10                   400      
       568 20-MAY-23         53          2 iphone 10                   400      

SQL> SPOOL OFF
