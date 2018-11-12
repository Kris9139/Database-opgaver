CREATE TABLE INVOICE (
InvoiceNumber		int					UNIQUE NOT NULL,
InvoiceDate			NChar				NOT NULL,
SubTotal			DECIMAl(10,2)		NOT NULL,
TaxPct				DECIMAL(3,0)		NOT NULL,
Total				DECIMAL(10,2)		NOT NULL,
CONSTRAINT			INVOICE_PK			PRIMARY KEY(InvoiceNumber)
);

CREATE TABLE PRODUCT (
ProductNumber		int					UNIQUE NOT NULL,
ProductType			NChar				NOT NULL,
ProductDescription	NChar,
UnitPrice			DECIMAL				NOT NULL,
CONSTRAINT			PRODUCT_PK			PRIMARY KEY(ProductNumber)
);

CREATE TABLE LINE_ITEM (
InvoiceNumber		int					UNIQUE NOT NULL,
LineNumber			int					NOT NULL,
ProductNumber		int					NOT NULL,
Quantity			int					NOT NULL,
Unitprice			DECIMAL(10,2)		NOT NULL,
Total				DECIMAL(10,2)		NOT NULL,
CONSTRAINT			LINE_ITEM_PK		PRIMARY KEY(InvoiceNumber, LineNumber),
CONSTRAINT			InvoiceNumber_FK		FOREIGN KEY(InvoiceNumber) REFERENCES INVOICE(InvoiceNumber),
CONSTRAINT			ProductNumber_FK		FOREIGN KEY(ProductNumber) REFERENCES PRODUCT(ProductNumber)
);
