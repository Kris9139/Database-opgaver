CREATE TABLE PET_OWNER (
OwnerID			INT				IDENTITY(1,1) NOT NULL, 
OwnerLastName	Char(64)		NOT NULL,
OwnerFristName  Char(64)		NOT NULL,
Ownerphone      Char(10),
OwnerEmail		Varchar(320)	NOT NULL,
CONSTRAINT		PET_OWNER_PK	PRIMARY KEY(OwnerID)
);

CREATE TABLE PET (
PetID			INT				IDENTITY(1,1) NOT NULL,
PetName			Char(64)		NOT NULL,
PetType			Char(64)		NOT NULL,
PetBreed		Char(64)		DEFAULT 'Unknown',
PetDOB			VarChar(10),
PetWeight		Float			NOT NULL,
OwnerID			int				NOT NULL,
CONSTRAINT		PET_PK			PRIMARY KEY(PetID),
CONSTRAINT		Owner_ID_FK		FOREIGN KEY(OwnerID)	REFERENCES PET_OWNER(OwnerID)
);