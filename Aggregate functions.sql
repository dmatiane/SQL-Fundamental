select * from `emplyees`.`default`.`employees` limit 5;

Select distinct id
from `emplyees`.`default`.`employees`;

/*Counting number of employees*/
Select count(id) AS Tot_Num_Emp
from `emplyees`.`default`.`employees`;

/*Calculating total Salary for IT Department*/
Select Sum(salary) As Total_Salary
from `emplyees`.`default`.`employees`
Where department = 'IT';

/*Calculating average salary from HR department*/
Select AVG(salary) As Average_Salary
from `emplyees`.`default`.`employees`
where department = 'HR';

/*Get the Minimum and Maximum salary from the company*/
Select min(salary) As Lowest_Salary,
       max(salary) AS Highest_Salary
From  `emplyees`.`default`.`employees`;         

/*Grouping employees by department and calculating total salary*/
Select department,
sum(salary) As Total_Salary
From `emplyees`.`default`.`employees`
group by department;    

/*Get number of employees per department*/
Select Count(id) As Num_Emp,
       city
From `emplyees`.`default`.`employees`
Group by city;     

/*Grouping empoyees and get average Salary*/
Select department,
       AVG(salary) As Average_Salary
 From `emplyees`.`default`.`employees`
 Group by department
 Order by Average_Salary Desc;

 /*Using Group and Having statement*/
 Select department,
        sum(salary) As Salary_Paid
 From  `emplyees`.`default`.`employees`
 Group by department
 Having sum(salary) > 100000;   

 /*List cities where more than one employees works*/
 Select city,
 Count(id) As Num_Employees
 From  `emplyees`.`default`.`employees`
 Group by city
 Having Num_Employees > 1
 Order by Num_Employees Desc;
    
    
 Select department,
       AVG(salary) As Average_Salary
 From `emplyees`.`default`.`employees`
 Group by department
 Order by Average_Salary desc      
 Limit 1; 
 

