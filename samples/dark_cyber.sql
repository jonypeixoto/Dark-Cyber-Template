-- In a land shrouded in mystery...

CREATE TABLE Cyber (
    Name VARCHAR(50),
    ConstructionYear INT,
    DestructionYear INT
);

INSERT INTO Cyber (Name, ConstructionYear, DestructionYear)
VALUES ('Dark Cyber', 1100, 1678);

SELECT Name, (DestructionYear - ConstructionYear) AS Duration
FROM Cyber;

-- ...there stood a Dark Cyber
