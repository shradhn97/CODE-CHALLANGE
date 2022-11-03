UPDATE T_DOCTOR
SET   fees =  CASE  
WHEN specialization = 'ENT' AND doctor_name LIKE ‘J%’ THEN 350 
WHEN specialization = 'DERMA' AND doctor_name LIKE ‘J%’ THEN 600
ELSE fees
END 
WHERE   specialization IN ('ENT', 'DERMA')