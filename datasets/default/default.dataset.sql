BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"AccountNumber" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"Phone" VARCHAR(255),  
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"Website" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(4,'','','','New York','USA','','','','31349','NY','10 Main Rd.','','(212) 555-5555','Manufacturing','','Acme Partners','','','(212) 555-5555','New York','USA','','','','31349','NY','10 Main Rd.','','Customer','http://www.acmepartner.com');

CREATE TABLE "Asset" (
	id INTEGER NOT NULL, 
	"City" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"GeocodeAccuracy" VARCHAR(255), 
	"InstallDate" VARCHAR(255), 
	"IsCompetitorProduct" VARCHAR(255), 
	"IsInternal" VARCHAR(255), 
	"Latitude" VARCHAR(255), 
	"Longitude" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"PostalCode" VARCHAR(255), 
	"Price" VARCHAR(255), 
	"PurchaseDate" VARCHAR(255), 
	"Quantity" VARCHAR(255), 
	"SerialNumber" VARCHAR(255), 
	"State" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Street" VARCHAR(255), 
	"UsageEndDate" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"AssetProvidedById" VARCHAR(255), 
	"AssetServicedById" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"Product2Id" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Asset" VALUES(1,'','','','','2023-04-18','False','False','','','Marine Generator - MGX750XYMFG','','','2023-04-18','1.0','MGX750XYMFG','','Installed','','','4','','','2','3');
INSERT INTO "Asset" VALUES(2,'','','','','2023-04-20','False','False','','','Acme Compressor - MGX751XYMFG','','','2023-04-20','1.0','MGX751XYMFG','','Installed','','','4','','','2','8');

CREATE TABLE "AssetWarranty" (
	id INTEGER NOT NULL, 
	"EndDate" VARCHAR(255), 
	"ExchangeType" VARCHAR(255), 
	"Exclusions" VARCHAR(255), 
	"ExpensesCovered" VARCHAR(255), 
	"ExpensesCoveredEndDate" VARCHAR(255), 
	"IsTransferable" VARCHAR(255), 
	"LaborCovered" VARCHAR(255), 
	"LaborCoveredEndDate" VARCHAR(255), 
	"PartsCovered" VARCHAR(255), 
	"PartsCoveredEndDate" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"WarrantyType" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	"WarrantyTermId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "AssetWarranty" VALUES(1,'2025-04-20','','','','','False','','','','','2023-04-20','Standard','2','2');
INSERT INTO "AssetWarranty" VALUES(2,'2023-12-31','','','','','False','','','','','2023-04-18','Standard','1','3');

CREATE TABLE "Case" (
	id INTEGER NOT NULL, 
	"Comments" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"IsEscalated" VARCHAR(255), 
	"Origin" VARCHAR(255), 
	"Priority" VARCHAR(255), 
	"Reason" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"SuppliedCompany" VARCHAR(255), 
	"SuppliedEmail" VARCHAR(255), 
	"SuppliedName" VARCHAR(255), 
	"SuppliedPhone" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Case" VALUES(4,'','','False','Phone','Medium','','New','Quarterly Service - June 2023','','','','','Problem','4','2','');
INSERT INTO "Case" VALUES(5,'','When is the next service due for the asset ''Marine Generator - MGX750XYMFG''','False','Phone','Medium','','New','Asset Service','','','','','Question','4','2','1');

CREATE TABLE "Claim" (
	id INTEGER NOT NULL, 
	"ClaimReason" VARCHAR(255), 
	"ClaimReasonType" VARCHAR(255), 
	"ClaimType" VARCHAR(255), 
	"FinalizedDate" VARCHAR(255), 
	"FnolChannel" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Severity" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Summary" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Claim" VALUES(1,'Replace Valve','','Warranty Claim','','Phone','CL-00020','Medium','Draft','','4');
INSERT INTO "Claim" VALUES(2,'Generator Engine Issue','','Warranty Claim','','Phone','CL-00010','Medium','Under Review','','4');

CREATE TABLE "ClaimCoverage" (
	id INTEGER NOT NULL, 
	"CoverageType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"AssetWarrantyId" VARCHAR(255), 
	"CausalPartId" VARCHAR(255), 
	"ClaimId" VARCHAR(255), 
	"ClaimItemId" VARCHAR(255), 
	"FaultCodeId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ClaimCoverage" VALUES(1,'Standard Warranty','','Replace Valve','','1','4','1','1','4');
INSERT INTO "ClaimCoverage" VALUES(2,'Standard Warranty','','Cylinder Misfire','','2','2','2','2','5');

CREATE TABLE "ClaimCoveragePaymentDetail" (
	id INTEGER NOT NULL, 
	"AdjustedAmount" VARCHAR(255), 
	"ChargeType" VARCHAR(255), 
	"ClaimedAmount" VARCHAR(255), 
	"Comment" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Quantity" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"ChargeTypeCodeId" VARCHAR(255), 
	"ClaimCoverageId" VARCHAR(255), 
	"ReplacementPartId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(1,'0.0','Replaced Part','40.0','','','Replace Value Part','1','None','','1','4');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(2,'0.0','Labor','40.0','','','Replace Valve labor charge','1','None','4','1','');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(3,'40.0','Expense','100.0','','','Technician Visit','','Approved','2','2','');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(4,'40.0','Replaced Part','350.0','','','Replace Cylinder Part','5','Approved','1','2','');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(5,'40.0','Labor','100.0','','','Replace Cylinder Labor','5','Approved','6','2','');

CREATE TABLE "ClaimItem" (
	id INTEGER NOT NULL, 
	"AssetUsageUnitOfMeasure" VARCHAR(255), 
	"AssetUsageValue" VARCHAR(255), 
	"Category" VARCHAR(255), 
	"CurrentCity" VARCHAR(255), 
	"CurrentCountry" VARCHAR(255), 
	"CurrentGeocodeAccuracy" VARCHAR(255), 
	"CurrentLatitude" VARCHAR(255), 
	"CurrentLongitude" VARCHAR(255), 
	"CurrentPostalCode" VARCHAR(255), 
	"CurrentState" VARCHAR(255), 
	"CurrentStreet" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"FaultDate" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RepairDate" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	"ClaimId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ClaimItem" VALUES(1,'Hours','750','','','','','','','','','','','2023-05-25T19:00:00.000+0000','Acme Conditioner - MGX751XYMFG','2023-05-28T19:00:00.000+0000','2','1');
INSERT INTO "ClaimItem" VALUES(2,'Hours','750','','','','','','','','','','','2023-04-18T19:00:00.000+0000','Marine Generator - MGX750XYMFG','2023-04-20T19:00:00.000+0000','1','2');

CREATE TABLE "CodeSet" (
	id INTEGER NOT NULL, 
	"Code" VARCHAR(255), 
	"CodeDescription" VARCHAR(255), 
	"CodeSetKey" VARCHAR(255), 
	"CodeSetType" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsCustomCode" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"SourceSystem" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"SystemVersion" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "CodeSet" VALUES(1,'C03 - Replace Part','','6a72c1b955f9265e2bba00cc1e92f2802051883581','','','True','False','False','Replace Part','','','');
INSERT INTO "CodeSet" VALUES(2,'C04 - Technician Visit Charges','','337da89b077d05d957f5ca937d205c00-954932305','','','True','False','False','Technician Visit Charges','','','');
INSERT INTO "CodeSet" VALUES(3,'C12 - Clogged air filters','','fbbcf80886eff14ca3e577f5be47ab461494928968','','','True','False','False','Clogged air filters','','','');
INSERT INTO "CodeSet" VALUES(4,'C05 - Replace Valve','','5b817efcf81a5979f89e6d369e90e2342139354058','','','True','False','False','Replace Valve','','','');
INSERT INTO "CodeSet" VALUES(5,'C01- Cylinder Misfire','','fcdb444dd2025f4a377d8ced22b148c51446736425','','','True','False','False','Cylinder Misfire','','','');
INSERT INTO "CodeSet" VALUES(6,'C92 - Replace Cylinder','','4f1ee93f1b31f01d1748e508f1ca78b0-501354096','','','True','False','False','Replace Cylinder','','','');
INSERT INTO "CodeSet" VALUES(7,'C08- Engine Oil Change','','92d6f14294e958c7beec4d54b4d05366714129323','','','True','False','False','Engine Oil Change','','','');
INSERT INTO "CodeSet" VALUES(8,'C06 - Repair Fuel Tank','','2e45f7c768e98ea949f0765a119cc909-2034434','','','True','False','False','Repair Fuel Tank','','','');

CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"AssistantName" VARCHAR(255), 
	"AssistantPhone" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"Department" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"EmailBouncedDate" VARCHAR(255), 
	"EmailBouncedReason" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"HomePhone" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"LeadSource" VARCHAR(255), 
	"MailingCity" VARCHAR(255), 
	"MailingCountry" VARCHAR(255), 
	"MailingGeocodeAccuracy" VARCHAR(255), 
	"MailingLatitude" VARCHAR(255), 
	"MailingLongitude" VARCHAR(255), 
	"MailingPostalCode" VARCHAR(255), 
	"MailingState" VARCHAR(255), 
	"MailingStreet" VARCHAR(255), 
	"MobilePhone" VARCHAR(255), 
	"OtherCity" VARCHAR(255), 
	"OtherCountry" VARCHAR(255), 
	"OtherGeocodeAccuracy" VARCHAR(255), 
	"OtherLatitude" VARCHAR(255), 
	"OtherLongitude" VARCHAR(255), 
	"OtherPhone" VARCHAR(255), 
	"OtherPostalCode" VARCHAR(255), 
	"OtherState" VARCHAR(255), 
	"OtherStreet" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"Title" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ReportsToId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'','','','','','edy@yahoo.com','','','(212) 555-5555','Edward','','','Stamos','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','Mr.','Manager','4','');
INSERT INTO "Contact" VALUES(2,'','','','','','howdy@yahoo.com','','','(212) 555-5555','Howard','','','Jones','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','Mr.','Buyer','4','');
INSERT INTO "Contact" VALUES(3,'','','','','','leny@yahoo.com','','','(212) 555-5555','Leanne','','','Tomlin','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','Ms.','VP Customer Support','4','');

CREATE TABLE "Product2" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"DisplayUrl" VARCHAR(255), 
	"ExternalId" VARCHAR(255), 
	"Family" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ProductCode" VARCHAR(255), 
	"QuantityUnitOfMeasure" VARCHAR(255), 
	"StockKeepingUnit" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Product2" VALUES(1,'','','','','True','Generator Switch Gear','P04','','');
INSERT INTO "Product2" VALUES(2,'','','','','True','Generator Cylinder','P02','','');
INSERT INTO "Product2" VALUES(3,'','','','','True','Marine Generator MGX750','P01','','');
INSERT INTO "Product2" VALUES(4,'','','','','True','Compressor Valve','P11','','');
INSERT INTO "Product2" VALUES(5,'','','','','True','Petrol Engine 150CC Family','P05','','');
INSERT INTO "Product2" VALUES(6,'','','','','True','Generator Fuel Tank','P06','','');
INSERT INTO "Product2" VALUES(7,'','','','','True','Generator Switch Gear','P03','','');
INSERT INTO "Product2" VALUES(8,'','','','Compressor','True','Acme Compressor MGX751','P10','','');

CREATE TABLE "ProductFaultCode" (
	id INTEGER NOT NULL, 
	"ProductFamily" VARCHAR(255), 
	"FaultCodeId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductFaultCode" VALUES(1,'','4','4');
INSERT INTO "ProductFaultCode" VALUES(2,'Compressor','3','8');

CREATE TABLE "ProductLaborCode" (
	id INTEGER NOT NULL, 
	"EstimatedEffort" VARCHAR(255), 
	"ProductFamily" VARCHAR(255), 
	"LaborCodeId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductLaborCode" VALUES(1,'22.0','Generator','5','3');

CREATE TABLE "ProductWarrantyTerm" (
	id INTEGER NOT NULL, 
	"CoveredProductFamily" VARCHAR(255), 
	"CoveredProductId" VARCHAR(255), 
	"WarrantyTermId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductWarrantyTerm" VALUES(1,'','3','3');

CREATE TABLE "WarrantyTerm" (
	id INTEGER NOT NULL, 
	"Code" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EffectiveStartDate" VARCHAR(255), 
	"ExchangeType" VARCHAR(255), 
	"Exclusions" VARCHAR(255), 
	"ExpensesCovered" VARCHAR(255), 
	"ExpensesCoveredDuration" VARCHAR(255), 
	"ExpensesCoveredUnitOfTime" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsTransferable" VARCHAR(255), 
	"LaborCovered" VARCHAR(255), 
	"LaborCoveredDuration" VARCHAR(255), 
	"LaborCoveredUnitOfTime" VARCHAR(255), 
	"PartsCovered" VARCHAR(255), 
	"PartsCoveredDuration" VARCHAR(255), 
	"PartsCoveredUnitOfTime" VARCHAR(255), 
	"UsageCovered" VARCHAR(255), 
	"WarrantyDuration" VARCHAR(255), 
	"WarrantyTermName" VARCHAR(255), 
	"WarrantyType" VARCHAR(255), 
	"WarrantyUnitOfTime" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WarrantyTerm" VALUES(1,'','','Install Date','','','','','','True','False','','','','','','','','24','Mini Air Conditioner Std. Warranty','Standard','Weeks');
INSERT INTO "WarrantyTerm" VALUES(2,'','','Install Date','','','100.0','24','Months','True','False','100.0','24','Months','100.0','24','Months','','24','Acme Compressor Standard Warranty','Standard','Months');
INSERT INTO "WarrantyTerm" VALUES(3,'','','Install Date','','','100.0','12','Months','True','False','100.0','12','Months','100.0','12','Months','','12','Marine Generator Standard Warranty','Standard','Months');

CREATE TABLE "WarrantyTermCoverage" (
	id INTEGER NOT NULL, 
	"IsExcluded" VARCHAR(255), 
	"CoveredCodeId" VARCHAR(255), 
	"ProductPartId" VARCHAR(255), 
	"WarrantyTermId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WarrantyTermCoverage" VALUES(1,'False','','6','3');
INSERT INTO "WarrantyTermCoverage" VALUES(2,'False','7','5','1');
INSERT INTO "WarrantyTermCoverage" VALUES(3,'False','1','','3');
INSERT INTO "WarrantyTermCoverage" VALUES(4,'False','4','7','3');
INSERT INTO "WarrantyTermCoverage" VALUES(5,'False','2','','3');
INSERT INTO "WarrantyTermCoverage" VALUES(6,'True','7','','3');
INSERT INTO "WarrantyTermCoverage" VALUES(7,'False','8','','3');
INSERT INTO "WarrantyTermCoverage" VALUES(8,'False','5','2','3');

CREATE TABLE "WorkOrder" (
	id INTEGER NOT NULL, 
	"City" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Duration" VARCHAR(255), 
	"DurationType" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"GeocodeAccuracy" VARCHAR(255), 
	"Latitude" VARCHAR(255), 
	"Longitude" VARCHAR(255), 
	"PostalCode" VARCHAR(255), 
	"Priority" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"State" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Street" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"Tax" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	"CaseId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WorkOrder" VALUES(1,'','','','','Hours','','','','','','Low','','','New','','Quarterly Service - Sep 2023','','4','1','','');
INSERT INTO "WorkOrder" VALUES(2,'','','','','Hours','','','','','','Low','','','New','','Quarterly Service - June 2023','','4','1','4','');
INSERT INTO "WorkOrder" VALUES(3,'','','','','Hours','','','','','','Low','','','New','','Quarterly Service - Dec 2023','','4','1','','');
COMMIT;

CREATE TABLE "RecordAlert" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"EffectiveDate" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Severity" VARCHAR(255), 
	"SnoozeUntilDate" VARCHAR(255), 
	"SourceSystemIdentifier" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"ValidUntilDate" VARCHAR(255), 
	"WhatId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RecordAlert" VALUES(1,'','2023-04-18T19:00:00.000+0000','True','Info','','','Installed','2024-04-30T19:00:00.000+0000','1');
INSERT INTO "RecordAlert" VALUES(2,'','2023-04-18T19:00:00.000+0000','True','Info','','','Repair Event','2024-05-11T19:00:00.000+0000','1');