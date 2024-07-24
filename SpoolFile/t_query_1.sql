SQL> SELECT
  2    EXTRACT(YEAR FROM Invoice.order_date) AS YEAR,
  3    EXTRACT(MONTH FROM Invoice.order_date) AS Month,
  4    SUM(Customer_Order.Total_Amount) AS "Total Revenue"
  5  FROM
  6    Invoice
  7  JOIN
  8    Orders ON Invoice.invoice_id = Orders.invoice_id
  9  JOIN
 10    Customer_Order ON Orders.order_Id = Customer_Order.order_ID
 11  GROUP BY
 12    EXTRACT(YEAR FROM Invoice.order_date),
 13    EXTRACT(MONTH FROM Invoice.order_date)
 14  ORDER BY
 15    YEAR, Month;

      YEAR      MONTH Total Revenue                                             
---------- ---------- -------------                                             
      2023          1          1500                                             
      2023          4          2399                                             
      2023          6          1998                                             
      2023          7           800                                             
      2023         10           699                                             
      2023         12          2500                                             

6 rows selected.

SQL> SPOOL OFF
