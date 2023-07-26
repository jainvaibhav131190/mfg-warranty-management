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
	"Rating" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"Sic" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"Site" VARCHAR(255), 
	"TickerSymbol" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"Website" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'','','','New York','USA','','','','31349','NY','10 Main Rd.','','(212) 555-5555','Manufacturing','','Acme Partners','','','(212) 555-5555','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','Customer','http://www.acmepartner.com');
INSERT INTO "Account" VALUES(2,'','','100000000.0','New York','USA','','','','31349','NY','10 Main Rd.','','(212) 555-5555','Manufacturing','','Acme','680','','(212) 555-5555','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','Prospect','');
INSERT INTO "Account" VALUES(3,'','','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','Founded in March 1999, salesforce.com (http://www.salesforce.com) builds and delivers customer relationship management (CRM) applications as scalable online services. The salesforce.com product suite - Team Edition, Professional Edition, Enterprise Edition, Wireless Edition and Offline Edition - gives companies of all sizes a complete 360-degree view of the customer. The company''s award-winning CRM solutions provide integrated online sales force automation, customer service and support management, and marketing automation applications to help companies meet the complex challenges of global customer communication. Salesforce.com has received considerable recognition in the industry, including Editors'' Choice and two Five-Star ratings from PC Magazine, two Deploy Awards from InfoWorld, Red Herring 100, Upside Hot 100, Investor''s Choice Award from Enterprise Outlook, Editors'' Choice from TMCLabs, Top 10 CRM Implementation from Aberdeen Group, and InfoWorld''s 2001 CRM Technology of the Year. Founded in 1999, salesforce.com is headquartered in San Francisco, with offices in Europe and Asia.','(415) 901-7040','Technology','','salesforce.com','','','(415) 901-7000','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','','','','','Customer','http://www.salesforce.com');
INSERT INTO "Account" VALUES(4,'','','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','GBM is the worldwide leader in technology news and information on the Web and the producer of the longest-running and farthest-reaching television shows about technology. GBM''s network of sites combines breakthrough interactive technology with engaging content and design and is consistently ranked as the Internet''s leading content network in terms of both audience size and revenue, serving millions of users each day. The company''s television programming is broadcast by the USA Network and the Sci-Fi Channel to more than 70 million households and is syndicated to broadcast television stations in the nation''s top 120 markets, including the top 10 markets.','','Media','','Global Media','14668','','(905) 555-1212','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','Prospect','');
CREATE TABLE "Asset" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"City" VARCHAR(255), 
	"IsCompetitorProduct" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"GeocodeAccuracy" VARCHAR(255), 
	"InstallDate" VARCHAR(255), 
	"IsInternal" VARCHAR(255), 
	"Latitude" VARCHAR(255), 
	"Longitude" VARCHAR(255), 
	"PostalCode" VARCHAR(255), 
	"Price" VARCHAR(255), 
	"PurchaseDate" VARCHAR(255), 
	"Quantity" VARCHAR(255), 
	"SerialNumber" VARCHAR(255), 
	"State" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Street" VARCHAR(255), 
	"UsageEndDate" VARCHAR(255), 
	"Warranty_Status__c" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"AssetProvidedById" VARCHAR(255), 
	"AssetServicedById" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	"Product2Id" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Asset" VALUES(1,'Marine Generator - MGX750XYMFG','','False','','','','2023-04-18','False','','','','','2023-04-18','1.0','MGX750XYMFG','','Installed','','','','1','','','9','','3');
INSERT INTO "Asset" VALUES(2,'Acme Compressor - MGX751XYMFG','','False','','','','2023-04-20','False','','','','3250.0','2023-04-20','1.0','MGX751XYMFG','','Installed','','','Active','1','','','9','','8');
INSERT INTO "Asset" VALUES(3,'Expo Laptop 002 - GREY','','False','','','','','False','','','','1750.0','2022-07-18','1.0','EXPO6781','','Purchased','','','Active','4','','','7','','9');
INSERT INTO "Asset" VALUES(4,'Magna Alternator - ALTX001','','False','','','','2023-07-21','False','','','','3750.0','2023-07-10','1.0','ALX750XYMFG','','Installed','','','Active','4','','','6','','11');
CREATE TABLE "AssetMilestone" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"City" VARCHAR(255), 
	"Country" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ExpiredDate" VARCHAR(255), 
	"GeocodeAccuracy" VARCHAR(255), 
	"Latitude" VARCHAR(255), 
	"Longitude" VARCHAR(255), 
	"MilestoneDate" VARCHAR(255), 
	"MilestoneType" VARCHAR(255), 
	"PostalCode" VARCHAR(255), 
	"SourceSystemIdentifier" VARCHAR(255), 
	"SourceSystemName" VARCHAR(255), 
	"Stage" VARCHAR(255), 
	"StageComment" VARCHAR(255), 
	"State" VARCHAR(255), 
	"Street" VARCHAR(255), 
	"UsageType" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	"LocationId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "AssetMilestone" VALUES(1,'Installed','','','','','','','','2023-07-21','Delivered','','','','Active','','','','Manufacturing','4','');
INSERT INTO "AssetMilestone" VALUES(2,'6 Month Service Completed','','','','','','','','2023-01-10','6 Month Service','','','','Active','','','','Manufacturing','3','');
INSERT INTO "AssetMilestone" VALUES(3,'Order Received','','','','','','','','2023-07-06','Order Received','','','','Active','','','','Manufacturing','4','');
INSERT INTO "AssetMilestone" VALUES(4,'Delivered to Customer','','','','','','','','2022-07-18','Delivered','','','','Active','','','','Manufacturing','3','');
INSERT INTO "AssetMilestone" VALUES(5,'3 Month Service Concluded','','','','','','','','2022-10-24','3 Month Service','','','','Active','','','','Manufacturing','3','');
INSERT INTO "AssetMilestone" VALUES(6,'1 Month Service','','','','','','','','2022-08-18','1 Month Service','','','','Active','','','','Manufacturing','3','');
INSERT INTO "AssetMilestone" VALUES(7,'Order Received','','','','','','','','2022-07-11','Order Received','','','','Active','','','','Manufacturing','3','');
INSERT INTO "AssetMilestone" VALUES(8,'1 Month Service','','','','','','','','2023-05-31','1 Month Service','','','','Active','','','','Manufacturing','2','');
INSERT INTO "AssetMilestone" VALUES(9,'Order Received','','','','','','','','2023-04-14','Order Received','','','','Active','','','','Manufacturing','2','');
INSERT INTO "AssetMilestone" VALUES(10,'Order Received','','','','','','','','2023-04-14','Order Received','','','','Active','','','','Manufacturing','1','');
INSERT INTO "AssetMilestone" VALUES(11,'Installed','','','','','','','','2023-04-18','Delivered','','','','Active','','','','Manufacturing','1','');
INSERT INTO "AssetMilestone" VALUES(12,'Installed','','','','','','','','2023-04-17','Delivered','','','','Active','','','','Manufacturing','2','');
INSERT INTO "AssetMilestone" VALUES(13,'1 Month Service','','','','','','','','2023-05-31','1 Month Service','','','','Active','','','','Manufacturing','1','');
CREATE TABLE "AssetWarranty" (
	id INTEGER NOT NULL, 
	"EndDate" VARCHAR(255), 
	"ExchangeType" VARCHAR(255), 
	"Exclusions" VARCHAR(255), 
	"ExpensesCovered" VARCHAR(255), 
	"ExpensesCoveredEndDate" VARCHAR(255), 
	"LaborCovered" VARCHAR(255), 
	"LaborCoveredEndDate" VARCHAR(255), 
	"PartsCovered" VARCHAR(255), 
	"PartsCoveredEndDate" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"IsTransferable" VARCHAR(255), 
	"WarrantyType" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"WarrantyTermId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "AssetWarranty" VALUES(1,'2026-04-18','','','100.0','2026-04-18','100.0','2026-04-18','100.0','2026-04-18','2023-04-18','False','Basic Warranty','1','','3');
INSERT INTO "AssetWarranty" VALUES(2,'2025-07-21','','','50.0','2025-07-21','75.0','2025-07-21','50.0','2025-07-21','2023-07-21','False','Standard','4','','2');
INSERT INTO "AssetWarranty" VALUES(3,'2024-04-18','','','40.0','2024-04-18','50.0','2024-04-18','30.0','2024-04-18','2023-04-18','False','Extended Warranty','1','','7');
INSERT INTO "AssetWarranty" VALUES(4,'','','','50.0','2024-07-22','50.0','2024-07-22','70.0','2024-07-22','2022-07-18','False','Extended Warranty','3','','1');
INSERT INTO "AssetWarranty" VALUES(5,'2025-04-20','','','100.0','2025-04-20','100.0','2025-04-20','100.0','2025-04-20','2023-04-20','False','Standard','2','','9');
INSERT INTO "AssetWarranty" VALUES(6,'2026-04-20','','','60.0','2026-04-20','100.0','2026-04-20','50.0','2026-04-20','2023-04-20','False','Extended Warranty','2','','6');
INSERT INTO "AssetWarranty" VALUES(7,'2025-04-18','','','50.0','2025-04-18','75.0','2025-04-18','50.0','2025-04-18','2023-04-18','False','Standard','1','','2');
INSERT INTO "AssetWarranty" VALUES(8,'2025-04-18','','','100.0','2025-04-18','100.0','2025-04-18','100.0','2025-04-18','2023-04-18','False','Standard','1','','10');
CREATE TABLE "Case" (
	id INTEGER NOT NULL, 
	"Origin" VARCHAR(255), 
	"Reason" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"SuppliedCompany" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"SuppliedEmail" VARCHAR(255), 
	"IsEscalated" VARCHAR(255), 
	"Comments" VARCHAR(255), 
	"SuppliedName" VARCHAR(255), 
	"SuppliedPhone" VARCHAR(255), 
	"Priority" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Case" VALUES(1,'Phone','Instructions not clear','','','','','False','','','','High','New','Sample Case 2: The widgets we received are the wrong size.','2','','1','');
INSERT INTO "Case" VALUES(2,'Phone','','','','','','False','','','','Low','On Hold','Sample Case 3: Cannot track our order.','2','','1','');
INSERT INTO "Case" VALUES(3,'Phone','','','','','','False','','','','High','Escalated','Sample Case: Our Widgets have not been delivered.','4','','7','');
INSERT INTO "Case" VALUES(4,'Phone','','Question','','','','False','','','','Medium','New','How do I proceed with the installation?','4','4','6','');
INSERT INTO "Case" VALUES(5,'Phone','Instructions not clear','Question','','','','False','','','','Medium','New','When is our next service due?','1','2','3','');
INSERT INTO "Case" VALUES(6,'Email','','Question','','','','False','','','','Medium','New','When can we have the anti virus software installed on the laptop?','4','3','7','');
INSERT INTO "Case" VALUES(7,'Phone','New problem','Problem','','','','False','','','','High','New','Laptop getting heated up','4','3','7','');
INSERT INTO "Case" VALUES(8,'Phone','','Problem','','','','False','','','','Medium','New','Quarterly Service - June 2023','1','1','9','');
INSERT INTO "Case" VALUES(9,'Phone','','Question','','When is the next service due for the asset ''Marine Generator - MGX750XYMFG''','','False','','','','Medium','New','Asset Service','1','1','9','');
INSERT INTO "Case" VALUES(10,'Phone','New problem','Problem','','','','False','','','','High','New','Noise coming out of the alternator','4','4','6','');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"AssistantName" VARCHAR(255), 
	"AssistantPhone" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"Department" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DoNotCall" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"EmailBouncedDate" VARCHAR(255), 
	"EmailBouncedReason" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"GenderIdentity" VARCHAR(255), 
	"HasOptedOutOfEmail" VARCHAR(255), 
	"HasOptedOutOfFax" VARCHAR(255), 
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
	"Pronouns" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"Title" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'','','','','','False','info@salesforce.com','','','(212) 555-5555','Edward','','False','False','','','Stamos','','New York City','USA','','','','31349','NY','10 Main Rd.','','New York City','USA','','','','','31349','NY','10 Main Rd.','(212) 555-5555','','','President and CEO');
INSERT INTO "Contact" VALUES(2,'','','','','','False','info@salesforce.com','','','(212) 555-5555','Howard','','False','False','','','Jones','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','','','Buyer');
INSERT INTO "Contact" VALUES(3,'','','','','','False','info@salesforce.com','','','(212) 555-5555','Leanne','','False','False','','','Tomlin','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','','','VP Customer Support');
INSERT INTO "Contact" VALUES(4,'','','','','Marc R. Benioff is chairman and CEO of salesforce.com. He founded the company in March 1999 with the idea to create an information utility that would make traditional enterprise software technology and business models obsolete. A veteran of 25 years in the software industry, he is now regarded as a pioneer of "The End Of Software," demonstrating how on-demand applications can replace traditional software to deliver immediate benefit at reduced risk. In May 2003, Benioff was appointed by President George W. Bush as co-chair of the President''s Information Technology Advisory Committee (PITAC), a bi-partisan organization of business leaders and academics charged to advise The President on how to maintain the United States'' preeminent position in information technology.','False','info@salesforce.com','','','(415) 901-7040','Marc','','False','False','','','Benioff','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','','San Francisco','USA','','','','','94105','CA','The Landmark @ One Market, Suite 300','(415) 901-7000','','Mr.','Executive Officer');
INSERT INTO "Contact" VALUES(5,'','','','','','False','info@salesforce.com','','','','Geoff','','False','False','','','Minor','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','Toronto','Canada','','','','','L4B 1Y3','Ontario','150 Chestnut Street','(415) 555-1212','','','President');
INSERT INTO "Contact" VALUES(6,'','','','','Carole White is looking at moving forward with our products and will act as the champion for us.','False','info@salesforce.com','','','','Carole','','False','False','','','White','Employee Referral','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','','','','','','','(415) 555-1212','','','VP Sales');
INSERT INTO "Contact" VALUES(7,'','','','','','False','info@salesforce.com','','','(555) 555-1212','Jon','','False','False','','','Amos','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','','','','','','','(905) 555-1212','','','Sales Manager');
INSERT INTO "Contact" VALUES(8,'','','','','','False','edy@yahoo.com','','','(212) 555-5555','Edward','','False','False','','','Stamos','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','','Mr.','Manager');
INSERT INTO "Contact" VALUES(9,'','','','','','False','howdy@yahoo.com','','','(212) 555-5555','Howard','','False','False','','','Jones','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','','Mr.','Buyer');
INSERT INTO "Contact" VALUES(10,'','','','','','False','leny@yahoo.com','','','(212) 555-5555','Leanne','','False','False','','','Tomlin','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','','','','','','','(212) 555-5555','','Ms.','VP Customer Support');
CREATE TABLE "Location" (
	id INTEGER NOT NULL, 
	"LocationType" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Pricebook2" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
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
INSERT INTO "Product2" VALUES(9,'Premium brand of laptop','','','None','True','Expo Laptop 002','EXPO 00246','','');
INSERT INTO "Product2" VALUES(10,'','','','Generator','True','Battery Aura','P22','','');
INSERT INTO "Product2" VALUES(11,'A premium range of alternators','','','Generator','True','Magna Alternator','AL-000AL01','','');
CREATE TABLE "RecordAlert" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EffectiveDate" VARCHAR(255), 
	"Severity" VARCHAR(255), 
	"SnoozeUntilDate" VARCHAR(255), 
	"SourceSystemIdentifier" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"ValidUntilDate" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RecordAlert" VALUES(1,'True','','2023-07-21T19:00:00.000+0000','Info','','','Asset installed','2025-07-21T19:00:00.000+0000');
INSERT INTO "RecordAlert" VALUES(2,'True','','2023-07-21T19:00:00.000+0000','Info','','','Upcoming 01 month service','2024-07-31T19:00:00.000+0000');
INSERT INTO "RecordAlert" VALUES(3,'True','','2023-07-21T19:00:00.000+0000','Warning','','','Laptop servicing due','2024-07-31T19:00:00.000+0000');
INSERT INTO "RecordAlert" VALUES(4,'True','','2022-07-20T19:00:00.000+0000','Info','','','Laptop software installed','2026-07-31T19:00:00.000+0000');
INSERT INTO "RecordAlert" VALUES(5,'True','','2023-04-18T19:00:00.000+0000','Info','','','Asset has been installed','2024-07-31T19:00:00.000+0000');
INSERT INTO "RecordAlert" VALUES(6,'True','','2023-04-18T19:00:00.000+0000','Info','','','Asset repair has been completed','2024-07-31T19:00:00.000+0000');
INSERT INTO "RecordAlert" VALUES(7,'True','','2023-07-23T19:00:00.000+0000','Info','','','Asset monthly servicing completed','2024-07-31T19:00:00.000+0000');
INSERT INTO "RecordAlert" VALUES(8,'False','','2023-07-23T19:00:00.000+0000','Warning','','','Asset warranty renewal required','2024-07-31T19:00:00.000+0000');
INSERT INTO "RecordAlert" VALUES(9,'True','','2023-07-23T19:00:00.000+0000','Warning','','','Warranty Renewal Required','2024-07-31T19:00:00.000+0000');
CREATE TABLE "UnitOfMeasure" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"UnitCode" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "UnitOfMeasure" VALUES(1,'','Hours','Time','Hour');
CREATE TABLE "WarrantyTerm" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Code" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EffectiveStartDate" VARCHAR(255), 
	"ExchangeType" VARCHAR(255), 
	"Exclusions" VARCHAR(255), 
	"ExpensesCovered" VARCHAR(255), 
	"ExpensesCoveredDuration" VARCHAR(255), 
	"ExpensesCoveredUnitOfTime" VARCHAR(255), 
	"LaborCovered" VARCHAR(255), 
	"LaborCoveredDuration" VARCHAR(255), 
	"LaborCoveredUnitOfTime" VARCHAR(255), 
	"PartsCovered" VARCHAR(255), 
	"PartsCoveredDuration" VARCHAR(255), 
	"PartsCoveredUnitOfTime" VARCHAR(255), 
	"IsTransferable" VARCHAR(255), 
	"UsageCovered" VARCHAR(255), 
	"WarrantyDuration" VARCHAR(255), 
	"WarrantyTermName" VARCHAR(255), 
	"WarrantyType" VARCHAR(255), 
	"WarrantyUnitOfTime" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"UsageCoveredUomId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WarrantyTerm" VALUES(1,'True','','','Purchase Date','','','50.0','24','Months','50.0','24','Months','70.0','24','Months','False','','24','24 Month Limited Battery Coverage','Extended Warranty','Months','','');
INSERT INTO "WarrantyTerm" VALUES(2,'True','','','Purchase Date','','','50.0','24','Months','75.0','24','Months','50.0','24','Months','False','7000','24','24 Months LIMITED Alternator','Standard','Months','','1');
INSERT INTO "WarrantyTerm" VALUES(3,'True','','','Purchase Date','','','100.0','36','Months','100.0','30','Months','100.0','36','Months','False','5000','36','36 LIMITED Premium Engine','Basic Warranty','Months','','1');
INSERT INTO "WarrantyTerm" VALUES(4,'True','','','Install Date','','','100.0','6','Months','100.0','6','Months','50.0','6','Weeks','False','','6','1YR LIMITED Battery','Standard','Months','','');
INSERT INTO "WarrantyTerm" VALUES(5,'True','','24 Month Warranty covering Labor, Parts and Expenses coverage as defined.','Purchase Date','','','50.0','1','Years','75.0','1','Years','40.0','6','Months','False','','1','Extended Warranty Term','Standard','Years','','');
INSERT INTO "WarrantyTerm" VALUES(6,'True','','','Install Date','','','60.0','12','Months','100.0','12','Months','50.0','6','Months','False','','12','36 LIMITED Electric Motor','Extended Warranty','Months','','');
INSERT INTO "WarrantyTerm" VALUES(7,'True','','','Install Date','','','40.0','1','Years','50.0','1','Years','30.0','1','Years','False','','1','Marine Generator Repair Warranty','Extended Warranty','Years','','');
INSERT INTO "WarrantyTerm" VALUES(8,'True','','','Install Date','','','','','','','','','','','','False','','24','Mini Air Conditioner Std. Warranty','Standard','Weeks','','');
INSERT INTO "WarrantyTerm" VALUES(9,'True','','','Install Date','','','100.0','24','Months','100.0','24','Months','100.0','24','Months','False','','24','Acme Compressor Standard Warranty','Standard','Months','','');
INSERT INTO "WarrantyTerm" VALUES(10,'True','','','Install Date','','','100.0','12','Months','100.0','12','Months','100.0','12','Months','False','','12','Marine Generator Standard Warranty','Standard','Months','','');
COMMIT;
