BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"AccountNumber" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Rating" VARCHAR(255), 
	"Site" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"Sic" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"TickerSymbol" VARCHAR(255), 
	"Website" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'','(212) 555-5555','Acme Partners','','(212) 555-5555','','','','Customer','','New York','USA','','','','NY','10 Main Rd.','31349','','','Manufacturing','','New York','USA','','','','NY','10 Main Rd.','31349','','','','http://www.acmepartner.com','');
INSERT INTO "Account" VALUES(2,'','(212) 555-5555','Acme','','(212) 555-5555','','','','Prospect','100000000.0','New York','USA','','','','NY','10 Main Rd.','31349','','680','Manufacturing','','New York','USA','','','','NY','10 Main Rd.','31349','','','','','');
INSERT INTO "Account" VALUES(3,'Founded in March 1999, salesforce.com (http://www.salesforce.com) builds and delivers customer relationship management (CRM) applications as scalable online services. The salesforce.com product suite - Team Edition, Professional Edition, Enterprise Edition, Wireless Edition and Offline Edition - gives companies of all sizes a complete 360-degree view of the customer. The company''s award-winning CRM solutions provide integrated online sales force automation, customer service and support management, and marketing automation applications to help companies meet the complex challenges of global customer communication. Salesforce.com has received considerable recognition in the industry, including Editors'' Choice and two Five-Star ratings from PC Magazine, two Deploy Awards from InfoWorld, Red Herring 100, Upside Hot 100, Investor''s Choice Award from Enterprise Outlook, Editors'' Choice from TMCLabs, Top 10 CRM Implementation from Aberdeen Group, and InfoWorld''s 2001 CRM Technology of the Year. Founded in 1999, salesforce.com is headquartered in San Francisco, with offices in Europe and Asia.','(415) 901-7040','salesforce.com','','(415) 901-7000','','','','Customer','','San Francisco','USA','','','','CA','The Landmark @ One Market, Suite 300','94105','','','Technology','','San Francisco','USA','','','','CA','The Landmark @ One Market, Suite 300','94105','','','','http://www.salesforce.com','');
INSERT INTO "Account" VALUES(4,'GBM is the worldwide leader in technology news and information on the Web and the producer of the longest-running and farthest-reaching television shows about technology. GBM''s network of sites combines breakthrough interactive technology with engaging content and design and is consistently ranked as the Internet''s leading content network in terms of both audience size and revenue, serving millions of users each day. The company''s television programming is broadcast by the USA Network and the Sci-Fi Channel to more than 70 million households and is syndicated to broadcast television stations in the nation''s top 120 markets, including the top 10 markets.','','Global Media','','(905) 555-1212','','','','Prospect','','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','14668','Media','','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','','','','');
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
	"Warranty_Status__c" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Asset" VALUES(1,'','','','','2023-04-18','False','False','','','Marine Generator - MGX750XYMFG','','','2023-04-18','1.0','MGX750XYMFG','','Installed','','','','9');
INSERT INTO "Asset" VALUES(2,'','','','','2023-04-20','False','False','','','Acme Compressor - MGX751XYMFG','','3250.0','2023-04-20','1.0','MGX751XYMFG','','Installed','','','Active','9');
INSERT INTO "Asset" VALUES(3,'','','','','','False','False','','','Expo Laptop 002 - GREY','','1750.0','2022-07-18','1.0','EXPO6781','','Purchased','','','Active','7');
INSERT INTO "Asset" VALUES(4,'','','','','2023-07-21','False','False','','','Magna Alternator - ALTX001','','3750.0','2023-07-10','1.0','ALX750XYMFG','','Installed','','','Active','6');
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
	"AssetId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Case" VALUES(1,'','1');
INSERT INTO "Case" VALUES(2,'','1');
INSERT INTO "Case" VALUES(3,'','7');
INSERT INTO "Case" VALUES(4,'4','6');
INSERT INTO "Case" VALUES(5,'2','3');
INSERT INTO "Case" VALUES(6,'3','7');
INSERT INTO "Case" VALUES(7,'3','7');
INSERT INTO "Case" VALUES(8,'1','9');
INSERT INTO "Case" VALUES(9,'1','9');
INSERT INTO "Case" VALUES(10,'4','6');
CREATE TABLE "Claim" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ClaimReason" VARCHAR(255), 
	"ClaimReasonType" VARCHAR(255), 
	"ClaimType" VARCHAR(255), 
	"FinalizedDate" VARCHAR(255), 
	"FnolChannel" VARCHAR(255), 
	"Severity" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Summary" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"RelatedClaimId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Claim" VALUES(1,'CL-100197','Battery was faulty','','Warranty Claim','2023-03-16T19:00:00.000+0000','Phone','High','Approved','','4','');
INSERT INTO "Claim" VALUES(2,'CL-00022','Wrong claim request','','Warranty Claim','','Phone','Medium','Rejected','','4','');
INSERT INTO "Claim" VALUES(3,'CL-00020','Replace Valve','','Warranty Claim','','Phone','Medium','Draft','','1','');
INSERT INTO "Claim" VALUES(4,'CL-00010','Generator Engine Issue','','Warranty Claim','','Phone','Medium','Under Review','','1','');
CREATE TABLE "ClaimCoverage" (
	id INTEGER NOT NULL, 
	"CoverageType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"AssetWarrantyId" VARCHAR(255), 
	"ClaimId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ClaimCoverage" VALUES(1,'Standard Warranty','','Replace Valve','','5','3');
INSERT INTO "ClaimCoverage" VALUES(2,'Standard Warranty','','Cylinder Misfire','','8','4');
INSERT INTO "ClaimCoverage" VALUES(3,'Standard Warranty','','Battery Replacement','','7','2');
INSERT INTO "ClaimCoverage" VALUES(4,'Standard Warranty','','Laptop Battery Replacement','Approved','4','1');
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
	"PriceBookEntryId" VARCHAR(255), 
	"ProductRelatedMaterialId" VARCHAR(255), 
	"ReplacementPartId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(1,'20.0','Labor','50.0','','','Tech Charges','1','Approved','1','4','','','10');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(2,'0.0','Replaced Part','150.0','','','CPN 00201 - Battery Replacement','1','Rejected','','3','','','10');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(3,'70.0','Replaced Part','100.0','','','CPN 00186 Laptop Battery Replacement','1','Approved','1','4','','','10');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(4,'0.0','Replaced Part','40.0','','','CPN 00195 Replace Value Part','1','None','','1','','','4');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(5,'40.0','Replaced Part','350.0','','','CPN 00198 Replace Cylinder Part','5','Approved','3','2','','','');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(6,'40.0','Expense','100.0','','','CPN 00197 Technician Visit','','Approved','2','2','','','');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(7,'0.0','Labor','40.0','','','CPN 00194 Replace Valve labor charge','1','None','5','1','','','');
INSERT INTO "ClaimCoveragePaymentDetail" VALUES(8,'40.0','Labor','100.0','','','CPN 00196 Replace Cylinder Labor','5','Approved','7','2','','','');
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
	"ClaimParticipantId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ClaimItem" VALUES(1,'','','','','','','','','','','','Battery needs replacement','2023-07-22T19:00:00.000+0000','CLI-00021','2023-07-22T19:00:00.000+0000','4','2','');
INSERT INTO "ClaimItem" VALUES(2,'','','','','','','','','','','','','2023-02-20T20:00:00.000+0000','CLI-000207','2023-03-01T20:00:00.000+0000','3','1','');
INSERT INTO "ClaimItem" VALUES(3,'Hours','750','','','','','','','','','','','2023-04-18T19:00:00.000+0000','CLI-000214','2023-04-20T19:00:00.000+0000','1','4','');
INSERT INTO "ClaimItem" VALUES(4,'Hours','750','','','','','','','','','','','2023-05-25T19:00:00.000+0000','CLI-000210','2023-05-28T19:00:00.000+0000','2','3','');
CREATE TABLE "ClaimParticipant" (
	id INTEGER NOT NULL, 
	"Roles" VARCHAR(255), 
	"ClaimId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ClaimParticipant" VALUES(1,'Claimant','1');
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
INSERT INTO "CodeSet" VALUES(1,'C22 - Replace Battery','','eebbcbe3813c6c3429b0afecdbece77c-720109614','','','True','False','False','Replace Battery','','','');
INSERT INTO "CodeSet" VALUES(2,'C04 - Technician Visit Charges','','337da89b077d05d957f5ca937d205c00-954932305','','','True','False','False','Technician Visit Charges','','','');
INSERT INTO "CodeSet" VALUES(3,'C03 - Replace Part','','6a72c1b955f9265e2bba00cc1e92f2802051883581','','','True','False','False','Replace Part','','','');
INSERT INTO "CodeSet" VALUES(4,'C12 - Clogged air filters','','fbbcf80886eff14ca3e577f5be47ab461494928968','','','True','False','False','Clogged air filters','','','');
INSERT INTO "CodeSet" VALUES(5,'C05 - Replace Valve','','5b817efcf81a5979f89e6d369e90e2342139354058','','','True','False','False','Replace Valve','','','');
INSERT INTO "CodeSet" VALUES(6,'C01- Cylinder Misfire','','fcdb444dd2025f4a377d8ced22b148c51446736425','','','True','False','False','Cylinder Misfire','','','');
INSERT INTO "CodeSet" VALUES(7,'C92 - Replace Cylinder','','4f1ee93f1b31f01d1748e508f1ca78b0-501354096','','','True','False','False','Replace Cylinder','','','');
INSERT INTO "CodeSet" VALUES(8,'C08- Engine Oil Change','','92d6f14294e958c7beec4d54b4d05366714129323','','','True','False','False','Engine Oil Change','','','');
INSERT INTO "CodeSet" VALUES(9,'C06 - Repair Fuel Tank','','2e45f7c768e98ea949f0765a119cc909-2034434','','','True','False','False','Repair Fuel Tank','','','');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"AssistantName" VARCHAR(255), 
	"AssistantPhone" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"Department" VARCHAR(255), 
	"DoNotCall" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"EmailBouncedDate" VARCHAR(255), 
	"EmailBouncedReason" VARCHAR(255), 
	"HasOptedOutOfEmail" VARCHAR(255), 
	"HasOptedOutOfFax" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"GenderIdentity" VARCHAR(255), 
	"HomePhone" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"LeadSource" VARCHAR(255), 
	"MailingCity" VARCHAR(255), 
	"MailingCountry" VARCHAR(255), 
	"MailingGeocodeAccuracy" VARCHAR(255), 
	"MailingLatitude" VARCHAR(255), 
	"MailingLongitude" VARCHAR(255), 
	"MailingState" VARCHAR(255), 
	"MailingStreet" VARCHAR(255), 
	"MailingPostalCode" VARCHAR(255), 
	"MobilePhone" VARCHAR(255), 
	"OtherCity" VARCHAR(255), 
	"OtherCountry" VARCHAR(255), 
	"OtherGeocodeAccuracy" VARCHAR(255), 
	"OtherLatitude" VARCHAR(255), 
	"OtherLongitude" VARCHAR(255), 
	"OtherPhone" VARCHAR(255), 
	"OtherState" VARCHAR(255), 
	"OtherStreet" VARCHAR(255), 
	"OtherPostalCode" VARCHAR(255), 
	"Pronouns" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"Title" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"IndividualId" VARCHAR(255), 
	"ReportsToId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'','','','(212) 555-5555','(212) 555-5555','','','','False','info@salesforce.com','','','False','False','Edward','','','Stamos','','New York City','USA','','','','NY','10 Main Rd.','31349','','New York City','USA','','','','','NY','10 Main Rd.','31349','','','President and CEO','2','','');
INSERT INTO "Contact" VALUES(2,'','','','(212) 555-5555','(212) 555-5555','','','','False','info@salesforce.com','','','False','False','Howard','','','Jones','','New York','USA','','','','NY','10 Main Rd.','31349','','','','','','','','','','','','','Buyer','2','','');
INSERT INTO "Contact" VALUES(3,'','','','(212) 555-5555','(212) 555-5555','','','','False','info@salesforce.com','','','False','False','Leanne','','','Tomlin','','New York','USA','','','','NY','10 Main Rd.','31349','','','','','','','','','','','','','VP Customer Support','2','','');
INSERT INTO "Contact" VALUES(4,'','','','(415) 901-7040','(415) 901-7000','Marc R. Benioff is chairman and CEO of salesforce.com. He founded the company in March 1999 with the idea to create an information utility that would make traditional enterprise software technology and business models obsolete. A veteran of 25 years in the software industry, he is now regarded as a pioneer of "The End Of Software," demonstrating how on-demand applications can replace traditional software to deliver immediate benefit at reduced risk. In May 2003, Benioff was appointed by President George W. Bush as co-chair of the President''s Information Technology Advisory Committee (PITAC), a bi-partisan organization of business leaders and academics charged to advise The President on how to maintain the United States'' preeminent position in information technology.','','','False','info@salesforce.com','','','False','False','Marc','','','Benioff','','San Francisco','USA','','','','CA','The Landmark @ One Market, Suite 300','94105','','San Francisco','USA','','','','','CA','The Landmark @ One Market, Suite 300','94105','','Mr.','Executive Officer','3','','');
INSERT INTO "Contact" VALUES(5,'','','','','(415) 555-1212','','','','False','info@salesforce.com','','','False','False','Geoff','','','Minor','','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','Toronto','Canada','','','','','Ontario','150 Chestnut Street','L4B 1Y3','','','President','4','','');
INSERT INTO "Contact" VALUES(6,'','','','','(415) 555-1212','Carole White is looking at moving forward with our products and will act as the champion for us.','','','False','info@salesforce.com','','','False','False','Carole','','','White','Employee Referral','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','','','','','','','','','','','','VP Sales','4','','5');
INSERT INTO "Contact" VALUES(7,'','','','(555) 555-1212','(905) 555-1212','','','','False','info@salesforce.com','','','False','False','Jon','','','Amos','','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','','','','','','','','','','','','Sales Manager','4','','6');
INSERT INTO "Contact" VALUES(8,'','','','(212) 555-5555','(212) 555-5555','','','','False','edy@yahoo.com','','','False','False','Edward','','','Stamos','','New York','USA','','','','NY','10 Main Rd.','31349','','','','','','','','','','','','Mr.','Manager','1','','');
INSERT INTO "Contact" VALUES(9,'','','','(212) 555-5555','(212) 555-5555','','','','False','howdy@yahoo.com','','','False','False','Howard','','','Jones','','New York','USA','','','','NY','10 Main Rd.','31349','','','','','','','','','','','','Mr.','Buyer','1','','');
INSERT INTO "Contact" VALUES(10,'','','','(212) 555-5555','(212) 555-5555','','','','False','leny@yahoo.com','','','False','False','Leanne','','','Tomlin','','New York','USA','','','','NY','10 Main Rd.','31349','','','','','','','','','','','','Ms.','VP Customer Support','1','','');
CREATE TABLE "Individual" (
	id INTEGER NOT NULL, 
	"LastName" VARCHAR(255), 
	PRIMARY KEY (id)
);
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
CREATE TABLE "PricebookEntry" (
	id INTEGER NOT NULL, 
	"UnitPrice" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"Product2Id" VARCHAR(255), 
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
CREATE TABLE "ProductFaultCode" (
	id INTEGER NOT NULL, 
	"ProductFamily" VARCHAR(255), 
	"FaultCodeId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductFaultCode" VALUES(1,'Compressor','4','8');
INSERT INTO "ProductFaultCode" VALUES(2,'','5','4');
CREATE TABLE "ProductLaborCode" (
	id INTEGER NOT NULL, 
	"EstimatedEffort" VARCHAR(255), 
	"ProductFamily" VARCHAR(255), 
	"LaborCodeId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductLaborCode" VALUES(1,'22.0','Generator','6','3');
CREATE TABLE "ProductRelatedMaterial" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ProductWarrantyTerm" (
	id INTEGER NOT NULL, 
	"CoveredProductFamily" VARCHAR(255), 
	"CoveredProductId" VARCHAR(255), 
	"WarrantyTermId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductWarrantyTerm" VALUES(1,'','3','10');
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
INSERT INTO "WarrantyTerm" VALUES(1,'','','Purchase Date','','','50.0','24','Months','True','False','50.0','24','Months','70.0','24','Months','','24','24 Month Limited Battery Coverage','Extended Warranty','Months');
INSERT INTO "WarrantyTerm" VALUES(2,'','','Purchase Date','','','50.0','24','Months','True','False','75.0','24','Months','50.0','24','Months','7000','24','24 Months LIMITED Alternator','Standard','Months');
INSERT INTO "WarrantyTerm" VALUES(3,'','','Purchase Date','','','100.0','36','Months','True','False','100.0','30','Months','100.0','36','Months','5000','36','36 LIMITED Premium Engine','Basic Warranty','Months');
INSERT INTO "WarrantyTerm" VALUES(4,'','','Install Date','','','100.0','6','Months','True','False','100.0','6','Months','50.0','6','Weeks','','6','1YR LIMITED Battery','Standard','Months');
INSERT INTO "WarrantyTerm" VALUES(5,'','24 Month Warranty covering Labor, Parts and Expenses coverage as defined.','Purchase Date','','','50.0','1','Years','True','False','75.0','1','Years','40.0','6','Months','','1','Extended Warranty Term','Standard','Years');
INSERT INTO "WarrantyTerm" VALUES(6,'','','Install Date','','','60.0','12','Months','True','False','100.0','12','Months','50.0','6','Months','','12','36 LIMITED Electric Motor','Extended Warranty','Months');
INSERT INTO "WarrantyTerm" VALUES(7,'','','Install Date','','','40.0','1','Years','True','False','50.0','1','Years','30.0','1','Years','','1','Marine Generator Repair Warranty','Extended Warranty','Years');
INSERT INTO "WarrantyTerm" VALUES(8,'','','Install Date','','','','','','True','False','','','','','','','','24','Mini Air Conditioner Std. Warranty','Standard','Weeks');
INSERT INTO "WarrantyTerm" VALUES(9,'','','Install Date','','','100.0','24','Months','True','False','100.0','24','Months','100.0','24','Months','','24','Acme Compressor Standard Warranty','Standard','Months');
INSERT INTO "WarrantyTerm" VALUES(10,'','','Install Date','','','100.0','12','Months','True','False','100.0','12','Months','100.0','12','Months','','12','Marine Generator Standard Warranty','Standard','Months');
CREATE TABLE "WarrantyTermCoverage" (
	id INTEGER NOT NULL, 
	"ProductPartId" VARCHAR(255), 
	"WarrantyTermId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WarrantyTermCoverage" VALUES(1,'6','10');
INSERT INTO "WarrantyTermCoverage" VALUES(2,'','10');
INSERT INTO "WarrantyTermCoverage" VALUES(3,'','10');
INSERT INTO "WarrantyTermCoverage" VALUES(4,'7','10');
INSERT INTO "WarrantyTermCoverage" VALUES(5,'2','10');
INSERT INTO "WarrantyTermCoverage" VALUES(6,'','10');
INSERT INTO "WarrantyTermCoverage" VALUES(7,'5','8');
INSERT INTO "WarrantyTermCoverage" VALUES(8,'','10');
CREATE TABLE "WorkOrder" (
	id INTEGER NOT NULL, 
	"AssetId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WorkOrder" VALUES(1,'4');
INSERT INTO "WorkOrder" VALUES(2,'3');
INSERT INTO "WorkOrder" VALUES(3,'4');
INSERT INTO "WorkOrder" VALUES(4,'3');
INSERT INTO "WorkOrder" VALUES(5,'4');
INSERT INTO "WorkOrder" VALUES(6,'1');
INSERT INTO "WorkOrder" VALUES(7,'1');
INSERT INTO "WorkOrder" VALUES(8,'1');
INSERT INTO "WorkOrder" VALUES(9,'2');
INSERT INTO "WorkOrder" VALUES(10,'2');
INSERT INTO "WorkOrder" VALUES(11,'2');
COMMIT;
