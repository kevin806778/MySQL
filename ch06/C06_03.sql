CREATE TABLE Orders 
(
OrderId int NOT NULL,
ProductName varchar(50) NOT NULL,
OrderDate datetime NOT NULL DEFAULT CURDATE(),
PRIMARY KEY (OrderId)
)

INSERT INTO orders (ProductName, OrderDate) VALUES ('Computer', NOW());
