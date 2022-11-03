USE CodeChallengeDB;

SELECT q1.Customer_id,Customer_Details.Customer_Name,q1.No_of_Pets 
FROM (SELECT * FROM (SELECT Customer_id, COUNT(Customer_id) AS 'No_of_Pets' FROM Purchase_Details GROUP BY Customer_id) q2 WHERE No_of_Pets > 1) q1
JOIN Customer_Details 
WHERE q1.Customer_id = Customer_Details.Customer_id ORDER BY q1.Customer_id ASC;