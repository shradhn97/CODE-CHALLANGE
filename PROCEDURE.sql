USE CodeChallengeDB;

DELIMITER $$
CREATE PROCEDURE `usp_PetProcedureDetails`(IN ProcedureType CHAR(50))
BEGIN
	SELECT ProcedureHistory.PetID, Pet.Name AS 'Pet Name', PetOwner.Name AS 'Owner Name', ProcedureHistory.Description 
	FROM ProcedureHistory
	JOIN Pet
	JOIN PetOwner
	WHERE ProcedureHistory.PetID=Pet.PetID AND Pet.OwnerID=PetOwner.OwnerID AND ProcedureHistory.ProcedureType=ProcedureType;
END$$

 CALL usp_PetProcedureDetails('Surgery');