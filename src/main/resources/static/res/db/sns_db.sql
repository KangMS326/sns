CREATE DATABASE DB_SNS;
USE DB_SNS;

CREATE TABLE USER(

	M_NO			INT				AUTO_INCREMENT,
	M_ID			VARCHAR(30)		NOT NULL		UNIQUE,
	M_PW			VARCHAR(200)	NOT NULL,
	M_NAME			VARCHAR(20)		NOT NULL,
	M_NICNAME		VARCHAR(20)		NOT NULL,
	M_PROFILE_PIC	VARCHAR(200),
	M_PHONE			VARCHAR(20),
	M_MAIL			VARCHAR(50),
	M_BIRTH			VARCHAR(12),
    M_AUTH			CHAR(1)			DEFAULT 1, -- 일반 회원 1, 탈퇴 회원 0이나 9..
	M_GENDER		CHAR(1)			NOT NULL,
	M_VISIBILITY	INT				DEFAULT 1, -- INT로 변경
	M_REG_DATE		DATETIME		DEFAULT NOW(),
	M_MOD_DATE		DATETIME		DEFAULT NOW(),
	PRIMARY KEY(M_NO)
    
);

CREATE TABLE ADMIN(
	A_NO			INT	AUTO_INCREMENT, 
	A_ID			VARCHAR(30)		NOT NULL,
	A_PW			VARCHAR(200)	NOT NULL,
	A_NAME			VARCHAR(20)		NOT NULL,
	A_AUTH			CHAR(1)			DEFAULT 1, -- CHAR로 변경
	A_PROFILE_PIC	VARCHAR(200),	
	A_PHONE			VARCHAR(20),	
	A_MAIL			VARCHAR(50),	
	A_BIRTH			VARCHAR(12),
	A_GENDER		CHAR(1)			NOT NULL,
	A_REG_DATE		DATETIME		DEFAULT NOW(),
	A_MOD_DATE		DATETIME		DEFAULT NOW(),
	PRIMARY KEY(A_NO)
);

CREATE TABLE POST(
	P_NO				INT	AUTO_INCREMENT, 
	M_NO				INT					NOT NULL,
	P_CONTENT			VARCHAR(500)		NOT NULL,
	P_LIKE_CNT			INT	NOT NULL		DEFAULT 0,
	L_NO				INT,
	P_COMMENT_CNT		INT					DEFAULT 0,
	C_NO				INT					NOT NULL,
	P_VISIBILITY		INT					DEFAULT 1, -- INT로 변경
	P_IMGS				VARCHAR(200),	
	P_MP4				VARCHAR(200),	
	P_REG_DATE			DATETIME			DEFAULT NOW(),
	P_MOD_DATE			DATETIME			DEFAULT NOW(),
	PRIMARY KEY(P_NO)
);

CREATE TABLE COMMENT(
	C_NO		INT				AUTO_INCREMENT,
	P_NO		INT				NOT NULL,
	M_NO		INT				NOT NULL, 
	C_COMMENT	VARCHAR(250)	NOT NULL,
	L_NO		INT, 
	L_NO_CNT	INT				DEFAULT 0,
	C_REG_DATE	DATETIME		DEFAULT NOW(),
	C_MOD_DATE	DATETIME		DEFAULT NOW(),

	PRIMARY KEY(C_NO)
);

CREATE TABLE CHILD_COMMENT(
	CC_NO		INT					AUTO_INCREMENT, 
	C_NO		INT					NOT NULL, 
	M_NO		INT					NOT NULL, 
	CC_COMMENT	VARCHAR(250)		NOT NULL,
	L_NO		INT,
	L_NO_CNT	INT					DEFAULT 0, 
	CC_REG_DATE	DATETIME			DEFAULT NOW(),
	CC_MOD_DATE	DATETIME			DEFAULT NOW(),

	PRIMARY KEY(CC_NO)
);

CREATE TABLE FOLLOW(
	F_NO			INT			AUTO_INCREMENT,
	FOLLOWER_CNT	INT			NOT NULL 		DEFAULT 0,
	FOLLOWER_ID		VARCHAR(30)	NOT NULL,
	M_NO			INT			NOT NULL,
	F_REG_DATE		DATETIME	DEFAULT NOW(),

	PRIMARY KEY(F_NO)
);

CREATE TABLE LIKES(
	L_NO			INT				AUTO_INCREMENT,
	L_CONTENT_TYPE	INT				NOT NULL,
	P_NO			INT				NOT NULL,
	C_NO			INT,
	M_NO			INT				NOT NULL,
	L_REG_DATE		DATETIME		DEFAULT NOW(),

	PRIMARY KEY(L_NO)
);

CREATE TABLE BOOKMARK(
	B_NO		INT			AUTO_INCREMENT,
	P_NO		INT			NOT NULL, 
	M_NO		INT			NOT NULL, 
	B_REG_DATE	DATETIME	DEFAULT NOW(),

	PRIMARY KEY(B_NO)
);

CREATE TABLE CHAT_ROOM(
	CR_NO		INT			AUTO_INCREMENT,
	M_NO1		INT			NOT NULL,
	M_NO2		INT			NOT NULL,
	CR_REG_DATE	DATETIME	DEFAULT NOW(),

	PRIMARY KEY(CR_NO)
);

CREATE TABLE CHAT(
	CH_NO			INT				AUTO_INCREMENT,
	CH_SENDER_NO	INT				NOT NULL,
	CH_RECEIVER_NO	INT				NOT NULL,
	CH_CONTENT		VARCHAR(100)	NOT NULL,
	CH_REG_DATE		DATETIME		DEFAULT NOW(),

	PRIMARY KEY(CH_NO)
);

CREATE TABLE HASH_TAG(
	H_NO		INT				AUTO_INCREMENT,
	P_NO		INT				NULL NULL,
	M_NO		INT				NOT NULL,
	H_CONTENT	VARCHAR(250)	NOT NULL,
	H_REG_DATE	DATETIME		DEFAULT NOW(),
	H_MOD_DATE	DATETIME		DEFAULT NOW(),

	PRIMARY KEY(H_NO)
);

SELECT * FROM USER;
SELECT * FROM ADMIN;
SELECT * FROM POST;
SELECT * FROM COMMENT;
SELECT * FROM CHILD_COMMENT;
SELECT * FROM FOLLOW;
SELECT * FROM LIKES;
SELECT * FROM BOOKMARK;
SELECT * FROM CHAT_ROOM;
SELECT * FROM CHAT;
SELECT * FROM HASH_TAG;