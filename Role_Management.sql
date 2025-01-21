WITH
    main_table
    AS
    (
        SELECT
            id
    , r.RoleID
    , RoleName
    , CanView
    , CanEdit
    , FirstName
    , LastName
    , Email
    , IsActive
    , DepartmentName
        FROM Roles r
            INNER JOIN Users u
            ON r.RoleID = u.RoleID
    )

-- SELECT *
-- FROM main_table

-- Count of Employees by Departments
SELECT DepartmentName
, COUNT(*) AS department_count
FROM main_table
WHERE IsActive = 1
GROUP BY DepartmentName
ORDER BY department_count ASC;

-- Department Breakdown based on Roles
SELECT
    DepartmentName
    , RoleName
    , COUNT(*) AS department_count
FROM main_table
WHERE IsActive = 1
GROUP BY DepartmentName, RoleName
ORDER BY department_count, RoleName ASC;

-- Total Active Employees
SELECT COUNT(*) As IsActive
FROM main_table
WHERE IsActive = 1;

-- Total InActive Employees
SELECT COUNT(*) As IsNotActive
FROM main_table
WHERE IsActive = 0;

-- Role Distribution in the Company
SELECT
    RoleName
    , COUNT(*) As Role_Count
FROM main_table
WHERE IsActive = 1
GROUP BY RoleName;

--How many people are there in the company?
SELECT COUNT(*) AS Total
FROM main_table;



    
