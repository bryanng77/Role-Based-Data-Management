WITH RandomRows AS (
    SELECT TOP (9) id
    FROM Users
    WHERE RoleID = 2
    ORDER BY NEWID() -- This randomizes the order of rows
)
UPDATE Users
SET RoleID = 3
WHERE id IN (SELECT id FROM RandomRows);

-- UPDATE Users
-- SET RoleID = 3
-- WHERE id = 102;
