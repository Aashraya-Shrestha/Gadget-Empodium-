SQL> SELECT
  2    Vendor.Vendor_ID,
  3    Vendor.Vendor_PhoNumber,
  4    COUNT(Product.Product_ID) AS Products_Supplied
  5  FROM
  6    Vendor
  7  JOIN
  8    Product ON Vendor.Vendor_ID = Product.Vendor_ID
  9  GROUP BY
 10    Vendor.Vendor_ID, Vendor.Vendor_PhoNumber
 11  HAVING
 12    COUNT(Product.Product_ID) > 3;

 VENDOR_ID VENDOR_PHONUMBER PRODUCTS_SUPPLIED                                   
---------- ---------------- -----------------                                   
       888       9851673849                 4                                   

SQL> SPOOL OFF
