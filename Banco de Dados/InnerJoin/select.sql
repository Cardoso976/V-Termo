SELECT e.lastname, e.firstname, d.deptname
FROM employee e, department d
WHERE d.deptname = e.workdept
ORDER BY d.deptname,e.lastname, e.firstname;  

SELECT e.lastname, e.firstname, d.deptname
FROM employee as e 