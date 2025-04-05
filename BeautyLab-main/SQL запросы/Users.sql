CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),      -- ���������� �������������
    email NVARCHAR(255) NOT NULL UNIQUE,   -- ���������� email
    login NVARCHAR(15) NULL,               -- ����� (�������������)
    password NVARCHAR(64) NOT NULL,        -- ������
    name NVARCHAR(10),                     -- ��� (�������������)
    surname NVARCHAR(15),                  -- ������� (�������������)
    access INT DEFAULT 0                   -- ������� �������, �� ��������� 0
);

-- ������� ���������� ������ ������ ��� �������� �������� login
CREATE UNIQUE INDEX UQ_Users_Login_NotNull
ON Users (login)
WHERE login IS NOT NULL;
