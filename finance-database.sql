-- If the data doesn't already exist then it would be CREATE DATABASE finance; but if it does already exist then USE finance; -- 
CREATE DATABASE finance; 

CREATE TABLE Customers ( -- CREATE TABLE only if the database and table doesn't exist yet -- 
Fullname VARCHAR(50), 
Address VARCHAR(150), 
Balance INT, 
CREDIT INT, 
DEBIT INT
); 

-- If database and table already exists, then start with USE Finance and the following code below -- 
INSERT INTO Customers 
VALUES
("Polly Moore", "123 Fake Street, Bristol, BS15BB", 10, NULL, 15), 
("Jonathan Lindfield", "1 Made up street, London, LN15TB", 15, NULL, 11),
("Lewis Hendry", "1 Fictitious Avenue, Glasglow, GL16HH", 20, 20, 20);

SELECT * FROM customers;

-- ALTERNATIVE VERSION if database already exists -- 

USE finance; 

INSERT INTO Customers 
VALUES
("Polly Moore", "123 Fake Street, Bristol, BS15BB", 10, NULL, 15), 
("Jonathan Lindfield", "1 Made up street, London, LN15TB", 15, NULL, 11),
("Lewis Hendry", "1 Fictitious Avenue, Glasglow, GL16HH", 20, 20, 20);

SELECT * FROM customers;

-- UPDATING the data -- 

SET SQL_SAFE_UPDATES = 0;

UPDATE Customers 
SET
Customers.Balance = 20 
WHERE Fullname = "Polly Moore"; 

SELECT * FROM Customers

-- UPDATING DATA 2 -- 

SET SQL_SAFE_UPDATES = 0;

UPDATE Customers 
SET
Customers.Credit = 10  -- changed from NULL value to 10 in credit -- 
WHERE Fullname = "Polly Moore"; 

SELECT * FROM Customers

-- UPDATING 3 --

SET SQL_SAFE_UPDATES = 0;

UPDATE Customers 
SET
Customers.Address = "22 Not Real Name, Glasglow, GL75BW" -- changed the address --
WHERE Fullname = "Lewis Hendry"; 

SELECT * FROM Customers

-- SELECTING (select first before deleting to check the range of data) -- 

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Customers 
WHERE Balance < 20; 

-- DELETING -- 

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Customers 
WHERE Balance < 20; 

-- right after deleting, check the records to verify deleted action -- 

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Customers; 

