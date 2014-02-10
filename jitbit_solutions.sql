/*******************************************************************************
   http://www.jitbit.com/news/181-jitbits-sql-interview-questions/
********************************************************************************/


/*******************************************************************************
# 1. List employees (names) who have a bigger salary than their boss
********************************************************************************/
SELECT e_emp.EmployeeID, e_emp.Name, e_emp.Salary, e_emp.BossID, b_emp.EmployeeID, b_emp.Name, b_emp.Salary
    FROM employee e_emp
LEFT OUTER JOIN employee b_emp
ON e_emp.BossID = b_emp.EmployeeID
WHERE b_emp.Salary < e_emp.Salary
ORDER BY b_emp.EmployeeID ASC;
/*******************************************************************************
# 2. List employees who have the biggest salary in their departments
********************************************************************************/

SELECT name, max(Salary) AS max_salary
    FROM employee
GROUP BY DepartmentID
ORDER BY max_salary DESC;

/*******************************************************************************
# 3. List departments that have less than 3 people in it
********************************************************************************/

SELECT DepartmentID, COUNT(DepartmentID) AS number_departments
    FROM employee
GROUP BY DepartmentID
HAVING number_departments < 3
ORDER BY DepartmentID;

/******************************************************************************
4. List all departments along with the number of people there (tricky - people often do an "inner join" leaving out empty departments)
********************************************************************************/

SELECT  department.DepartmentID, department.Name, Count(employee.DepartmentID)AS CountOfDepartmentID
    FROM department
LEFT OUTER JOIN employee
ON department.DepartmentID = employee.DepartmentID
GROUP BY department.Name
ORDER BY department.DepartmentID;


/*******************************************************************************
5. List employees that don't have a boss in the same department
********************************************************************************/

SELECT e_emp.EmployeeID, e_emp.Name
    FROM employee e_emp
LEFT OUTER JOIN employee b_emp
ON e_emp.BossID = b_emp.EmployeeID
WHERE b_emp.DepartmentID <> e_emp.DepartmentID
ORDER BY b_emp.EmployeeID ASC;

/*******************************************************************************
6. List all departments along with the total salary there
********************************************************************************/

SELECT SUM(employee.Salary) AS emp_salary, department.Name as dept_name
    FROM department, employee
WHERE employee.DepartmentID = department.DepartmentID
GROUP BY dept_name
ORDER BY department.DepartmentID;


/********************************************************************************
Find Departments with no employees
********************************************************************************/
SELECT department.DepartmentID, department.Name
    FROM department LEFT JOIN
    employee
    ON department.DepartmentID = employee.DepartmentID
WHERE employee.DepartmentID Is Null;
