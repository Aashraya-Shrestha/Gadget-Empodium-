SQL> SELECT *
  2  FROM Customer_Order
  3  WHERE Total_Amount >= (SELECT AVG(Total_Amount) FROM Customer_Order);

CUSTOMER_ID   ORDER_ID TOTAL_AMOUNT PAYMENT_TYPE                                
----------- ---------- ------------ --------------------                        
          1         41         2500 credit card                                 
          3         43         1500 debit card                                  
          7         47         1299 e-wallet                                    

SQL> SPOOL OFF
