CREATE TABLE emp as 
  (SELECT e.empno, e.firstname, e.lastname, e.phoneno, d.deptno, d.mgrno
  from employee e, department d 
  where e.workdept = d.deptno)        
    DATA INITIALLY DEFERRED REFRESH IMMEDIATE
IMMEDIATE CHECKED NOT INCREMENTAL;

/*
"DATA INITIALLY DEFERRED" means that data will not be inserted into the table
"REFRESH IMMEDIATE" means query should refresh automatically
"IMMEDIATE CHECKED" means data is to be checked against the MQT's defining query and refreshed
"NOT INCREMENTAL" means integrity checking is to be done on the whole table
"MAINTAINED BY SYSTEM" means the MQT is system maintained and not user maintained.
*/

#Example1(MQT, Materialized Query Tables)
CREATE TABLE countrystats (country, year, totalbilledamount) AS
  (select country, year, sum(billedamount)
from factbilling
left join dimcustomer
on factbilling.customerid = dimcustomer.customerid
left join dimmonth
on factbilling.monthid=dimmonth.monthid
group by country,year)
     DATA INITIALLY DEFERRED
     REFRESH DEFERRED
     MAINTAINED BY SYSTEM;
     
refresh table countrystats;
