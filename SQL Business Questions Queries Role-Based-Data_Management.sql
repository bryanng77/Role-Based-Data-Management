-- Step 1: Create a Common Table Expression (CTE) to Join Tables
WITH main_table AS (
    SELECT
        u.id AS UserID,
        r.RoleID,
        r.RoleName,
        r.CanView,
        r.CanEdit,
        u.FirstName,
        u.LastName,
        u.Email,
        u.IsActive,
        u.DepartmentName
    FROM Roles r
    INNER JOIN Users u
        ON r.RoleID = u.RoleID
)

-- Step 2: Select All Data from the Main Table
SELECT *
FROM main_table;

-- Step 3: Count of Employees by Departments
SELECT 
    DepartmentName,
    COUNT(*) AS DepartmentCount
FROM main_table
WHERE IsActive = 1
GROUP BY DepartmentName
ORDER BY DepartmentCount ASC;

-- Step 4: Department Breakdown Based on Roles
SELECT
    DepartmentName,
    RoleName,
    COUNT(*) AS DepartmentCount
FROM main_table
WHERE IsActive = 1
GROUP BY DepartmentName, RoleName
ORDER BY DepartmentCount, RoleName ASC;

-- Step 5: Total Active Employees
SELECT 
    COUNT(*) AS TotalActiveEmployees
FROM main_table
WHERE IsActive = 1;

-- Step 6: Role Distribution in the Company
SELECT
    RoleName,
    COUNT(*) AS RoleCount
FROM main_table
WHERE IsActive = 1
GROUP BY RoleName;

-- Step 7: Total Number of People in the Company
SELECT 
    COUNT(*) AS TotalEmployees
FROM main_table;
