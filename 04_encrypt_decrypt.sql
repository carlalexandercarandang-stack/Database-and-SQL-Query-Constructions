USE CompanyDB2;

CREATE TABLE Profile_Encrypted (
    Profile_ID INT PRIMARY KEY,
    Name VARBINARY(512),
    Address VARBINARY(512),
    Age VARBINARY(512),
    Department VARBINARY(512),
    Position VARBINARY(512)
);

SET @password = 'MySecurePassword123';

INSERT INTO Profile_Encrypted
(Profile_ID, Name, Address, Age, Department, Position)

SELECT
Profile_ID,
AES_ENCRYPT(Name, @password),
AES_ENCRYPT(Address, @password),
AES_ENCRYPT(CAST(Age AS CHAR), @password),
AES_ENCRYPT(Department, @password),
AES_ENCRYPT(Position, @password)
FROM Profile;

SET @password = 'MySecurePassword123';

SELECT
Profile_ID,
CAST(AES_DECRYPT(Name, @password) AS CHAR) AS Name,
CAST(AES_DECRYPT(Address, @password) AS CHAR) AS Address,
CAST(AES_DECRYPT(Age, @password) AS CHAR) AS Age,
CAST(AES_DECRYPT(Department, @password) AS CHAR) AS Department,
CAST(AES_DECRYPT(Position, @password) AS CHAR) AS Position

FROM Profile_Encrypted
WHERE Profile_ID IN (2, 3);

SELECT * FROM Profile_Encrypted;