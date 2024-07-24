SQL> SELECT Customer_ID
  2  FROM Customer_Order
  3  WHERE Order_ID IS NOT NULL;

CUSTOMER_ID                                                                     
-----------                                                                     
          1                                                                     
          2                                                                     
          3                                                                     
          4                                                                     
          5                                                                     
          6                                                                     
          7                                                                     
          8                                                                     

8 rows selected.

SQL> SPOOL OFF
