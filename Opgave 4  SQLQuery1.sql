CREATE TABLE SEMINAR (
SeminarID				int					UNIQUE NOT NULL,
SeminarDateLocation		NChar				NOT NULL,
SeminarTitle			NChar				NOT NULL,
CONSTRAINT				SEMINAR_PK			PRIMARY KEY(SeminarID)
);

CREATE TABLE CUSTOMER (
CustomerID				int					UNIQUE NOT NULL,						
FirstName				NChar				NOT NULL,
LastName				NChar				NOT NULL,
Street					NChar				NOT NULL,
Zip						NChar				NOT NULL,
CONSTRAINT				CUSTOMER_PK			PRIMARY KEY(CustomerID)
);
	
CREATE TABLE ZIP_CITY ( 
Zip						NChar				NOT NULL,
City					NChar				NOT NULL,
CONSTRAINT				ZIP_CITY_PK			PRIMARY KEY(Zip)
);

CREATE TABLE SEMINAR_CUSTOMER (
SeminarID				int					UNIQUE NOT NULL,
CustomerID				int					UNIQUE NOT NULL,
CONSTRAINT				SEMINAR_CUSTOMER_PK	PRIMARY KEY(SeminarID, CustomerID),
CONSTRAINT				SEMINAR_FK			FOREIGN KEY(SeminarID) REFERENCES SEMINAR(SeminarID),
CONSTRAINT				CUSTOMER_FK			FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID)
);
