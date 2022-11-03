/1/
CREATE TABLE PetOwner
(
    OwnerID int PRIMARY KEY,
    Name char(50),
    Surname char(50),
    StreetAddress char(100),
    City char(100),
    State char(10),
    ZipCode int
)
;
CREATE TABLE Pet
(
    PetID char(10) PRIMARY KEY,
    Name char(20),
    Kind char(10),
    Gender char(6),
    Age int
    OwnerID int);
    CREATE TABLE ProcedureHistory
    (
        PetID char(10),
        ProcedureDate date,
        ProcedureType char(50),
        Description char(100)
    );
    /2A/
    ALTER TABLE PetOwner
ALTER State
    SET
    DEFAULT 'Michigan';
    /2B/
    ALTER TABLE Pet
ADD FOREIGN KEY (OwnerID) REFERENCES PetOwner(OwnerID);
    /3/
    ALTER TABLE ProcedureHistory
ADD FOREIGN KEY (PetId) REFERENCES Pet(PetID);