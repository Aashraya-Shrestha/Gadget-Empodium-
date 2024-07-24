SQL> SELECT *
  2  FROM (
  3      SELECT
  4          Customer.Customer_ID,
  5          Customer.Customer_Name,
  6          Orders.Order_ID,
  7          Invoice.Invoice_ID,
  8          Invoice.Order_Date,
  9          Customer_Order.Total_Amount
 10      FROM
 11          Customer
 12      JOIN
 13          Customer_Order ON Customer.Customer_ID = Customer_Order.Customer_ID
 14      JOIN
 15          Orders ON Customer_Order.Order_ID = Orders.Order_ID
 16      JOIN
 17          Invoice ON Orders.Invoice_ID = Invoice.Invoice_ID
 18      WHERE
 19          EXTRACT(MONTH FROM Invoice.Order_Date) = 8
 20  )
 21  WHERE ROWNUM = 1;

CUSTOMER_ID CUSTOMER_NAME          ORDER_ID INVOICE_ID ORDER_DAT TOTAL_AMOUNT   
----------- -------------------- ---------- ---------- --------- ------------   
          1 Rubina                       49        564 05-AUG-23         1100   

SQL> SPOOL OFF
