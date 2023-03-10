DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS PEC;
DROP TABLE IF EXISTS MESSAGES;
CREATE TABLE USERS(ID INT PRIMARY KEY AUTO_INCREMENT, 
LAST_NAME VARCHAR(255), 
FIRST_NAME VARCHAR(255),
EMAIL VARCHAR(255),
IDARUBA VARCHAR(255),
PRIVATE_KEY VARCHAR(255));
CREATE TABLE PEC(ID INT PRIMARY KEY AUTO_INCREMENT, 
NAME VARCHAR(255) UNIQUE, 
USER_ID INT);
CREATE TABLE MESSAGES(ID INT PRIMARY KEY AUTO_INCREMENT, 
SENDER VARCHAR(255),
SUBJECT VARCHAR(255), 
TEXT VARCHAR(255), 
PRIORITY VARCHAR(255),
ATTACHMENT VARCHAR(255),
PEC_ID INT);
CREATE TABLE ATTACHMENT(ID INT PRIMARY KEY AUTO_INCREMENT, 
URL_ATTACHMENT VARCHAR(255),
IS_SIGNED BIT, 
USER_ID INT);