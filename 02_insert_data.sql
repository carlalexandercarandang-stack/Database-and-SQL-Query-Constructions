USE CompanyDB1;

INSERT INTO Profile
(Profile_ID, Name, Address, Age, Department, Position)
VALUES
(1, 'John Smith', 'Manila', 25, 'IT', 'Programmer'),
(2, 'Maria Santos', 'Makati', 28, 'HR', 'HR Officer'),
(3, 'Peter Cruz', 'Quezon City', 30, 'Finance', 'Accountant'),
(4, 'Ana Reyes', 'Pasig', 26, 'Marketing', 'Marketing Staff'),
(5, 'Mark Garcia', 'Taguig', 32, 'IT', 'System Analyst');

SELECT * FROM Profile;