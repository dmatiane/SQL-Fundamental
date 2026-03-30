 Select * From `emplyees`.`default`.`table_1_employees_sql_join` limit 10;
select * from `emplyees`.`default`.`table_2_projects_sql_join` limit 10;

/*Retrieve all employees and their assigned Project using Inner join*/
Select A.`Employee_ID`, First_Name, Last_Name, Department, Salary, `Project_ID`, `Project_Name`, Budget, Status
From `emplyees`.`default`.`table_1_employees_sql_join` As A
Inner Join `emplyees`.`default`.`table_2_projects_sql_join` As B
On A.`Employee_ID` = B.`Employee_ID`;

/* Left Join*/

Select A.`Employee_ID`, First_Name, Last_Name, Department, Salary, `Project_ID`, `Project_Name`, Budget, Status
From `emplyees`.`default`.`table_1_employees_sql_join` As A
Left Join `emplyees`.`default`.`table_2_projects_sql_join` As B
On A.`Employee_ID` = B.`Employee_ID`;

/*Right Join*/
Select B.`Employee_ID`, First_Name, Last_Name, Department, Salary, `Project_ID`, `Project_Name`, Budget, Status
From `emplyees`.`default`.`table_1_employees_sql_join` As B
Right Join `emplyees`.`default`.`table_2_projects_sql_join` As A
On B.`Employee_ID` = A.`Employee_ID`;

/*Full outer Join*/

/* Left Join*/
Select A.`Employee_ID`, First_Name, Last_Name, Department, Salary, `Project_ID`, `Project_Name`, Budget, Status
From `emplyees`.`default`.`table_1_employees_sql_join` As A
Full Outer Join `emplyees`.`default`.`table_2_projects_sql_join` As B
On A.`Employee_ID` = B.`Employee_ID`;

/*Filtering Statement*/
Select `Employee_ID`, First_Name, Last_Name, Department, Salary
From `emplyees`.`default`.`table_1_employees_sql_join`
Where Salary > 70000;

/* Or Statement*/
Select `Employee_ID`, First_Name, Last_Name, Department, Salary
From `emplyees`.`default`.`table_1_employees_sql_join`
Where Department = 'IT' or Department = 'Finance';

/*Retriving uncomplete projects*/
Select `Project_ID`, `Project_Name`, Budget, Status
From `emplyees`.`default`.`table_2_projects_sql_join`
Where Status != 'Completed';

/*Project that have a budget of greater than R70 000*/
Select `Project_ID`, `Project_Name`, Budget, Status
From `emplyees`.`default`.`table_2_projects_sql_join`
Where Budget > 70000 and Status != 'Completed';

/*Retrieving all employees from New york or Toronto with their salaries*/
Select `Employee_ID`, `First_Name`, `Last_Name`, Department, Salary, City
From  `emplyees`.`default`.`table_1_employees_sql_join`
where City = 'New York' Or City = 'Toronto'
Order by Salary Desc;

/*Retrieving top 3 paid employees*/
Select `Employee_ID`, `First_Name`, `Last_Name`, Department, Salary
From `emplyees`.`default`.`table_1_employees_sql_join`
Order by Salary Desc
Limit 3;

