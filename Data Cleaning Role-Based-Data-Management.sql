-- Data Cleaning after combining Users and Roles Spreadsheet

WITH full_table AS (
SELECT     
    u.id
    , u.FirstName
    , u.LastName
    , u.Email
    , u.RoleID
    , u.IsActive
    , u.DepartmentName
    , r.RoleName
    , r.CanView
    , r.CanEdit
FROM Users u
INNER JOIN Roles r
    ON u.RoleID = r.RoleID
)

-- Data Cleaning 1: Removing inactive users and ensuring valid email format
SELECT 
    id AS UserID,
    FirstName,
    LastName,
    Email,
    DepartmentName,
    IsActive,
    RoleID
FROM full_table
WHERE IsActive = 1
  AND Email LIKE '%@%.%';

-- Data Cleaning 2: Normalizing department names (e.g., removing trailing spaces)
UPDATE Users
SET DepartmentName = TRIM(DepartmentName);

