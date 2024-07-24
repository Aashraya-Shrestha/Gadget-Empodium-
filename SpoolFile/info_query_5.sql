SQL> SELECT *
  2  FROM (
  3      SELECT
  4          Customer.Customer_ID,
  5          Customer.Customer_Name,
  6          Customer_Order.Total_Amount,
  7          Orders.Order_ID,
  8          Invoice.Invoice_ID,
  9          Invoice.Order_Date
 10      FROM
 11          Customer
 12      JOIN
 13          Customer_Order ON Customer.Customer_ID = Customer_Order.Customer_ID
 14      JOIN
 15          Orders ON Customer_Order.Order_ID = Orders.Order_ID
 16      JOIN
 17          Invoice ON Orders.Invoice_ID = Invoice.Invoice_ID
 18      ORDER BY
 19          Invoice.Order_Date DESC
 20  )
 21  WHERE ROWNUM = 1;

CUSTOMER_ID CUSTOMER_NAME        TOTAL_AMOUNT   ORDER_ID INVOICE_ID ORDER_DAT   
----------- -------------------- ------------ ---------- ---------- ---------   
          1 Rubina                       2500         41        556 31-DEC-23   

SQL> SPOOL OFF
