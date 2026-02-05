--1)select all columns from the Employees table
select * from Employees

--2)select only the FirstName and Last Name columns from the Employees table
select FirstName,LastName from Employees


--3)find all employees who work in the 'IT' department
select * from Employees where Department = 'IT'

--or

select * from Employees where Department like 'IT'


--4)select employees with a salary greater than 70,000
select * from Employees where Salary>70000


--5) sort the results by Last Name in ascending order?
select * from Employees order by LastName asc
--or
select * from Employees order by LastName


 --6) select distinct departments from the Employees table
select distinct Department from Employees


--7)count the number of employees in each department
select Department,count(*) [Number of Employees] from Employees group by Department
--
select department,count(employeeid) [Number of Employees] from Employees group by Department



--8)find the maximum salary in the Employees table
select max(salary) [Maximum salary] from Employees

--9) How do you find the average salary of employees in the 'Finance' department
select avg(Salary) [Finance Average] from Employees where Department like 'Finance'


--10)select employees whose last name starts with 'M'?
select * from Employees where LastName like 'M%'


--11)select employees who work in the 'IT' department and have a salary greater than 75,000
select * from employees where Department in ('IT') and Salary>=75000


--12)find employees who work in the 'HR' department or have a salary less than 60,000
select * from Employees where Department in ('HR') or Salary<60000


--13)select employees who do not work in the 'Finance' department
select * from Employees where Department not in ('Finance')

--or

select * from Employees where not Department = 'Finance'


--14)find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department
select * from Employees where Salary between 60000 and 70000 and Department in ('Finance')


--15)employees who work in the 'IT' department and do not have a salary greater than 80,000
select * from Employees where Department = 'IT' and Salary<=80000

--or

select * from Employees where Department in ('IT') and not Salary>80000


--16)employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000
select * from Employees where (Department in ('HR') OR Department in ('Finance')) and Salary>=65000

select * from Employees

--17)select employees whose last name starts with 'D' and do not work in the 'HR' department
select * from Employees where LastName like 'D%' and Department not in ('HR')


--18)find employees who do not work in the 'IT' department and have a salary greater than 70,000
select * from Employees where not Department = 'IT' and Salary>70000


--19)select employees who work in the 'IT' department and either have a salary greater 
--than 75,000 or have the first name 'Laura'
select * from Employees where (Salary>75000 or FirstName = 'Laura') and Department in ('IT')


--20)find employees who do not work in the 'HR' or 'IT' departments
select * from Employees where Department not in ('HR','IT')

