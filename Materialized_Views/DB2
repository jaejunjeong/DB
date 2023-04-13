CREATE TABLE emp as 
  (SELECT e.empno, e.firstname, e.lastname, e.phoneno, d.deptno, d.mgrno
  from employee e, department d 
  where e.workdept = d.deptno)        
    DATA INITIALLY DEFERRED REFRESH IMMEDIATE

--"DATA INITIALLY DEFERRED" means that data will not be inserted into the table
--"REFRESH IMMEDIATE" means query should refresh automatically

IMMEDIATE CHECKED NOT INCREMENTAL
--"IMMEDIATE CHECKED" means data is to be checked against the MQT's defining query and refreshed
--"NOT INCREMENTAL" means integrity checking is to be done on the whole table
