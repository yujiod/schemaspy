CREATE SCHEMA SCHEMAMETAIT AUTHORIZATION SA;
SET SCHEMA SCHEMAMETAIT;
COMMENT ON SCHEMA SCHEMAMETAIT IS 'Set by script';
CREATE TABLE COUNTRY(
  countryId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(255)
);
CREATE TABLE COMPANY(
  companyId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  countryId INT,
  NAME VARCHAR(255),
  FOREIGN KEY (companyId) REFERENCES COUNTRY (countryId)
);
CREATE TABLE ACCOUNT(
  accountID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  companyId INT,
  NAME VARCHAR(255),
  FOREIGN KEY (companyId) REFERENCES COMPANY (companyId)
);
CREATE TABLE AGENT(
  agentid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  accountId INT,
  companyId INT,
  NAME VARCHAR(255)
);
COMMENT ON TABLE SCHEMAMETAIT.ACCOUNT IS 'Set by script';
COMMENT ON COLUMN SCHEMAMETAIT.ACCOUNT.NAME IS 'Set by script';