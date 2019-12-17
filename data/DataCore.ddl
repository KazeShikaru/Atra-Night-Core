DROP TABLE Account;
DROP TABLE GameData;

CREATE TABLE Account (
    AccountId           INT IDENTITY,
    username            VARCHAR(40),
    passcode            VARCHAR(40),
    email               VARCHAR(50),
    WingzCoin			INT,
    PRIMARY KEY (AccountId)
);

CREATE TABLE GameData (
	AccountId INT,
	
	
	FOREIGN KEY (AccountId) REFERENCES Account(AccountId)
        ON UPDATE CASCADE ON DELETE CASCADE 
);

