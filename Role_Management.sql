
SELECT TOP 10
    *
FROM Roles;

SELECT TOP 10
    *
FROM Users;

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
    ,DepartmentName
FROM Roles r
    INNER JOIN Users u
    ON r.RoleID = u.RoleID;