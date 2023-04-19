CREATE MATERIALIZED VIEW MY_MAT_VIEW
[ WITH (storage_parameter [= value] [, ...]) ]
 [ TABLESPACE tablesaple_name ]
  AS SELECT * FROM <table_name> ;
  
  REFRESH MATERIALIZED VIEW MY_MAT_VIEW

--Example
CREATE MATERIALIZED VIEW avg_customer_bill (customerid, averagebillamount) 
  AS SELECT customerid, avg(billedamount) FROM public."FactBilling" 
  group by customerid ;
  REFRESH MATERIALIZED VIEW avg_customer_bill;
