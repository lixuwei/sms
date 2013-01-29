/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2013/1/24 17:53:23                           */
/*==============================================================*/


DROP TABLE T_COMPANY CASCADE CONSTRAINTS;

DROP TABLE T_COMPANY_GAME CASCADE CONSTRAINTS;

DROP TABLE T_GAME CASCADE CONSTRAINTS;

DROP TABLE T_GAME_MENU CASCADE CONSTRAINTS;

DROP TABLE T_MENU CASCADE CONSTRAINTS;

DROP TABLE T_SERVER CASCADE CONSTRAINTS;

DROP TABLE T_USER CASCADE CONSTRAINTS;

DROP TABLE T_USER_COMPANY CASCADE CONSTRAINTS;

DROP TABLE T_USER_GAME CASCADE CONSTRAINTS;

DROP TABLE T_USER_MENU CASCADE CONSTRAINTS;

/*==============================================================*/
/* Table: T_COMPANY                                             */
/*==============================================================*/
CREATE TABLE T_COMPANY  (
   COMPANY_ID           NUMBER                          NOT NULL,
   COMPANY_NAME         VARCHAR2(50),
   COMPANY_STATE        CHAR(1)                        DEFAULT '1',
   CREATE_TIME          TIMESTAMP                      DEFAULT SYSDATE,
   CONSTRAINT PK_T_COMPANY PRIMARY KEY (COMPANY_ID)
);
CREATE SEQUENCE SEQ_COMPANY
MINVALUE 1
NOMAXVALUE
START WITH 1
INCREMENT BY 1
NOCACHE;
/*==============================================================*/
/* Table: T_COMPANY_GAME                                        */
/*==============================================================*/
CREATE TABLE T_COMPANY_GAME  (
   ID                   NUMBER,
   COMPANY_ID           NUMBER,
   GAME_ID              NUMBER
);

/*==============================================================*/
/* Table: T_GAME                                                */
/*==============================================================*/
CREATE TABLE T_GAME  (
   GAME_ID              NUMBER                          NOT NULL,
   GAME_NAME            VARCHAR2(10),
   CONSTRAINT PK_T_GAME PRIMARY KEY (GAME_ID)
);

/*==============================================================*/
/* Table: T_GAME_MENU                                           */
/*==============================================================*/
CREATE TABLE T_GAME_MENU  (
   ID                   NUMBER                          NOT NULL,
   GAME_ID              NUMBER,
   MENU_ID              NUMBER,
   CONSTRAINT PK_T_GAME_MENU PRIMARY KEY (ID)
);

COMMENT ON TABLE T_GAME_MENU IS
'多对多关系';

/*==============================================================*/
/* Table: T_MENU                                                */
/*==============================================================*/
CREATE TABLE T_MENU  (
   MENU_ID              NUMBER                          NOT NULL,
   MENU_NAME            VARCHAR2(10),
   MENU_URL             VARCHAR2(50),
   PARENT_MENU_ID       NUMBER,
   MENU_STATE           CHAR(1)                        DEFAULT '1',
   CREATE_TIME          TIMESTAMP                      DEFAULT SYSDATE,
   CONSTRAINT PK_T_MENU PRIMARY KEY (MENU_ID)
);

/*==============================================================*/
/* Table: T_SERVER                                              */
/*==============================================================*/
CREATE TABLE T_SERVER  (
   SERVER_ID            NUMBER                          NOT NULL,
   SERVER_NAME          VARCHAR2(10),
   SERVER_SEQUENCE      NUMBER,
   COMPANY_ID           NUMBER,
   GAME_ID              NUMBER,
   SERVER_STATE         CHAR(1)                        DEFAULT '1',
   CREATE_TIME          TIMESTAMP                      DEFAULT SYSDATE,
   CONSTRAINT PK_T_SERVER PRIMARY KEY (SERVER_ID)
);

/*==============================================================*/
/* Table: T_USER                                                */
/*==============================================================*/
CREATE TABLE T_USER  (
   USER_ID              NUMBER                          NOT NULL,
   USER_ACCOUNT         VARCHAR2(20),
   USER_PASSWD          VARCHAR2(20),
   USER_TYPE            CHAR(1),
   USER_STATE           CHAR(1)                        DEFAULT '1',
   CREATE_TIME          TIMESTAMP                      DEFAULT SYSDATE,
   CONSTRAINT PK_T_USER PRIMARY KEY (USER_ID)
);

COMMENT ON COLUMN T_USER.USER_TYPE IS
'1-内部公司人员，2-运营公司人员';

/*==============================================================*/
/* Table: T_USER_COMPANY                                        */
/*==============================================================*/
CREATE TABLE T_USER_COMPANY  (
   ID                   NUMBER                          NOT NULL,
   USER_ID              NUMBER,
   COMPANY_ID           NUMBER,
   CONSTRAINT PK_T_USER_COMPANY PRIMARY KEY (ID)
);

/*==============================================================*/
/* Table: T_USER_GAME                                           */
/*==============================================================*/
CREATE TABLE T_USER_GAME  (
   ID                   NUMBER                          NOT NULL,
   USER_ID              NUMBER,
   GAME_ID              NUMBER,
   CONSTRAINT PK_T_USER_GAME PRIMARY KEY (ID)
);

/*==============================================================*/
/* Table: T_USER_MENU                                           */
/*==============================================================*/
CREATE TABLE T_USER_MENU  (
   ID                   NUMBER                          NOT NULL,
   USER_ID              NUMBER,
   MENU_ID              NUMBER,
   CONSTRAINT PK_T_USER_MENU PRIMARY KEY (ID)
);

