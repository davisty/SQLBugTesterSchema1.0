-- Tyler Davis U2780-9501
--  Drop group lines 1-35 --
DROP ROLE bugManager;
DROP ROLE bugLead;
DROP ROLE bugDeveloper;
DROP ROLE bugTester;
DROP ROLE bugUser;
DROP ROLE bugAdmin;

DROP TABLE incidentTracking;
DROP TABLE userDetails;
DROP TABLE historyTracking;

DROP USER "aApple@admins.com";
DROP USER "bBanana@admins.com";
DROP USER "cCucumber@admins.com";

DROP USER "aApple@manager.com";
DROP USER "bBanana@manager.com";
DROP USER "cCucumber@manager.com";

DROP USER "aApple@lead.com";
DROP USER "bBanana@lead.com";
DROP USER "cCucumber@lead.com";

DROP USER "aApple@developer.com";
DROP USER "bBanana@developer.com";
DROP USER "cCucumber@developer.com";

DROP USER "aApple@tester.com";
DROP USER "bBanana@tester.com";
DROP USER "cCucumber@tester.com";

DROP USER "aApple@user.com";
DROP USER "bBanana@user.com";
DROP USER "cCucumber@user.com";

-- Create roles for various uesrs
CREATE ROLE bugManager;
CREATE ROLE bugLead;
CREATE ROLE bugDeveloper;
CREATE ROLE bugTester;
CREATE ROLE bugUser;
CREATE ROLE bugAdmin;

-- Create user logins
CREATE USER "aApple@admins.com" IDENTIFIED BY apple DEFAULT TABLESPACE "SYSTEM";
CREATE USER "bBanana@admins.com" IDENTIFIED BY banana DEFAULT TABLESPACE "SYSTEM";
CREATE USER "cCucumber@admins.com" IDENTIFIED BY cucumber DEFAULT TABLESPACE "SYSTEM";

CREATE USER "aApple@manager.com" IDENTIFIED BY apple DEFAULT TABLESPACE "SYSTEM";
CREATE USER "bBanana@manager.com" IDENTIFIED BY banana DEFAULT TABLESPACE "SYSTEM";
CREATE USER "cCucumber@manager.com" IDENTIFIED BY cucumber DEFAULT TABLESPACE "SYSTEM";

CREATE USER "aApple@lead.com" IDENTIFIED BY apple DEFAULT TABLESPACE "SYSTEM";
CREATE USER "bBanana@lead.com" IDENTIFIED BY banana DEFAULT TABLESPACE "SYSTEM";
CREATE USER "cCucumber@lead.com" IDENTIFIED BY cucumber DEFAULT TABLESPACE "SYSTEM";

CREATE USER "aApple@developer.com" IDENTIFIED BY apple DEFAULT TABLESPACE "SYSTEM";
CREATE USER "bBanana@developer.com" IDENTIFIED BY banana DEFAULT TABLESPACE "SYSTEM";
CREATE USER "cCucumber@developer.com" IDENTIFIED BY cucumber DEFAULT TABLESPACE "SYSTEM";

CREATE USER "aApple@tester.com" IDENTIFIED BY apple DEFAULT TABLESPACE "SYSTEM";
CREATE USER "bBanana@tester.com" IDENTIFIED BY banana DEFAULT TABLESPACE "SYSTEM";
CREATE USER "cCucumber@tester.com" IDENTIFIED BY cucumber DEFAULT TABLESPACE "SYSTEM";

CREATE USER "aApple@user.com" IDENTIFIED BY apple DEFAULT TABLESPACE "SYSTEM";
CREATE USER "bBanana@user.com" IDENTIFIED BY banana DEFAULT TABLESPACE "SYSTEM";
CREATE USER "cCucumber@user.com" IDENTIFIED BY cucumber DEFAULT TABLESPACE "SYSTEM";

-- Grant rank to later determine permissions
GRANT bugAdmin TO "aApple@admins.com";
GRANT bugAdmin TO "bBanana@admins.com";
GRANT bugAdmin TO "cCucumber@admins.com";

GRANT bugManager TO "aApple@manager.com";
GRANT bugManager TO "bBanana@manager.com";
GRANT bugManager TO "cCucumber@manager.com";

GRANT bugLead TO "aApple@lead.com";
GRANT bugLead TO "bBanana@lead.com";
GRANT bugLead TO "cCucumber@lead.com";

GRANT bugDeveloper TO "aApple@developer.com";
GRANT bugDeveloper TO "bBanana@developer.com";
GRANT bugDeveloper TO "cCucumber@developer.com";

GRANT bugTester TO "aApple@tester.com";
GRANT bugTester TO "bBanana@tester.com";
GRANT bugTester TO "cCucumber@tester.com";

GRANT bugUser TO "aApple@user.com";
GRANT bugUser TO "bBanana@user.com";
GRANT bugUser TO "cCucumber@user.com";

-- Set users default roles according to their rank
ALTER USER "aApple@admins.com" DEFAULT ROLE bugAdmin;
ALTER USER "bBanana@admins.com" DEFAULT ROLE bugAdmin;
ALTER USER "cCucumber@admins.com" DEFAULT ROLE bugAdmin;

ALTER USER "aApple@manager.com" DEFAULT ROLE bugManager;
ALTER USER "bBanana@manager.com" DEFAULT ROLE bugManager;
ALTER USER "cCucumber@manager.com" DEFAULT ROLE bugManager;

ALTER USER "aApple@lead.com" DEFAULT ROLE bugLead;
ALTER USER "bBanana@lead.com" DEFAULT ROLE bugLead;
ALTER USER "cCucumber@lead.com" DEFAULT ROLE bugLead;

ALTER USER "aApple@developer.com" DEFAULT ROLE bugDeveloper;
ALTER USER "bBanana@developer.com" DEFAULT ROLE bugDeveloper;
ALTER USER "cCucumber@developer.com" DEFAULT ROLE bugDeveloper;

ALTER USER "aApple@tester.com" DEFAULT ROLE bugTester;
ALTER USER "bBanana@tester.com" DEFAULT ROLE bugTester;
ALTER USER "cCucumber@tester.com" DEFAULT ROLE bugTester;

ALTER USER "aApple@user.com" DEFAULT ROLE bugUser;
ALTER USER "bBanana@user.com" DEFAULT ROLE bugUser;
ALTER USER "cCucumber@user.com" DEFAULT ROLE bugUser;

--  Create table to store user information
CREATE TABLE userDetails(
  userID varchar(2) PRIMARY KEY,
  userName varchar(32),
  userPass varchar(32),
  userRole varchar(32)
);

-- Admin Level Accounts
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('1','aApple@admins.com','apple','bugAdmin');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('2','bBanana@admins.com','banana','bugAdmin');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('3','cCucumber@admins.com','cucumber','bugAdmin');

-- Manager Level Accounts
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('4','aApple@manager.com','apple','bugManager');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('5','bBanana@manager.com','banana','bugManager');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('6','cCucumber@manager.com','cucumber','bugManager');

-- Lead Level Accounts
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('7','aApple@lead.com','apple','bugLead');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('8','bBanana@lead.com','banana','bugLead');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('9','cCucumber@lead.com','cucumber','bugLead');


-- Developer Level Accounts
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('10','aApple@developer.com','apple','bugDeveloper');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('11','bBanana@developer.com','banana','bugDeveloper');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('12','cCucumber@developer.com','cucumber','bugDeveloper');


-- Tester Level Accounts
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('13','aApple@tester.com','apple','bugTester');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('14','bBanana@tester.com','banana','bugTester');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('15','cCucumber@tester.com','cucumber','bugTester');

-- Bug User Accounts
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('16','aApple@user.com','apple','bugUser');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('17','bBanana@user.com','banana','bugUser');
INSERT INTO userDetails (userID,userName,userPass,userRole) VALUES ('18','cCucumber@user.com','cucumber','bugUser');

/*-- Privilege requirements to be ran after all tables have been created
GRANT ALL PRIVILEGES TO bugAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON bugTickets TO bugManager;
GRANT SELECT, UPDATE, DELETE ON bugTickets TO bugLead;
GRANT SELECT, UPDATE ON bugTickets TO bugDeveloper;
GRANT SELECT, UPDATE ON bugTickets TO bugTester;
GRANT SELECT ON bugTickets TO bugUser;

GRANT SELECT, INSERT, UPDATE, DELETE ON bugTickets TO bugManager;
GRANT SELECT, UPDATE, DELETE ON bugTickets TO bugLead;
GRANT SELECT, UPDATE ON bugTickets TO bugDeveloper;
GRANT SELECT, UPDATE ON bugTickets TO bugTester;
GRANT SELECT ON bugTickets TO bugUser;

GRANT SELECT, INSERT, UPDATE, DELETE ON bugTicketsUpdate TO bugManager;
GRANT SELECT, UPDATE, DELETE ON bugTicketsUpdate TO bugLead;
GRANT SELECT, UPDATE ON bugTicketsUpdate TO bugDeveloper;
GRANT SELECT, UPDATE ON bugTicketsUpdate TO bugTester;
GRANT SELECT ON bugTicketsUpdate TO bugUser;

GRANT SELECT, INSERT, UPDATE, DELETE ON incidentTracking TO bugManager;
GRANT SELECT, UPDATE, DELETE ON incidentTracking TO bugLead;
GRANT SELECT, UPDATE ON incidentTracking TO bugDeveloper;
GRANT SELECT, UPDATE ON incidentTracking TO bugTester;
GRANT SELECT ON incidentTracking TO bugUser;  /*