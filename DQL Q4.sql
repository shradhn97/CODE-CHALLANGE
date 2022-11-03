	USE CodeChallengeDB;

CREATE TABLE Pizza(
	Pizza_id VARCHAR(10) PRIMARY KEY,
    Cust_id VARCHAR(10),
    Partner_id VARCHAR(10),
    Pizza_name VARCHAR(50),
    Pizza_type VARCHAR(50),
    Order_Date DATE,
    Amount BIGINT(20)
);

INSERT INTO Pizza VALUES('5','5','23','BBQ Chicken','Cheese','2022-10-23',250);

SELECT Pizza_name,COUNT(Pizza_name) AS 'No.Sold' FROM Pizza GROUP BY Pizza_name;