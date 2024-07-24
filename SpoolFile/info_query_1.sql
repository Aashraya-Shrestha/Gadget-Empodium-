SQL> SELECT
  2    Customer_ID,
  3    Customer_Name,
  4    Customer_Category_ID
  5  FROM
  6    Customer
  7  WHERE
  8    Customer_Category_ID IN (
  9      SELECT
 10        Customer_Category_ID
 11      FROM
 12        Customer_Category
 13      WHERE
 14        Customer_Category = 'STAFF'
 15    );

CUSTOMER_ID CUSTOMER_NAME        CUSTOMER_CATEGORY_ID                           
----------- -------------------- --------------------                           
          2 Candler                               251                           
          3 Joey                                  252                           
          8 Mike                                  257                           

SQL> SPOOL OFF
