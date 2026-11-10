USE CompanyDB2;

SET @password = 'MySecurePassword123';

-- Decrypt the 2nd and 3rd records
SELECT
    Profile_ID,
    CAST(AES_DECRYPT(Name, @password) AS CHAR) AS Name,
    CAST(AES_DECRYPT(Address, @password) AS CHAR) AS Address,
    CAST(AES_DECRYPT(Age, @password) AS CHAR) AS Age,
    CAST(AES_DECRYPT(Department, @password) AS CHAR) AS Department,
    CAST(AES_DECRYPT(Position, @password) AS CHAR) AS Position
FROM Profile_Encrypted
WHERE Profile_ID IN (2, 3);

-- Display all encrypted records
SELECT
    Profile_ID,
    HEX(Name) AS Encrypted_Name,
    HEX(Address) AS Encrypted_Address,
    HEX(Age) AS Encrypted_Age,
    HEX(Department) AS Encrypted_Department,
    HEX(Position) AS Encrypted_Position
FROM Profile_Encrypted;