-- Table Creation
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,           -- Unique identifier for roles
    RoleName NVARCHAR(50) NOT NULL,   -- Descriptive role name
    CanView BIT DEFAULT 1,            -- Whether the role can view data
    CanEdit BIT DEFAULT 0             -- Whether the role can edit data
);

-- Interseting data Roles Table
INSERT INTO Roles (RoleID, RoleName, CanView, CanEdit)
VALUES
    (1, 'Admin', 1, 1),
    (2, 'Manager', 1, 0),
    (3, 'Employee', 1, 0);
