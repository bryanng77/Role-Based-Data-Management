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

SELECT *
FROM full_table;

-- SELECT 
--     DepartmentName
--     , COUNT(*) As Count_Dept
-- FROM full_table
-- GROUP BY DepartmentName
-- ORDER BY Count_Dept ASC;

-- SELECT
--     RoleName
--     , COUNT(*) as Role_Count
-- FROM full_table
-- GROUP BY RoleName;

-- SELECT *
-- FROM full_table
-- WHERE RoleID = 1;
