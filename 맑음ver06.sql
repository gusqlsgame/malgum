--------------------------------------------------------
--  ������ ������ - ������-1��-02-2019   
--------------------------------------------------------
DROP SEQUENCE "EVENTIMGS_SEQ";
DROP SEQUENCE "EVENTS_SEQ";
DROP SEQUENCE "ITEMS_SEQ";
DROP SEQUENCE "ITEMWARNS_SEQ";
DROP SEQUENCE "LIKES_SEQ";
DROP SEQUENCE "PROBLEMS_SEQ";
DROP SEQUENCE "PROBLEMTYPES_SEQ";
DROP SEQUENCE "REPLIES_SEQ";
DROP SEQUENCE "REVIEWCONTENTS_SEQ";
DROP SEQUENCE "REVIEWS_SEQ";
DROP SEQUENCE "SECONDS_SEQ";
DROP SEQUENCE "USERS_SEQ";
DROP SEQUENCE "WARNS_SEQ";
DROP TABLE "EVENTIMGS";
DROP TABLE "EVENTS";
DROP TABLE "ITEMWARNS";
DROP TABLE "LIKES";
DROP TABLE "PROBLEMTYPES";
DROP TABLE "REPLIES";
DROP TABLE "REVIEWCONTENTS";
DROP TABLE "REVIEWS";
DROP TABLE "ITEMS";
DROP TABLE "USERS";
DROP FUNCTION "CUSTOM_AUTH";
DROP FUNCTION "CUSTOM_HASH";
--------------------------------------------------------
--  DDL for Sequence EVENTIMGS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EVENTIMGS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EVENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EVENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ITEMS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ITEMS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ITEMWARNS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ITEMWARNS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LIKES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LIKES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROBLEMS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROBLEMS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROBLEMTYPES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROBLEMTYPES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPLIES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REPLIES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEWCONTENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEWCONTENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEWS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEWS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SECONDS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SECONDS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence WARNS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "WARNS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table EVENTIMGS
--------------------------------------------------------

  CREATE TABLE "EVENTIMGS" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"IMG" VARCHAR2(400 BYTE), 
	"EVENT_NO" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENTS
--------------------------------------------------------

  CREATE TABLE "EVENTS" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"TITLE" VARCHAR2(400 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"EMAIL" VARCHAR2(400 BYTE), 
	"USER_NO" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ITEMS
--------------------------------------------------------

  CREATE TABLE "ITEMS" 
   (	"NO" NUMBER(9,0), 
	"USER_NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"PRICE" NUMBER(9,0), 
	"VOLUME" VARCHAR2(400 BYTE), 
	"AGE" CHAR(1 BYTE), 
	"GENDER" CHAR(1 BYTE), 
	"SKIN" CHAR(1 BYTE), 
	"CONTENT" VARCHAR2(400 BYTE), 
	"DETAIL_IMG" VARCHAR2(400 BYTE), 
	"TYPE" CHAR(1 BYTE), 
	"IMG" VARCHAR2(400 BYTE), 
	"REGDATE" TIMESTAMP (6), 
	"FIRST" CHAR(1 BYTE), 
	"SECOND_NO" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ITEMWARNS
--------------------------------------------------------

  CREATE TABLE "ITEMWARNS" 
   (	"NO" NUMBER(9,0), 
	"WARN_NO" NUMBER(9,0), 
	"ITEM_NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LIKES
--------------------------------------------------------

  CREATE TABLE "LIKES" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"USER_NO" NUMBER(9,0), 
	"TYPE" CHAR(1 BYTE), 
	"ITEM_NO" NUMBER(9,0), 
	"REVIEW_NO" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROBLEMS
--------------------------------------------------------

  CREATE TABLE "PROBLEMS" 
   (	"NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROBLEMTYPES
--------------------------------------------------------

  CREATE TABLE "PROBLEMTYPES" 
   (	"NO" NUMBER(9,0), 
	"PROB_NO" NUMBER(9,0), 
	"USER_NO" NUMBER(9,0), 
	"ITEM_NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REPLIES
--------------------------------------------------------

  CREATE TABLE "REPLIES" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"REVIEW_NO" NUMBER(9,0), 
	"USER_NO" NUMBER(9,0), 
	"CONTENT" VARCHAR2(400 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEWCONTENTS
--------------------------------------------------------

  CREATE TABLE "REVIEWCONTENTS" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"IMG" VARCHAR2(400 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"REVIEW_NO" NUMBER(9,0), 
	"SEQ" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEWS
--------------------------------------------------------

  CREATE TABLE "REVIEWS" 
   (	"NO" NUMBER(9,0), 
	"ITEM_NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"REGDATE" TIMESTAMP (6), 
	"GIFT" CHAR(1 BYTE), 
	"SCORE" NUMBER(9,0), 
	"USER_NO" NUMBER(9,0), 
	"TYPE" CHAR(1 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SECONDS
--------------------------------------------------------

  CREATE TABLE "SECONDS" 
   (	"NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"TYPE" CHAR(1 BYTE), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"NO" NUMBER(9,0), 
	"ID" VARCHAR2(400 BYTE), 
	"PWD" VARCHAR2(400 BYTE), 
	"NAME" VARCHAR2(400 BYTE), 
	"GENDER" CHAR(1 BYTE), 
	"BIRTH" DATE, 
	"SKIN" CHAR(1 BYTE), 
	"TYPE" CHAR(1 BYTE), 
	"COMPANY" VARCHAR2(400 BYTE), 
	"BRAND" VARCHAR2(400 BYTE), 
	"TEL" VARCHAR2(400 BYTE), 
	"LINK" VARCHAR2(400 BYTE), 
	"IMG" VARCHAR2(400 BYTE), 
	"BUISNESS_IMG" VARCHAR2(400 BYTE), 
	"BUISNESS_NUM" VARCHAR2(12 BYTE), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WARNS
--------------------------------------------------------

  CREATE TABLE "WARNS" 
   (	"NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"CONTENT" VARCHAR2(400 BYTE), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into EVENTIMGS
SET DEFINE OFF;
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (701,to_timestamp('18/12/30 17:09:22.562000000','RR/MM/DD HH24:MI:SSXFF'),'event_701.jpg',701);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (801,to_timestamp('18/12/30 16:58:52.650000000','RR/MM/DD HH24:MI:SSXFF'),'innisfree801.jpg',801);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (901,to_timestamp('18/12/30 17:05:06.374000000','RR/MM/DD HH24:MI:SSXFF'),'esteelauderevent901.jpg',901);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (702,to_timestamp('18/12/30 17:09:22.564000000','RR/MM/DD HH24:MI:SSXFF'),'event_702.jpg',701);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (703,to_timestamp('18/12/30 17:09:22.566000000','RR/MM/DD HH24:MI:SSXFF'),'event_703.jpg',701);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (401,to_timestamp('18/12/30 17:10:47.637000000','RR/MM/DD HH24:MI:SSXFF'),'tbs_event_401.jpg',401);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (501,to_timestamp('18/12/30 17:11:35.668000000','RR/MM/DD HH24:MI:SSXFF'),'naturerepublick501.jpg',501);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (300,to_timestamp('18/12/30 02:56:24.510000000','RR/MM/DD HH24:MI:SSXFF'),'event_300.png',300);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (301,to_timestamp('18/12/30 02:59:31.564000000','RR/MM/DD HH24:MI:SSXFF'),'event_301.png',300);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1001,to_timestamp('18/12/30 17:41:17.878000000','RR/MM/DD HH24:MI:SSXFF'),'event1.jpg',1001);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1002,to_timestamp('18/12/30 17:41:17.882000000','RR/MM/DD HH24:MI:SSXFF'),'event2.jpg',1002);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1003,to_timestamp('18/12/30 17:41:17.885000000','RR/MM/DD HH24:MI:SSXFF'),'event3.jpg',1003);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1004,to_timestamp('18/12/30 17:41:17.889000000','RR/MM/DD HH24:MI:SSXFF'),'event4.jpg',1004);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1005,to_timestamp('18/12/30 17:41:17.892000000','RR/MM/DD HH24:MI:SSXFF'),'event5.jpg',1005);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1006,to_timestamp('18/12/30 17:41:17.894000000','RR/MM/DD HH24:MI:SSXFF'),'event6.jpg',1006);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1007,to_timestamp('18/12/30 17:41:17.896000000','RR/MM/DD HH24:MI:SSXFF'),'event7.jpg',1007);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1008,to_timestamp('18/12/30 17:41:17.898000000','RR/MM/DD HH24:MI:SSXFF'),'event8.jpg',1008);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1009,to_timestamp('18/12/30 17:41:17.900000000','RR/MM/DD HH24:MI:SSXFF'),'event9.jpg',1009);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1010,to_timestamp('18/12/30 17:41:17.903000000','RR/MM/DD HH24:MI:SSXFF'),'event10.jpg',1010);
REM INSERTING into EVENTS
SET DEFINE OFF;
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (701,to_timestamp('18/12/30 17:09:22.559000000','RR/MM/DD HH24:MI:SSXFF'),'��� Golden Pig�� �帮�� 2019 �ູ ��� �̺�Ʈ',to_date('19/01/01','RR/MM/DD'),to_date('19/01/11','RR/MM/DD'),'nono123@naver.com',705);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (801,to_timestamp('18/12/30 16:58:52.648000000','RR/MM/DD HH24:MI:SSXFF'),'��Ŭ&������ ���̾� ��� ��� #������ EVENT',to_date('18/12/20','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'innisfree@innisfree.com',805);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (901,to_timestamp('18/12/30 17:05:06.371000000','RR/MM/DD HH24:MI:SSXFF'),'���ĸ� �ܵ�����',to_date('18/12/27','RR/MM/DD'),to_date('19/01/27','RR/MM/DD'),'user_support@kr.estee.com',905);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (401,to_timestamp('18/12/30 17:10:47.635000000','RR/MM/DD HH24:MI:SSXFF'),'���ٵ� ���� ���� ���ΰ��� �Ǿ����.',to_date('18/12/24','RR/MM/DD'),to_date('19/01/03','RR/MM/DD'),'webmaster@thebodyshop.co.kr',405);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (501,to_timestamp('18/12/30 17:11:35.666000000','RR/MM/DD HH24:MI:SSXFF'),'2018 Ȧ�����̷� ���� ���θ��',to_date('18/11/27','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'nature1230@naver.com',505);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (300,to_timestamp('18/12/30 02:54:31.998000000','RR/MM/DD HH24:MI:SSXFF'),'��ȭ������ ���ϴ�',to_date('18/12/03','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'),'event@sulwhasoo.com',304);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1001,to_timestamp('18/12/30 17:40:55.332000000','RR/MM/DD HH24:MI:SSXFF'),'�������佺Ƽ��',to_date('18/12/25','RR/MM/DD'),to_date('19/01/30','RR/MM/DD'),'event1@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1002,to_timestamp('18/12/30 17:40:55.337000000','RR/MM/DD HH24:MI:SSXFF'),'ȭ��ǰ�� ����',to_date('18/11/25','RR/MM/DD'),to_date('19/02/10','RR/MM/DD'),'event2@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1003,to_timestamp('18/12/30 17:40:55.340000000','RR/MM/DD HH24:MI:SSXFF'),'���, �̰� ��ߵ�',to_date('17/11/25','RR/MM/DD'),to_date('18/01/10','RR/MM/DD'),'event3@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1004,to_timestamp('18/12/30 17:40:55.343000000','RR/MM/DD HH24:MI:SSXFF'),'ȭ���',to_date('18/01/25','RR/MM/DD'),to_date('18/12/25','RR/MM/DD'),'event4@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1005,to_timestamp('18/12/30 17:40:55.346000000','RR/MM/DD HH24:MI:SSXFF'),'�����ϰ� ��������',to_date('19/01/25','RR/MM/DD'),to_date('19/02/20','RR/MM/DD'),'event5@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1006,to_timestamp('18/12/30 17:40:55.348000000','RR/MM/DD HH24:MI:SSXFF'),'������ �̰ɷ�!',to_date('18/10/25','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'event6@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1007,to_timestamp('18/12/30 17:40:55.350000000','RR/MM/DD HH24:MI:SSXFF'),'���ظ��� �ִ����� �̺�Ʈ',to_date('19/01/01','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'),'event7@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1008,to_timestamp('18/12/30 17:40:55.352000000','RR/MM/DD HH24:MI:SSXFF'),'�ȱ��?',to_date('18/07/09','RR/MM/DD'),to_date('18/09/30','RR/MM/DD'),'event8@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1009,to_timestamp('18/12/30 17:40:55.356000000','RR/MM/DD HH24:MI:SSXFF'),'10����� 90����� �̺�Ʈ',to_date('18/11/09','RR/MM/DD'),to_date('19/02/28','RR/MM/DD'),'event9@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1010,to_timestamp('18/12/30 17:40:55.359000000','RR/MM/DD HH24:MI:SSXFF'),'�ҷ��� ȭ��ǰ �̺�Ʈ',to_date('18/10/01','RR/MM/DD'),to_date('18/10/31','RR/MM/DD'),'event10@naver.com',1005);
REM INSERTING into ITEMS
SET DEFINE OFF;
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (704,705,'����Ż ������ ������ ���̽� SPF15/PA+',55000,'30ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_704.jpg','F','hera_704.jpg',to_timestamp('18/12/30 17:08:28.861000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (705,705,'�÷���-�� ���� ����',75000,'15ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_705.jpg','F','hera_705.jpg',to_timestamp('18/12/30 17:08:28.864000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (706,705,'�� ��ũ����',37000,'3.5g','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_706.jpg','F','hera_706.jpg',to_timestamp('18/12/30 17:08:28.867000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (707,705,'���� ������ �÷�',22000,'10ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_707.jpg','F','hera_707.jpg',to_timestamp('18/12/30 17:08:28.870000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (708,705,'��� ���� ��Ǿ�� �ٵ� �μ�',50000,'250 ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_708.jpg','F','hera_708.jpg',to_timestamp('18/12/30 17:08:28.872000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (709,705,'���̽� �����̴� ����',48000,'10g','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_709.jpg','F','hera_709.jpg',to_timestamp('18/12/30 17:08:28.874000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (710,705,'�ͼ��ų� �� �� ��Ǿ',85000,'30ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_710.jpg','F','hera_710.jpg',to_timestamp('18/12/30 17:08:28.877000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (401,405,'�긮Ƽ�� ���� ��Ż-����Ʈ �� ��� 250ML',24000,'250ml','E','W','E','������, �����ǵ��, ��ĥ�۷缼��-20, ������-26-���׽�-26, �۸�����, ������-40���̵��������Ƽ��ĳ���Ϳ���, ���ÿ�ź�� ��','tbs401.jpg','F','tbs401.jpg',to_timestamp('18/12/30 17:10:47.572000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (402,405,'��Ų ���潺 �ڿܼ������� 60ML',29900,'60ml','E','W','B','������, �������ڿ�, ��ĥ��Ǹ���ýų�����Ʈ, �׿���ƿ�۶����ݵ���Ÿ�뿡��Ʈ, ��ƿ����õ����ϸ�ź, ��ƿ���۶�����, ���ġ��, �۸�����','tbs402.jpg','F','tbs402.jpg',to_timestamp('18/12/30 17:10:47.576000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (403,405,'ƼƮ�� ��Ų Ŭ��� ���̼� ���� 250ML',17000,'250ml','E','W','E','������, �۸�����, �ҵ��췹��������Ʈ, ��ī�̵������ʺ�Ÿ��, ������-120��ĥ�۷��ڿ�����ø�����Ʈ, ������-40���̵��������Ƽ��ĳ���Ϳ���','tbs403.jpg','F','tbs403.jpg',to_timestamp('18/12/30 17:10:47.580000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (404,405,'��ī �� & �˷ο� ī�� ����Ʈ ���̺� ���� �� �� �� 160ML',21000,'160ml','E','M','E','������, �����ǵ��, �ϸ𴽾�ũ�����ϵ��ĥŸ�췹��Ʈ/��������������, ������-26-���׽�-26, ������-40���̵��������Ƽ��ĳ���Ϳ���, �������ʷ��۶�����','tbs404.jpg','F','tbs404.jpg',to_timestamp('18/12/30 17:10:47.582000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (405,405,'��ӽ� ���� ���� ���� ���� ũ�� 20ML',36000,'20ml','E','W','E','������, �۸�����, �������, ���ġ��, ī������/ī����Ʈ���۸������̵�, �������ڿ�, �̼Ҽ�ƿ���׾Ʒ���Ʈ, �̼ҳ���̼ҳ볪�뿡��Ʈ, ��ƿ���۶�����','tbs405.jpg','F','tbs405.jpg',to_timestamp('18/12/30 17:10:47.585000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (406,405,'�� ���� ���� - ����� 10ML',7500,'10ml','E','W','E','�Ǹ��ھ�����, �����۸�����-3����ν�, ��, ���, ����ν�, ���̵��������Ƽ��ĳ���Ϳ���, [����] �Ǹ�ī, �����丱�Ƽ�����Ʈ, �ղɾ�����','tbs406.jpg','F','tbs406.jpg',to_timestamp('18/12/30 17:10:47.588000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (407,405,'��ũ �׷������ķ� �ڵ� ũ�� 30ML',7000,'30ml','E','W','E','������, �۸�����, ī������/ī����Ʈ���۸������̵�, ����Ʈ�Ƹ�����, �ҵ�������ũ������Ʈ, ��ƿ���ڿ�, ��Ÿ��������ƿ���׾Ʒ���Ʈ, ���ÿ�ź��','tbs407.jpg','F','tbs407.jpg',to_timestamp('18/12/30 17:10:47.590000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (408,405,'���� ���� �� ���� �޵��׶�Ͼ� �� ��Ʈ ��ũ�� 350ML',46000,'350ml','E','W','E','��ĥ����ȹ�����Ʈ, ����Ʈ, �ҵ�Ŭ�ζ��̵�, �عٶ�⾾����, [����] �Ǹ�ī, �������, �þ����, ���, ���ÿ�ź��, ��ǽų���, �����츮�Ƿ���Ʈ, �������','tbs408.jpg','F','tbs408.jpg',to_timestamp('18/12/30 17:10:47.594000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (409,405,'��뷮 ���� ��Ķ�� �ɾ� ���� 400ML',17000,'400ml','E','W','E','������, �ҵ��췹��������Ʈ, ��ī�̵������ʺ�Ÿ��, �Ƿ���þƹ�, ���׳�, �����Ҹ�����Ʈ20, �ҵ㺥������Ʈ, �����ʷ��۶�����, �ҵ�Ŭ�ζ��̵�','tbs409.jpg','F','tbs409.jpg',to_timestamp('18/12/30 17:10:47.597000000','RR/MM/DD HH24:MI:SSXFF'),'E',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (410,405,'ȭ��Ʈ �ӽ�ũ �ķ��׷��� �ٵ� �̽�Ʈ 100ML',21000,'100ml','E','M','E','��ź��, ������, �������ڿ�, ���, ��ƿ��Ҹ�ĥ�����ǿ���, ���̵�Ͻ��̼����3-����Ŭ����ī�����˵����̵�, t-��ƿ���ڿ�, ��ǽų���, ������','tbs410.jpg','F','tbs410.jpg',to_timestamp('18/12/30 17:10:47.599000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (510,505,'���� �� ���� ���� �ڷ� - �׷����� �ĸ���',14900,'110ml','E','W','E','�ڸ����⹰�� ��Ÿ��C�� ǳ���Ͽ� �Ǻθ� �ɾ����ݴϴ�.','naturerepublic510.gif','F','naturerepublic510.gif',to_timestamp('18/12/30 17:11:35.592000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (509,505,'���� ��Ƽ ���ν� ��Ǫ',15000,'300ml','E','W','E','���������⹰�� �� ���÷����� �����Ǿ� ���ǿ� ��� ���� ���޿� ������ �ݴϴ�. Ż�� ��ȭ ��ɼ� ��Ǫ�Դϴ�. ��ź�� ������ ���� ���� ������ ������ �־� ���� �ɾ �����ϴ�.','naturerepublic509.gif','F','naturerepublic509.gif',to_timestamp('18/12/30 17:11:35.597000000','RR/MM/DD HH24:MI:SSXFF'),'E',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (508,505,'���� �� ���� ���� ��-������ �˷ο�',20000,'1l','E','W','E','�˷ο� 5 complex�� �����Ǿ� �����ϰ� �ǰ��� �Ǻη� ���ٴµ� ������ �ݴϴ�.','naturerepublic508.gif','F','naturerepublic508.gif',to_timestamp('18/12/30 17:11:35.600000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (507,505,'[2018] �÷� �� ����ó ���� �ɾ� ��Ʈ ž ��Ʈ',2500,'8ml','E','W','E','Ư�̻��� �����ϴ�.','naturerepublic507.gif','F','naturerepublic507.gif',to_timestamp('18/12/30 17:11:35.602000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (506,505,'���� ���� ���� 01 ��ũ ����',6900,'10g','E','W','E','Ư�̻��� �����ϴ�.','naturerepublic506.gif','F','naturerepublic506.gif',to_timestamp('18/12/30 17:11:35.604000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (505,505,'���״��� ��Ű�� ���̺�ο� ����ī�� 03 ������',7500,'3.5g','E','W','E','Ư�̻��� �����ϴ�.','naturerepublic505.gif','F','naturerepublic505.gif',to_timestamp('18/12/30 17:11:35.606000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (504,505,'���ι潺 ���ٽú� ���� �Ŀ�̼� SPF30 PA+++',22000,'30ml','E','W','E','3Effect Ampoule Complex �� ���� ������ �� 66% �����ϰ� ������ ��� �̳׶� ���͸� ����Ͽ� ����, �۹�, ���� �ɾ��� ��Ų �ɾ� ȿ���� �ο� �մϴ�.','naturerepublic504.gif','F','naturerepublic504.gif',to_timestamp('18/12/30 17:11:35.608000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (503,505,'������Ʈ ���� �̼��� Ŭ��¡ ���� �� ����_ī����',14000,'250ml','E','W','E','�̼��� ������ ����ũ�� �ܿ����� ���󹰸��� �۾Ƴ����ְ� ��꼺 Ŭ������ ���� ��ȣ�� �ջ� ���� ���� ���� �����Ͽ� ������ �뷯���� ���߾� �ݴϴ�.','naturerepublic503.gif','F','naturerepublic503.gif',to_timestamp('18/12/30 17:11:35.611000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (502,505,'�׸����� ���ϵ� Ű�� �� ��� SPF50+ PA++++',23000,'12ml','K','W','E','�������������⹰�� õ�� ���� �������� �����ϰ� �ǰ��� �Ǻη� �����ݴϴ�. ���ڶ�ƽþ�Ƽī ������ ��Ǯ ���� ���⹰�� ����ī�һ��̵�, �ƽþ�Ƽ�ڻ��̵�, ����ī�ľ־���, �ƽþ�ƽ�־��尡 ��� ��� �Ǻθ� ��ȣ�ϰ� �Ǻ� ��� ���� �ɾ ������ �ݴϴ�.','naturerepublic502.gif','F','naturerepublic502.gif',to_timestamp('18/12/30 17:11:35.614000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (501,505,'�� ���� ���� ���˷�л� ���� ���',18000,'400ml','E','W','E','���˷�л��� �Ǻο� ������ �����մϴ�. pH 5~6�� ��꼺���� �Ǻ� pH �뷱�� �ɾ ������ �˴ϴ�. �ڿ� ���� ������ ���ϰ� ���� ���ϵ��� �������� �ΰ��� �Ǻο��� ����ϰ� ����� �� �ֽ��ϴ�.','naturerepublic501.gif','F','naturerepublic501.gif',to_timestamp('18/12/30 17:11:35.617000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (300,304,'����������',90000,'60ml','A','a','E','��� �� ���� ����, �ξ����, �ڱص��� Ʈ�����̻��� �ִ� ��� ����� �����Ͻð� �Ǻΰ� �����ǿ��� ����Ͻʽÿ�.','deltail_300.png',null,'product300.png',to_timestamp('18/12/30 01:28:07.452000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (301,304,'ź��ũ��',105000,'75ml','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_301.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (302,304,'���� ������ �Ŀ�̼� SPF25 PA++',58000,'30ml','A','M','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_302.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (303,304,'���̺�ο� ������',20000,'0.3g','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_303.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (304,304,'������ ������ ��ƽ_ ����ģ�� ������ ����ƽ 3g',40000,'3g','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_304.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (305,304,'����� ����',60000,'10g','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_305.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (306,304,'��������� SPF50+/PA+++',65000,'15g','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_306.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (307,304,'������ UV ��������',40000,'50ml','E','M','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_307.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (308,304,'��ȭ���� ��� ��������',40000,'15ml','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_308.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (309,304,'��������Ŭ��¡��',30000,'150ml','E','M','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_309.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1001,1005,'���̽� ���ϸ� �����Ʈ�� ��ũ�� ��',10000,'150ml','E','W','C','���� û�� ö�� ���� ���� �鱹���� ��ȿ�Ͽ� ���� �������� ���̽� ���ϸ� �����Ʈ�� ����','detail1001.jpg','F','item1001.jpg',to_timestamp('18/12/30 17:38:27.540000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1002,1005,'��� �� ���� Ŭ��¡��',8000,'150ml','E','W','D','���Ͼ� ��ó�� ����, ���� ��ó�� ����! �� �Ǻθ� ������ ���� Ŭ��¡ ����','detail1002.jpg','F','item1002.jpg',to_timestamp('18/12/30 17:38:27.543000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1003,1005,'���� ȭ��Ʈ ����Ʈ ���� Ŭ��¡ ����',12000,'300ml','E','W','C','�� �ް� �Ǻ� ����! �Ǻ� ������ ���ְ� ��� ��� ������ ��� ���� Ŭ��¡','detail1003.jpg','F','item1003.jpg',to_timestamp('18/12/30 17:38:27.546000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1004,1005,'���ö�� ��� ����ƽ SPF50+PA++++',15000,'20g','E','W','C','���ö�� ������ �ǰ����� ���� ���� �� ����!','detail1004.jpg','F','item1004.jpg',to_timestamp('18/12/30 17:38:27.551000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1005,1005,'�˷ο� �� �� Ŭ���� ��ƽSPF50+PA+++',13000,'20g','E','W','C','��ġ�� ���а�, ����� ������! ���� ��𼭳� �� ����� ��� ���� �˷ο� ���ɾ�','detail1005.jpg','F','item1005.jpg',to_timestamp('18/12/30 17:38:27.553000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1006,1005,'�˷ο� ���͸� �� ��ũ��',25000,'200g','E','W','C','������ ��ģ �Ǻθ� �ǰ��ϰ� ������ �˷ο� �� ������!','detail1006.jpg','F','item1006.jpg',to_timestamp('18/12/30 17:38:27.557000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1007,1005,'���к��� ������ ����',24000,'60ml','E','W','C','ǳ���� ������ �ӱ��� ���� ���̺����� ���� ���� �������� �����ϰ� �����ϰ� �������Ǵ� ����� ����','detail1007.jpg','F','item1007.jpg',to_timestamp('18/12/30 17:38:27.560000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1008,1005,'�ο���� ���������� �θ�ġ ������',30000,'50ml','E','W','C','���� ���ϰ� ������ ���� ������������ ä���ִ� �� ������ źź �Ǻ� ����','detail1008.jpg','F','item1008.jpg',to_timestamp('18/12/30 17:38:27.564000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1009,1005,'�ο���� ������ ���� ũ��',10000,'150ml','E','W','C','���� �������� ������ �Ǻ�ó�� �����ϰ� ������ ���� ����','detail1009.jpg','F','item1009.jpg',to_timestamp('18/12/30 17:38:27.567000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1010,1005,'�������� �ٿ ���� ũ��',28000,'30g','E','W','C','�ٴ� �� �׸�ĳ�� �Ǻ� �� ���� ��������!','detail1010.jpg','F','item1010.jpg',to_timestamp('18/12/30 17:38:27.570000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);

/* �����ɾ� 1*/
insert into items(NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO)
values(801,805,'���� Ʈ���� �μ�',13000,'100ml','E','W','E','��Ų ��� �� ���緮�� ���� �� ��ü�� �ε巴�� �� �߶��־� ����� �Ǻ� ���·� �ɾ����ݴϴ�.','innisfree801.png','F','innisfree801.png',systimestamp,'E',1);

/*���ɾ� 2*/
insert into items(NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO)
values(802,805,'���ϸ� UV �����ؼ� �μ� �� �йи�',24000,'150ml','E','W','E','�������ٱ����⹰�� �����Ǿ� ������ ���а��� �پ ���� ȿ���� �����մϴ�.','innisfree802.png','F','innisfree802.png',systimestamp,'E',2);

Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (803,805,'���� Ʈ���� ���̼� �� ',8000,'150ml','E','W','E','�տ� ���緮�� ���빰�� ���Ͽ� ����� ��ǰ�� �� �� �������ϵ� ������ ���� ������ �ľ���ϴ�.','innisfree803.png','F','innisfree803.png',to_timestamp('18/12/30 16:58:52.589000000','RR/MM/DD HH24:MI:SSXFF'),'E',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (804,805,'�̳׶� ���� ���� ���̽� ',12000,'40ml','E','W','E','����ũ�� ��ǰ ��� ��, �ε巴�� �Ǻο� �������ָ� ���������� ǳ���� ���а����� ������ ���б� �Ǻ� �ϼ�.','innisfree804.png','F','innisfree804.png',to_timestamp('18/12/30 16:58:52.590000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (805,805,'����Ʈ 9 ����� ����ũ�� ',42000,'30g','E','W','E','���� ������ ���÷����� 9���� ��ȿ �������� ��ȭ ¡�� �ɾ�� ���� �ָ� ���� & �̹���� �ɾ��ϴ� ��Ƽ����¡ ����ũ��.','innisfree805.png','F','innisfree805.png',to_timestamp('18/12/30 16:58:52.591000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (806,805,'���� ����',10000,'15g','E','W','E','Ư�̻��� �����ϴ�.','innisfree806.png','F','innisfree806.png',to_timestamp('18/12/30 16:58:52.594000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (807,805,'�׸� ����',5000,'7ml','E','W','E','Ư�̻��� �����ϴ�.','innisfree807.png','F','innisfree807.png',to_timestamp('18/12/30 16:58:52.596000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (808,805,'Ŀ�� ���� �ٵ� ��ũ�� ',18000,'250ml','E','W','E','Ŀ�ǹڿ��� ������ �� Ŀ�� ���ϰ� ���� �˰��̰� ������ �Ų��ϰ� �ɾ��ϰ� �ε巯�� ��ǰ�� �Ǻθ� �Ų��ϰ� ������ ���ִ� �ٵ� ��ũ��.','innisfree808.png','F','innisfree808.png',to_timestamp('18/12/30 16:58:52.598000000','RR/MM/DD HH24:MI:SSXFF'),'B',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (809,805,'���� ��� ������ �������� ��ϰ� Ʈ��Ʈ��Ʈ',12000,'150ml','K','W','E','���� �ҳ���, �ﳪ��, ��鳪���� ������ ���� ��Ʈ������ ��ȭ���� �ǰ��� ���Ƿ� �����ݴϴ�.','innisfree809.png','F','innisfree809.png',to_timestamp('18/12/30 16:58:52.601000000','RR/MM/DD HH24:MI:SSXFF'),'B',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (810,805,'���� ��Ǿ ��ƽ ����',9000,'2.3g','E','W','E','�Ŀ�ġ�� Ŭ��ġ�� �־ �δ㽺���� ���� 2.3g �̴� ��ƽ ����� ���� ��𼭳� �����ϰ� �پ��� ���� ��� �� �ֽ��ϴ�.','innisfree810.png','F','innisfree810.png',to_timestamp('18/12/30 16:58:52.603000000','RR/MM/DD HH24:MI:SSXFF'),'B',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (901,905,'6���� ������ ����� ������',155000,'50ml','E','W','E','���˷�л��� ������ ����Ʈ ����� ������ �����ڼ� ȿ���� �Ϸ����� ������ �Ǻη� �����ְ�, ���ָ��� ���� �ָ��� ũ�� �پ��ϴ�.','itemwarn901.jpg','F','item901.jpg',to_timestamp('19/01/02 10:47:13.921000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (902,905,'ũ����Ʈ ȭ��Ʈ UV ��������',62000,'30ml','E','W','E','���ķ��� �ε巴�� ������ ������ �ٸ��� ���� �� �� �ƴ϶�, �Ǻθ� ȭ���ϱ� ������ ���·� ������ݴϴ�.','itemwarn902.jpg','F','item902.jpg',to_timestamp('19/01/02 10:47:13.926000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (903,905,'����Ʋ�� Ŭ�� ��Ƽ �׼� �� Ŭ����/ǻ������ ����ũ',38000,'150ml','E','W','E','ǳ���� ��ǰ�� ������ �����Ǿ�, ��� �� �Ҽ����� �Ǻ� ǥ���� ĢĢ�� ������ �ε巴�� �������ִ� Ŭ����.','itemwarn903.jpg','F','item903.jpg',to_timestamp('19/01/02 10:47:13.951000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (904,905,'���� ���� �Ŀ�̼�',69000,'30ml','E','W','E','�����̼� ���Ƶ� �ڽ� �ְ�, ���� ���� �Ϻ��� �Ǻθ� �������ݴϴ�.�پ Ŀ���°� ���� ���ӷ�, ����� ��밨���� ����޾� �� ����Ƽ �δ��� ����Ʈ ���� ������ �Ŀ�̼��Դϴ�.','itemwarn904.jpg','F','item904.jpg',to_timestamp('19/01/02 10:47:13.960000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (905,905,'ǻ�� Į�� ���� �����̴� ���̼�����',34000,'1.8g','E','W','E','������ �߻��� ������ �������� ���� ���̼�����. ��, ��Ʈ, ���� �� ��ä�ο� �ؽ�ó�� ���� ���ο��� ���� �̱� ���̼����츦 ����������. �ε巯�� ��������� ������ Į�����, 24���� �������� �پ��ϰ� ǳ���� ���� ����ũ���� ������ �� �ֽ��ϴ�.','itemwarn905.jpg','F','item905.jpg',to_timestamp('19/01/02 10:47:13.966000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (906,905,'ǻ�� �÷� ���� ����Ʈ-�� ������ ��',41000,'7ml','E','W','E','���̴� �÷� �״��, ������ ����Ʈ �߻�','itemwarn906.jpg','F','item906.jpg',to_timestamp('19/01/02 10:47:13.974000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (907,905,'ǻ���÷� ���� ��ī',27000,'9ml','E','W','E','������ó�� ������ ���ð� �����ϰ� �پ��� �÷��� ����޴� ����Ƽ �δ��� ���� ��ī�� ����������.','itemwarn907.jpg','T','item907.jpg',to_timestamp('19/01/02 10:47:13.980000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (908,905,'�÷��� �ٵ� �μ�',69000,'250ml','E','W','E','Ŀ�� ���� ���� ũ����Ż�� �����԰� ����� �������� ���� ������ ���� �ٵ�μ��Դϴ�.','itemwarn908.jpg','F','item908.jpg',to_timestamp('19/01/02 10:47:13.987000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (909,905,'��� ���� EDP',90000,'30ml','E','W','E','����� ����Ŭ�� �罺���� �÷η� ���, ��â���̰� �������� ��� ���� ��췯�� ��� ����� Ư���� ���� �����غ�����. ','itemwarn909.jpg','F','item909.jpg',to_timestamp('19/01/02 10:47:13.996000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (701,705,'�� ������',60000,'150ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_701.jpg','F','hera_701.jpg',to_timestamp('18/12/30 17:08:28.853000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (702,705,'�� ����Ʈ �������� SPF50+ PA++++',45000,'40ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_702.jpg','F','hera_702.jpg',to_timestamp('18/12/30 17:08:28.856000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (703,705,'ȭ��Ʈ ���α׷� �� Ŭ��¡ ��',32000,'200ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_703.jpg','F','hera_703.jpg',to_timestamp('18/12/30 17:08:28.858000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
REM INSERTING into ITEMWARNS
SET DEFINE OFF;
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (801,10,808,to_timestamp('18/12/30 16:58:52.629000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (802,17,808,to_timestamp('18/12/30 16:58:52.631000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (803,11,808,to_timestamp('18/12/30 16:58:52.634000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (804,9,807,to_timestamp('18/12/30 16:58:52.636000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (805,11,806,to_timestamp('18/12/30 16:58:52.639000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (806,13,805,to_timestamp('18/12/30 16:58:52.641000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (807,17,805,to_timestamp('18/12/30 16:58:52.643000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (808,11,804,to_timestamp('18/12/30 16:58:52.644000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (809,17,804,to_timestamp('18/12/30 16:58:52.645000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (810,11,803,to_timestamp('18/12/30 16:58:52.647000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (901,13,901,to_timestamp('19/01/02 10:47:14.277000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (902,17,901,to_timestamp('19/01/02 10:47:14.282000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (903,5,902,to_timestamp('19/01/02 10:47:14.297000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (904,6,902,to_timestamp('19/01/02 10:47:14.302000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (905,11,902,to_timestamp('19/01/02 10:47:14.306000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (906,17,902,to_timestamp('19/01/02 10:47:14.312000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (907,11,903,to_timestamp('19/01/02 10:47:14.318000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (908,17,904,to_timestamp('19/01/02 10:47:14.322000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (909,11,906,to_timestamp('19/01/02 10:47:14.326000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (910,17,906,to_timestamp('19/01/02 10:47:14.330000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (911,11,908,to_timestamp('19/01/02 10:47:14.335000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (912,17,908,to_timestamp('19/01/02 10:47:14.341000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (913,11,909,to_timestamp('19/01/02 10:47:14.346000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (701,2,701,to_timestamp('18/12/30 17:09:59.311000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (702,3,701,to_timestamp('18/12/30 17:09:59.315000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (703,20,702,to_timestamp('18/12/30 17:09:59.318000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (704,13,702,to_timestamp('18/12/30 17:09:59.320000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (705,10,703,to_timestamp('18/12/30 17:09:59.323000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (706,8,703,to_timestamp('18/12/30 17:09:59.325000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (707,9,704,to_timestamp('18/12/30 17:09:59.329000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (708,11,704,to_timestamp('18/12/30 17:09:59.331000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (709,3,705,to_timestamp('18/12/30 17:09:59.334000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (401,5,402,to_timestamp('18/12/30 17:10:47.621000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (402,17,402,to_timestamp('18/12/30 17:10:47.623000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (403,11,402,to_timestamp('18/12/30 17:10:47.626000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (404,17,403,to_timestamp('18/12/30 17:10:47.629000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (405,17,407,to_timestamp('18/12/30 17:10:47.631000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (406,11,407,to_timestamp('18/12/30 17:10:47.633000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (501,10,508,to_timestamp('18/12/30 17:11:35.643000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (502,17,508,to_timestamp('18/12/30 17:11:35.646000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (503,11,508,to_timestamp('18/12/30 17:11:35.648000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (504,9,507,to_timestamp('18/12/30 17:11:35.650000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (505,11,506,to_timestamp('18/12/30 17:11:35.652000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (506,13,505,to_timestamp('18/12/30 17:11:35.653000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (507,17,505,to_timestamp('18/12/30 17:11:35.655000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (508,11,504,to_timestamp('18/12/30 17:11:35.657000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (509,17,504,to_timestamp('18/12/30 17:11:35.660000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (510,11,503,to_timestamp('18/12/30 17:11:35.662000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (511,11,502,to_timestamp('18/12/30 17:11:35.665000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (300,20,300,to_timestamp('18/12/30 03:01:18.623000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (301,10,301,to_timestamp('18/12/30 03:01:40.899000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1001,11,1001,to_timestamp('18/12/30 17:41:36.282000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1002,11,1002,to_timestamp('18/12/30 17:41:36.286000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1003,11,1003,to_timestamp('18/12/30 17:41:36.289000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1004,19,1004,to_timestamp('18/12/30 17:41:36.292000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1005,15,1005,to_timestamp('18/12/30 17:41:36.296000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1006,19,1006,to_timestamp('18/12/30 17:41:36.299000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1007,11,1007,to_timestamp('18/12/30 17:41:36.302000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1008,19,1008,to_timestamp('18/12/30 17:41:36.305000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1009,11,1009,to_timestamp('18/12/30 17:41:36.308000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1010,11,1010,to_timestamp('18/12/30 17:41:36.310000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into LIKES
SET DEFINE OFF;
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (803,to_timestamp('18/12/30 16:58:52.696000000','RR/MM/DD HH24:MI:SSXFF'),804,'P',806,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (804,to_timestamp('18/12/30 16:58:52.698000000','RR/MM/DD HH24:MI:SSXFF'),801,'R',null,807);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (805,to_timestamp('18/12/30 16:58:52.700000000','RR/MM/DD HH24:MI:SSXFF'),804,'R',null,809);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (901,to_timestamp('18/12/30 17:07:16.996000000','RR/MM/DD HH24:MI:SSXFF'),904,'P',901,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (902,to_timestamp('18/12/30 17:07:16.999000000','RR/MM/DD HH24:MI:SSXFF'),902,'P',902,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (801,to_timestamp('18/12/30 16:58:52.692000000','RR/MM/DD HH24:MI:SSXFF'),804,'P',802,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (802,to_timestamp('18/12/30 16:58:52.694000000','RR/MM/DD HH24:MI:SSXFF'),803,'P',805,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (903,to_timestamp('18/12/30 17:07:17.002000000','RR/MM/DD HH24:MI:SSXFF'),901,'P',903,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (904,to_timestamp('18/12/30 17:07:17.004000000','RR/MM/DD HH24:MI:SSXFF'),901,'R',null,906);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (905,to_timestamp('18/12/30 17:07:17.006000000','RR/MM/DD HH24:MI:SSXFF'),903,'R',null,907);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (701,to_timestamp('18/12/30 17:10:08.567000000','RR/MM/DD HH24:MI:SSXFF'),701,'P',701,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (702,to_timestamp('18/12/30 17:10:08.570000000','RR/MM/DD HH24:MI:SSXFF'),702,'P',701,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (703,to_timestamp('18/12/30 17:10:08.573000000','RR/MM/DD HH24:MI:SSXFF'),703,'P',702,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (704,to_timestamp('18/12/30 17:10:08.575000000','RR/MM/DD HH24:MI:SSXFF'),701,'P',702,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (705,to_timestamp('18/12/30 17:10:08.578000000','RR/MM/DD HH24:MI:SSXFF'),702,'P',703,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (706,to_timestamp('18/12/30 17:10:08.580000000','RR/MM/DD HH24:MI:SSXFF'),703,'P',703,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (707,to_timestamp('18/12/30 17:10:08.584000000','RR/MM/DD HH24:MI:SSXFF'),701,'R',null,704);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (708,to_timestamp('18/12/30 17:10:08.586000000','RR/MM/DD HH24:MI:SSXFF'),702,'R',null,705);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (709,to_timestamp('18/12/30 17:10:08.588000000','RR/MM/DD HH24:MI:SSXFF'),702,'R',null,704);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (710,to_timestamp('18/12/30 17:10:08.590000000','RR/MM/DD HH24:MI:SSXFF'),703,'R',null,705);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (401,to_timestamp('18/12/30 17:10:47.673000000','RR/MM/DD HH24:MI:SSXFF'),404,'P',402,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (402,to_timestamp('18/12/30 17:10:47.676000000','RR/MM/DD HH24:MI:SSXFF'),403,'P',409,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (403,to_timestamp('18/12/30 17:10:47.677000000','RR/MM/DD HH24:MI:SSXFF'),401,'P',404,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (404,to_timestamp('18/12/30 17:10:47.679000000','RR/MM/DD HH24:MI:SSXFF'),403,'R',null,409);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (405,to_timestamp('18/12/30 17:10:47.681000000','RR/MM/DD HH24:MI:SSXFF'),404,'R',null,410);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (501,to_timestamp('18/12/30 17:11:35.713000000','RR/MM/DD HH24:MI:SSXFF'),504,'P',509,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (502,to_timestamp('18/12/30 17:11:35.717000000','RR/MM/DD HH24:MI:SSXFF'),503,'P',509,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (503,to_timestamp('18/12/30 17:11:35.718000000','RR/MM/DD HH24:MI:SSXFF'),504,'P',502,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (504,to_timestamp('18/12/30 17:11:35.721000000','RR/MM/DD HH24:MI:SSXFF'),501,'R',null,506);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (505,to_timestamp('18/12/30 17:11:35.724000000','RR/MM/DD HH24:MI:SSXFF'),504,'R',null,502);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (300,to_timestamp('18/12/30 03:34:26.120000000','RR/MM/DD HH24:MI:SSXFF'),300,'P',309,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (301,to_timestamp('18/12/30 03:36:05.011000000','RR/MM/DD HH24:MI:SSXFF'),300,'P',302,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (302,to_timestamp('18/12/30 03:37:47.795000000','RR/MM/DD HH24:MI:SSXFF'),300,'P',301,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (303,to_timestamp('18/12/30 03:38:05.660000000','RR/MM/DD HH24:MI:SSXFF'),300,'R',null,301);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (304,to_timestamp('18/12/30 03:38:32.808000000','RR/MM/DD HH24:MI:SSXFF'),300,'R',null,303);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1001,to_timestamp('18/12/30 17:42:03.770000000','RR/MM/DD HH24:MI:SSXFF'),1001,'P',1008,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1002,to_timestamp('18/12/30 17:42:03.774000000','RR/MM/DD HH24:MI:SSXFF'),1002,'P',1001,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1003,to_timestamp('18/12/30 17:42:03.777000000','RR/MM/DD HH24:MI:SSXFF'),1003,'P',1003,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1004,to_timestamp('18/12/30 17:42:03.780000000','RR/MM/DD HH24:MI:SSXFF'),1004,'P',1004,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1005,to_timestamp('18/12/30 17:42:03.783000000','RR/MM/DD HH24:MI:SSXFF'),1001,'P',1009,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1006,to_timestamp('18/12/30 17:42:03.786000000','RR/MM/DD HH24:MI:SSXFF'),1002,'P',1010,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1007,to_timestamp('18/12/30 17:42:03.790000000','RR/MM/DD HH24:MI:SSXFF'),1003,'P',1005,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1008,to_timestamp('18/12/30 17:42:03.794000000','RR/MM/DD HH24:MI:SSXFF'),1004,'P',1002,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1009,to_timestamp('18/12/30 17:42:03.796000000','RR/MM/DD HH24:MI:SSXFF'),1001,'P',1003,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1010,to_timestamp('18/12/30 17:42:03.798000000','RR/MM/DD HH24:MI:SSXFF'),1002,'R',1008,1008);
REM INSERTING into PROBLEMS
SET DEFINE OFF;
Insert into PROBLEMS (NO,TITLE,REGDATE) values (1,'�˷�����(������ ��)',to_timestamp('18/12/31 16:23:06.783000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMS (NO,TITLE,REGDATE) values (2,'��Ƽ����¡',to_timestamp('18/12/31 16:23:06.788000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMS (NO,TITLE,REGDATE) values (3,'Ʈ����',to_timestamp('18/12/31 16:23:06.794000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into PROBLEMTYPES
SET DEFINE OFF;
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (801,3,801,null,to_timestamp('18/12/30 16:58:52.605000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (802,2,802,null,to_timestamp('18/12/30 16:58:52.607000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (803,3,802,null,to_timestamp('18/12/30 16:58:52.610000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (804,1,803,null,to_timestamp('18/12/30 16:58:52.612000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (805,2,803,null,to_timestamp('18/12/30 16:58:52.614000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (806,2,804,null,to_timestamp('18/12/30 16:58:52.618000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (807,3,804,null,to_timestamp('18/12/30 16:58:52.620000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (808,2,null,802,to_timestamp('18/12/30 16:58:52.623000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (809,3,null,803,to_timestamp('18/12/30 16:58:52.625000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (810,2,null,810,to_timestamp('18/12/30 16:58:52.627000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (901,1,901,null,to_timestamp('19/01/02 10:47:15.315000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (902,3,901,null,to_timestamp('19/01/02 10:47:15.320000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (903,3,902,null,to_timestamp('19/01/02 10:47:15.325000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (904,1,903,null,to_timestamp('19/01/02 10:47:15.330000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (905,2,903,null,to_timestamp('19/01/02 10:47:15.335000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (906,2,904,null,to_timestamp('19/01/02 10:47:15.343000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (907,3,904,null,to_timestamp('19/01/02 10:47:15.348000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (908,2,null,905,to_timestamp('19/01/02 10:47:15.373000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (701,3,701,null,to_timestamp('18/12/30 17:09:45.899000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (702,1,701,null,to_timestamp('18/12/30 17:09:45.903000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (703,1,702,null,to_timestamp('18/12/30 17:09:45.906000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (704,2,703,null,to_timestamp('18/12/30 17:09:45.909000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (705,2,703,null,to_timestamp('18/12/30 17:09:45.912000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (706,3,704,null,to_timestamp('18/12/30 17:09:45.915000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (707,2,704,null,to_timestamp('18/12/30 17:09:45.917000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (713,2,702,null,to_timestamp('18/12/30 17:09:45.920000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (708,3,null,702,to_timestamp('18/12/30 17:09:45.922000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (709,2,null,707,to_timestamp('18/12/30 17:09:45.924000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (710,2,null,701,to_timestamp('18/12/30 17:09:45.926000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (711,2,null,708,to_timestamp('18/12/30 17:09:45.929000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (712,2,null,704,to_timestamp('18/12/30 17:09:45.931000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (401,1,401,null,to_timestamp('18/12/30 17:10:47.600000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (402,3,401,null,to_timestamp('18/12/30 17:10:47.602000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (403,2,402,null,to_timestamp('18/12/30 17:10:47.604000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (404,3,402,null,to_timestamp('18/12/30 17:10:47.606000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (405,1,403,null,to_timestamp('18/12/30 17:10:47.608000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (406,2,403,null,to_timestamp('18/12/30 17:10:47.612000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (407,2,null,402,to_timestamp('18/12/30 17:10:47.614000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (408,2,null,405,to_timestamp('18/12/30 17:10:47.616000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (409,3,null,404,to_timestamp('18/12/30 17:10:47.618000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (410,3,null,409,to_timestamp('18/12/30 17:10:47.619000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (501,3,501,null,to_timestamp('18/12/30 17:11:35.619000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (502,2,502,null,to_timestamp('18/12/30 17:11:35.621000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (503,3,502,null,to_timestamp('18/12/30 17:11:35.623000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (504,1,503,null,to_timestamp('18/12/30 17:11:35.626000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (505,2,503,null,to_timestamp('18/12/30 17:11:35.628000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (506,2,504,null,to_timestamp('18/12/30 17:11:35.630000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (507,3,504,null,to_timestamp('18/12/30 17:11:35.633000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (508,2,null,509,to_timestamp('18/12/30 17:11:35.635000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (509,3,null,503,to_timestamp('18/12/30 17:11:35.636000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (510,3,null,502,to_timestamp('18/12/30 17:11:35.639000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (511,2,null,504,to_timestamp('18/12/30 17:11:35.641000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (300,2,null,300,to_timestamp('18/12/30 03:26:16.693000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (301,2,null,301,to_timestamp('18/12/30 03:26:16.693000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (302,2,null,307,to_timestamp('18/12/30 03:26:16.693000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (303,3,301,null,to_timestamp('18/12/30 03:27:40.054000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (304,3,null,309,to_timestamp('18/12/30 03:30:55.040000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (305,3,null,302,to_timestamp('18/12/30 03:31:48.560000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (306,1,302,null,to_timestamp('18/12/30 03:32:38.552000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (307,1,303,null,to_timestamp('18/12/30 03:32:58.562000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1001,1,1001,1001,to_timestamp('18/12/30 17:42:25.431000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1002,2,1002,1002,to_timestamp('18/12/30 17:42:25.435000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1003,3,1003,1003,to_timestamp('18/12/30 17:42:25.437000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1004,1,1004,1004,to_timestamp('18/12/30 17:42:25.440000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1005,2,1002,1005,to_timestamp('18/12/30 17:42:25.442000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1006,3,1001,1006,to_timestamp('18/12/30 17:42:25.445000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1007,1,1002,1007,to_timestamp('18/12/30 17:42:25.448000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1008,2,1003,1008,to_timestamp('18/12/30 17:42:25.453000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1009,3,1003,1009,to_timestamp('18/12/30 17:42:25.456000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1010,1,1004,1010,to_timestamp('18/12/30 17:42:25.458000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into REPLIES
SET DEFINE OFF;
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (803,to_timestamp('18/12/30 16:58:52.690000000','RR/MM/DD HH24:MI:SSXFF'),806,801,'���߰��� !');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (901,to_timestamp('18/12/30 17:07:04.241000000','RR/MM/DD HH24:MI:SSXFF'),904,902,'���� ��� �� ���� ����ϰ� �־��µ� �̰ɷ� ��߰ڳ׿�');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (902,to_timestamp('18/12/30 17:07:04.245000000','RR/MM/DD HH24:MI:SSXFF'),902,903,'������� ��¥ �̹���ȸ�� �ѹ� ����߰ٳ׿�');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (801,to_timestamp('18/12/30 16:58:52.686000000','RR/MM/DD HH24:MI:SSXFF'),804,801,'�� ��� �;�� !');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (802,to_timestamp('18/12/30 16:58:52.688000000','RR/MM/DD HH24:MI:SSXFF'),802,804,'������ �� ���ƿ�.');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (903,to_timestamp('18/12/30 17:07:04.247000000','RR/MM/DD HH24:MI:SSXFF'),903,901,'����ģ������ ���ָ� �����ҰͰ��׿� ������ ����߰ھ�� ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (701,to_timestamp('18/12/30 17:09:35.135000000','RR/MM/DD HH24:MI:SSXFF'),701,702,'����ѳ� ���ƿ� ~');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (702,to_timestamp('18/12/30 17:09:35.137000000','RR/MM/DD HH24:MI:SSXFF'),701,703,'���� ���� ���� �Դϴ� !!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (703,to_timestamp('18/12/30 17:09:35.139000000','RR/MM/DD HH24:MI:SSXFF'),701,704,'�̷� ���� ���� �����ɿ� ~~! :)');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (704,to_timestamp('18/12/30 17:09:35.142000000','RR/MM/DD HH24:MI:SSXFF'),702,701,'���� �ʹ� ���ƿ� >~< !!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (705,to_timestamp('18/12/30 17:09:35.144000000','RR/MM/DD HH24:MI:SSXFF'),702,703,'�ƴ� �̰��� Ȳ�� ����׿� ~');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (706,to_timestamp('18/12/30 17:09:35.147000000','RR/MM/DD HH24:MI:SSXFF'),702,704,'���� ���� ����ϱ��� ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (707,to_timestamp('18/12/30 17:09:35.150000000','RR/MM/DD HH24:MI:SSXFF'),703,702,'�̷� ����� ������� ���� �����̱��� ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (708,to_timestamp('18/12/30 17:09:35.152000000','RR/MM/DD HH24:MI:SSXFF'),703,701,'�̰��� �ʿ��ϴٰ� ���ϸ� ��� ���� �� �� ����??');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (709,to_timestamp('18/12/30 17:09:35.154000000','RR/MM/DD HH24:MI:SSXFF'),703,704,'�����ϴ� ������ ����׿� ;;;');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (401,to_timestamp('18/12/30 17:10:47.668000000','RR/MM/DD HH24:MI:SSXFF'),404,401,'�� ���� ����ǰ �Ẹ�� �ͳ׿�');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (402,to_timestamp('18/12/30 17:10:47.669000000','RR/MM/DD HH24:MI:SSXFF'),406,402,'�� ���� �߸��� ������?');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (403,to_timestamp('18/12/30 17:10:47.671000000','RR/MM/DD HH24:MI:SSXFF'),410,404,'�̽�Ʈ�� ���� �������� ���� �ʳ���?');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (501,to_timestamp('18/12/30 17:11:35.708000000','RR/MM/DD HH24:MI:SSXFF'),504,501,'�̹� �Ż� ���� �����׿�!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (502,to_timestamp('18/12/30 17:11:35.710000000','RR/MM/DD HH24:MI:SSXFF'),502,504,'���� ���� ����̿��� ��');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (503,to_timestamp('18/12/30 17:11:35.712000000','RR/MM/DD HH24:MI:SSXFF'),506,501,'Ŭ��¡�� �̼��� Ŭ��¡ ���� �� ����_ī���� ��õ�ؿ�!!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (300,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),300,300,'�� �׷���?? ������ ����');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (301,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),301,300,'���ô� ���ñ���');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (302,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),302,300,'��������޾ҽ��ϴ�.~!!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1001,to_timestamp('18/12/30 17:42:43.270000000','RR/MM/DD HH24:MI:SSXFF'),1001,1001,'��ȣ! �� ������ ��õ!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1002,to_timestamp('18/12/30 17:42:43.272000000','RR/MM/DD HH24:MI:SSXFF'),1002,1002,'�� �Ǻΰ� �� �Ǻΰ� ��!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1003,to_timestamp('18/12/30 17:42:43.274000000','RR/MM/DD HH24:MI:SSXFF'),1003,1003,'��Ȥ���� ���.. ����');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1004,to_timestamp('18/12/30 17:42:43.278000000','RR/MM/DD HH24:MI:SSXFF'),1003,1001,'����Ʈ�� �ѷ���¡!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1008,to_timestamp('18/12/30 17:42:43.281000000','RR/MM/DD HH24:MI:SSXFF'),1007,1001,'����.. ����.. ��');
REM INSERTING into REVIEWCONTENTS
SET DEFINE OFF;
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (803,to_timestamp('18/12/30 16:58:52.680000000','RR/MM/DD HH24:MI:SSXFF'),'review803.jpg','��ǰ�� ���� ���۸��� �� ���ͼ� ���� ���ƿ�.',803,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (804,to_timestamp('18/12/30 16:58:52.683000000','RR/MM/DD HH24:MI:SSXFF'),'review804.jpg','���ο��� ��õ���ְ� ���� �������̿��� :)',804,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (805,to_timestamp('18/12/30 16:58:52.684000000','RR/MM/DD HH24:MI:SSXFF'),'review805.jpg','���б� �Ǻ� �ϼ� ~~',804,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (901,to_timestamp('18/12/30 17:06:42.036000000','RR/MM/DD HH24:MI:SSXFF'),'review901.jpg','�㿡 ��� �ٸ��� ����� ������ ���� �����������..�׵��� �Ǻΰ� �ʹ� �����ؼ� �� �߶� Ǫ���ߴµ�.. ���� �������� ������. ���õ� �־��̴ּµ� ������ �ۿ� ���������� ���ٴϱ� ������ ���ֿ�~',901,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (902,to_timestamp('18/12/30 17:06:42.039000000','RR/MM/DD HH24:MI:SSXFF'),'review902.jpg','���ٴ� ���� ���� ����µ� �ǳ� ��θ� �ϴٰ� �ᱹ ���䤻���� ���̽��� ��� �������� �ϰ� �ִ�ϴ�~',904,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (801,to_timestamp('18/12/30 16:58:52.677000000','RR/MM/DD HH24:MI:SSXFF'),'review801.jpg','�ѹ� �� ��� �;�� !',801,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (802,to_timestamp('18/12/30 16:58:52.678000000','RR/MM/DD HH24:MI:SSXFF'),'review802.jpg','�ڿܼ����ܿ� ���� ȿ�����̿��� !',802,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (903,to_timestamp('18/12/30 17:06:42.042000000','RR/MM/DD HH24:MI:SSXFF'),'review903.jpg','��Ʈ�ι��� ���...���� ���鼭 �ʾ �̻� �����÷�����! �׶��̼��ϴϱ� ��ũ���� �ػ����� ���̴��󱸿�',906,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (904,to_timestamp('18/12/30 17:06:42.043000000','RR/MM/DD HH24:MI:SSXFF'),'review9032.jpg','���� �Ǻζ� �Ⱦ�︱�� ������ �� �䷱�� �Ǻ� ������ ���ְŵ��! �ű�� ���ø������ͷ� �÷��� ��� �ö󰡰� �߸����� ��¥ ���ƿ�! ������ �����ѵ��� �ö󰡴µ� �ð��� ������ ��ġ �űⰡ �ڱ� �ڸ������� �Լ��� ? �����ǿ�! ���帳 �����Ͻø� ������õ�մϴ�!!',906,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (905,to_timestamp('18/12/30 17:06:42.047000000','RR/MM/DD HH24:MI:SSXFF'),'review904.jpg','������ �� �Ἥ �ٽ� �籸���߾�� ���� ���������ʰ� �ʹ� ���ƿ� �̰� �� ���� �� �籸���� ������ �� �ʹ� �����ϴ�.',909,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (701,to_timestamp('18/12/30 17:09:08.645000000','RR/MM/DD HH24:MI:SSXFF'),'review701.jpg','����� ����� Ȯ ���󰡴� �������� �߻��� ���ڰ� ������ ���� �������� ����� ���׿�. 2������ �Ǿ� �ֱ���... �⵵ ������ �ʰ� ���� �������� �� ������ �߸��̶� �� ���´� ��ô ���ƿ�. �پ��� Į�� �� ���� �������� ���ھ��.',707,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (702,to_timestamp('18/12/30 17:09:08.648000000','RR/MM/DD HH24:MI:SSXFF'),'review702.jpg','�ʹ� ���� ���ڿ� ������� �Ա���... �ȿ��� ������������ ���� ������ �Դµ� ȯ�溸ȣ�� ���ؼ� ���������� �� �ϳ׿�. ���� �������� �� ¯¯�� ������ ���ڳ׿�. ��Ӵ� �帮���� �����ߴµ� ���� ���� �ٸ�������. ������� �� �߸��� �ݹ� �����',707,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (703,to_timestamp('18/12/30 17:09:08.650000000','RR/MM/DD HH24:MI:SSXFF'),'review703.jpg','�����ֱ⿡ �ڵ�ũ�� �����Ŷ�� �����ߴµ� �������� ���� ����������ʰ� �ʹ� �����ؿ�.',708,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (704,to_timestamp('18/12/30 17:09:08.652000000','RR/MM/DD HH24:MI:SSXFF'),'review704.jpg','�⵵ ���� �ٸ��� ������ �����ϴ٤� �������� ���� ���������� �ʴ°� ������? ������ ������ �ʽ��ϴ�?',708,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (705,to_timestamp('18/12/30 17:09:08.654000000','RR/MM/DD HH24:MI:SSXFF'),'review705.jpg','������ ���� �������� ���ڰ� �߻��ǰ�, �ٸ��� �Ǿ�� ��äȭ �������� ����� ǥ���Ǿ� �� ������~',709,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (706,to_timestamp('18/12/30 17:09:08.657000000','RR/MM/DD HH24:MI:SSXFF'),'review706.jpg','��������������ƴ����������̶������ָ�������~~�����ε����ֿ¶��μ��α����ϰ�ͳ׿�~^^',709,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (707,to_timestamp('18/12/30 17:09:08.659000000','RR/MM/DD HH24:MI:SSXFF'),'review707.jpg','������������ �߼��� �ְ��ؼ� ������.���Ƽ� ���������� �����߽��ϴ� ����ģ���� �������� �߻���մϴ� ��󸮹ڽ��� ��Ű�� �����̶� �ְ� �޴±���� �ι��ϲ����ƿ� �̹̻�����ε� ����� �￩���� ��Ŀ����ε� ������ ���� �����ϰڽ��ϴ� �������ε� ���󺸶� �ؼ� ���ڰ� �⵵ ������� �Ǹ��ѻ�ǰ.��� Ī���մϴ�',710,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (708,to_timestamp('18/12/30 17:09:08.662000000','RR/MM/DD HH24:MI:SSXFF'),'review708.jpg','��ȹ��Ʈ�� �����ؼ� �ҿ뷮���� �־��. ���� ���ſ�� �޴��� ���̿���. ���������� �� ���Ƽ� �ٽ� �����ؼ� ���� �ٷ��� ����. ������ �� �Ĵ����ؼ� ������ ���� ��� �����Ű��ƿ�. ������ ���������� �����Ű����� ���� ���� ���� ����.',710,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (401,to_timestamp('18/12/30 17:10:47.659000000','RR/MM/DD HH24:MI:SSXFF'),'review401.jpg','�̸��� �� �̸��� �˰� ���� ��ã�ƿ�',407,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (402,to_timestamp('18/12/30 17:10:47.660000000','RR/MM/DD HH24:MI:SSXFF'),'review402.jpg','��ũ���� �����Ͽ� �ѹ��� �ϸ� �ʹ� ���ƿ�. �ʹ� ��ĥ���� �ʰ� ����� ������ ����� ���ƿ�',408,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (403,to_timestamp('18/12/30 17:10:47.662000000','RR/MM/DD HH24:MI:SSXFF'),'review403.jpg','���� ���� �ɾ �̸��Ѱ� �����',409,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (404,to_timestamp('18/12/30 17:10:47.664000000','RR/MM/DD HH24:MI:SSXFF'),'review404.jpg','�ƹ����� ���� ���µ� �ʹ��ʹ� ���ƿ�',409,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (405,to_timestamp('18/12/30 17:10:47.666000000','RR/MM/DD HH24:MI:SSXFF'),'review405.jpg','���� �� �Ѹ��� �̷� ��� ���� �� �����',410,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (501,to_timestamp('18/12/30 17:11:35.697000000','RR/MM/DD HH24:MI:SSXFF'),'review501.jpg','��ŭ�� ������ ������ �ڱ����ֳ׿�. ��ŭ�� �ڸ��� ���������� ��Ʈ�����ϰ� �������� ���� ǳ���ϰ� ��췯���� �������� ���ӵǴ� �̱׷��� ��ŭ�� �����̿��� :D',501,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (502,to_timestamp('18/12/30 17:11:35.699000000','RR/MM/DD HH24:MI:SSXFF'),'review502.jpg','������ ���� �� �������� ������, �̸��� �� �������°�... ��Ʈ������ ���� �޴ٺ��ϱ� �Գ׿� �� �̹��� ��õ ���� ��ǰ�̶� ��� ���� �Ⱓ�� �ΰ� ��߰����� ���� �� 3���� �ε� ������������! �� �� ����� ���� �͵� ��õ�ؿ�',502,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (503,to_timestamp('18/12/30 17:11:35.701000000','RR/MM/DD HH24:MI:SSXFF'),'review503.jpg','�������� ��Ʈ���� ���̶�� �ϴµ� ����� �ڸ� �迭�� ���� ���̿��� �ʹ� ���ƿ�!',503,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (504,to_timestamp('18/12/30 17:11:35.703000000','RR/MM/DD HH24:MI:SSXFF'),'review5032.jpg','��ǰ�� ������ ǳ���ϰ� ������ ������ ��ŭ�� ��������� ����ؼ� �ʹ� ���Ҿ��!',503,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (505,to_timestamp('18/12/30 17:11:35.705000000','RR/MM/DD HH24:MI:SSXFF'),'review504.jpg','2018 �Ż� ��ǰ �߶�þ��. ��ħ���� �� �߶�⵵ �ϰ� �߻��� ���Ƽ� ���������ϱ� ���� ���ؿ�. �����غ�����^^*!',504,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (300,to_timestamp('18/12/30 03:43:20.823000000','RR/MM/DD HH24:MI:SSXFF'),'review_300.png','���̽ó���?',301,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (301,to_timestamp('18/12/30 03:43:24.044000000','RR/MM/DD HH24:MI:SSXFF'),'review_301.png','�̴̰ϴ�������',301,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (302,to_timestamp('18/12/30 03:44:52.466000000','RR/MM/DD HH24:MI:SSXFF'),'review_302.png','��??�� ������?',302,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (303,to_timestamp('18/12/30 03:44:54.542000000','RR/MM/DD HH24:MI:SSXFF'),'review_303.png','������������ �̷������� ���������',303,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (304,to_timestamp('18/12/30 03:44:59.329000000','RR/MM/DD HH24:MI:SSXFF'),'review_304.png','�̹��� ���䰡 �����󱸿� Ȯ���ϰ� �˷��ְ� ',303,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (305,to_timestamp('18/12/30 03:45:01.729000000','RR/MM/DD HH24:MI:SSXFF'),'review_305.png','������������ �� �����ϴ�.',304,1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1001, systimestamp,'review1001.jpg','���� ������ ������ ���� ������ �̰����θ� �����Ұſ���111.',1001, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1002, systimestamp,'review1002.jpg','���� ������ ������ ���� ������ �̰����θ� �����Ұſ���222.',1001, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1003, systimestamp,'review1003.jpg','�Ǻ� ���� ������� ���Ǻ� ��� �׷��ݾƿ�. �װ� �ٷ� ���ϴ� ����111.',1002, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1004, systimestamp,'review1004.jpg','�Ǻ� ���� ������� ���Ǻ� ��� �׷��ݾƿ�. �װ� �ٷ� ���ϴ� ����222.',1002, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1005, systimestamp,'review1005.jpg','��ǰ�� �Ͼ�� ó�� �� �Ǻε� �Ͼ�� �Ǿ����ϴ�. �� ���ܶ�!111.',1003, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1006, systimestamp,'review1006.jpg','��ǰ�� �Ͼ�� ó�� �� �Ǻε� �Ͼ�� �Ǿ����ϴ�. �� ���ܶ�!222.',1003, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1007, systimestamp,'review1007.jpg','�ڿܼ��� ���� �����ϳ׿�!!! ���� ���� ��ǰ�Դϴ�.111',1004, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1008, systimestamp,'review1008.jpg','�ڿܼ��� ���� �����ϳ׿�!!! ���� ���� ��ǰ�Դϴ�.222',1004, 2);


REM INSERTING into REVIEWS
SET DEFINE OFF;
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (803,803,'�Ǻΰ� ���������.',to_timestamp('18/12/30 16:58:52.655000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,802,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (804,804,'����ũ�� �����ϱ� ���� ����ϸ� ���ƿ�.',to_timestamp('18/12/30 16:58:52.656000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,801,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (805,805,'������ �ָ� �ȳ� !',to_timestamp('18/12/30 16:58:52.659000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,804,'T','���� ����غ��ϱ� ������ �ָ��� Ȯ���� �پ����.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (806,806,'��� 3����',to_timestamp('18/12/30 16:58:52.663000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,803,'T','������� 3������ �����µ� �Լ����� ���Ⱑ ����.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (807,807,'������ �����ϳ׿�.',to_timestamp('18/12/30 16:58:52.665000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,802,'T','���� ����� �� ���ƿ�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (808,808,'�������ſ� �� �ʿ��� ������!',to_timestamp('18/12/30 16:58:52.667000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,801,'T','���� ������ ����̿��µ� �� ��ǰ�� ��� �� �Ŀ� ����� �������� ~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (809,809,'�Ӹ��� ���Ⱑ ������ !',to_timestamp('18/12/30 16:58:52.670000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,804,'T','�ֺ� ������ ��õ���༭ ����غôµ� �±� !');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (810,810,'�޴뼺�� ���ƿ� ~',to_timestamp('18/12/30 16:58:52.674000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,803,'T','���� �����ؼ� ���� �޴뼺�� ���� ~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (901,901,'��⸸�� �ٽ� ���������� ���ƿԾ��.',to_timestamp('18/12/30 17:05:34.940000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,904,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (902,904,'������� ���� ���ƿ�.',to_timestamp('18/12/30 17:05:34.943000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,902,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (801,801,'�� ����ϰ� �;�� !!!',to_timestamp('18/12/30 16:58:52.651000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,804,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (802,802,'�ڿܼ� ���ܿ� ȿ�����̿���.',to_timestamp('18/12/30 16:58:52.652000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,803,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (903,906,'���� �ʹ� �̻���',to_timestamp('18/12/30 17:05:34.946000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,902,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (904,909,'����Ƽ�δ� ��� �������� �� �Ẹ�� �ֳ׿�',to_timestamp('18/12/30 17:05:34.948000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,903,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (905,902,'����Ƽ�δ� ��ũ�� �ı�',to_timestamp('18/12/30 17:05:34.950000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,901,'T','���бⰡ ������ �ٸ��� �� �� ���� ���������ŷ���. ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (906,903,'�ε�ε��ؿ�',to_timestamp('18/12/30 17:05:34.952000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,903,'T','��õ���� �����ߴµ� ��ǰ�� �ε巴�� �� �ı�׿� ������ ����� �ʾƼ� ���ƿ�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (907,905,'�����ؿ�',to_timestamp('18/12/30 17:05:34.954000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,904,'T','�����մϴ� ��¦��¦���� ������ �����ϰ� ���̴µ� �����̳׿�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (908,908,'��Ⱑ �ʹ� ���ƿ�',to_timestamp('18/12/30 17:05:34.956000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,901,'T','����ģ������ �����ߴµ� �ʹ� �����ϳ׿� ���� �þ��� ���� �ܿﺸ�ٴ� �������� �� ���� �� ���׿�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (909,904,'������� �׳� �׷��׿�',to_timestamp('18/12/30 17:05:34.959000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,902,'T','�������� �����Դϴ�. ���� �ߴ´����� ���� 8�ð� ���� �̷��� �ƴѰͰ��ƿ� �� ���� ��Ʈ�մϴ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (910,909,'�ʹ� �����׿� ',to_timestamp('18/12/30 17:05:34.961000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,904,'T','���ϸ鼭 ���� ������ �ʾ� �ܿ￡�� ����,,�ʹ� ��� �����Դϴ�. ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (701,701,'�� ������ ��¥ �����ϴ� !!',to_timestamp('18/12/30 17:08:55.985000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,701,'T','�ξ� ��Ų �μ� ����� �� �Ǵ°� ���ƿ� ���� �ϰ� ���� ���!! ��⵵ �� ��޽����� ���ڰ� ���� ���� ȭ��ص� �Ǻ�Ÿ�Կ� ���� �յڰ� �޶� �ǿ����̿���~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (702,702,'�� ����Ʈ �������� ���׿�~',to_timestamp('18/12/30 17:08:55.988000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,702,'T','�ڿܼ� ���ܻ� �ƴ϶� �ϻ� ��Ȱ�� ��� ����Ʈ ���͸� ������� �Ǻθ� �ѹ��� ��ȣ�� �شٴ� ��� �����Ʈ ������Ʈ ũ���� ����� �����̸� ��ɵ� �־� ���� ȭ���� �Ĳ��ϰ� �߶��ִ� �ѵ� ���ѵ� �����ϸ鼭�� ȭ���� ���̴� ��ä�Ǻη� ����� �ֳ׿� ^^ �ſ� ����~~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (703,703,'ȭ��Ʈ ���α׷� �� Ŭ��¡ �� ��¥ �����ϴ� :) ',to_timestamp('18/12/30 17:08:55.990000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,703,'T','������ ���� �Ǻ����� ������� �̹�ȿ���� ���ƿ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (704,704,'�����ߴµ� ����Ż ������ ������ ���̽� �����ϴ� !!',to_timestamp('18/12/30 17:08:55.992000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,704,'T','�Ƴ��� �ε巯�������� ���� ��ϴ� ����ϰ� ǥ���ȴٰ� �ϳ׿�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (705,705,'�÷���-�� ���� ���� �״��̳׿�;;',to_timestamp('18/12/30 17:08:55.994000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,701,'T','����ǰ�̶� ������� ���� ���� ��µ��� ���� �������ϴ� �κа� ����ũ�� ������ �κ��� �������̶� �����ؿ� ���� ������ ũ���� �����⵵ �ϰ� �Ѳ� ������ ��¦ �̸� ������ ������ �ϴ� �κ��� ���� �о����� ���پ�� ���� ��ǰ�������� �����Ǿ��� �մϴ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (706,706,' �� ��ũ���� ���γ׿� :( ',to_timestamp('18/12/30 17:08:55.997000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,702,'T','�ݹ� �ڶ��̶� �޸��� ��ũ�� ���� ���� ���ƿ� �� �� ��µ� ���� �׸��� ���̽��� �ʹ� ũ�� ���̽��� ������ ���� �־ ���ÿ� �޸����� �ݹ� ������ ���� Ȳ��. ���� ������ ��ü�� ������ �������� ��� �޸������� �޹��ڶ����� ������ �Ȱ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (707,707,'���� ������ �÷� �����ϴ� !!',to_timestamp('18/12/30 17:08:55.999000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,703,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (708,708,'��� ���� ��Ǿ�� �ٵ� �μ� ���׿�~',to_timestamp('18/12/30 17:08:56.001000000','RR/MM/DD HH24:MI:SSXFF'),'T',3,704,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (709,709,'���־��� ���̽� �����̴� ���� ���̾�������',to_timestamp('18/12/30 17:08:56.003000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,701,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (710,710,'�ͼ��ų� �� �� ��Ǿ ���������� ���׿�',to_timestamp('18/12/30 17:08:56.005000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,702,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (401,401,'���ο� ����! ����!',to_timestamp('18/12/30 17:10:47.638000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,401,'T','�긮Ƽ�� ���� ���� �ٵ���͸� �Ẹ�� ���� �ʹ� ���Ƽ� �õ��� ���Ҵµ� �����̳׿�. ������ ��ȫ�� �ƴ϶�...����');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (402,402,'�׻󾲴� it item',to_timestamp('18/12/30 17:10:47.640000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,402,'T','�μ�Ÿ���� ��ũ���� �ſ� ��ȣ�ϴµ� �̸��� �� �����. 5�����ε� ���ڶ� ���� ������!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (403,403,'Ʈ������ ����̽ö��',to_timestamp('18/12/30 17:10:47.643000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,403,'T','���� ���� ���� ���帧�� ����� �� ���� ���� ���ϸ� �������� �ƴ�����!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (404,404,'���� ������� ����',to_timestamp('18/12/30 17:10:47.645000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,404,'T','�츮�� ���ڻ������ ���ؼ� �� ���Ҵµ� �⵵ ���� �ξ� �ֲ��غ��̳׿�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (405,405,'���� �ָ��� ������ ����',to_timestamp('18/12/30 17:10:47.647000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,401,'T','�׷� ���̶� ����� ������ ������ ���ٵ����� �����ؾ��ؿ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (406,406,'������ �ܿ￡ ��',to_timestamp('18/12/30 17:10:47.649000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,402,'T','�ܿ��̶� �׷��� �Լ��� ��¦ ��¦ �����µ� �ӻ��ϳ׿� �̰� ���� �ܿ��� ������ ...');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (407,407,'�ܿ￡ �ε巴�� ������ ���� �ڵ�ũ��',to_timestamp('18/12/30 17:10:47.651000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,403,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (408,408,'��쳪 ��� ��ũ��',to_timestamp('18/12/30 17:10:47.652000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,404,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (409,409,'�ƹ����� ����',to_timestamp('18/12/30 17:10:47.654000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,402,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (410,410,'������ ����',to_timestamp('18/12/30 17:10:47.656000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,401,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (501,510,'�����ϰ� ��� ���� ���� �ְ���',to_timestamp('18/12/30 17:11:35.670000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,501,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (502,509,'Ż��.. �̹��� �� �༮ ���� �ſ���',to_timestamp('18/12/30 17:11:35.672000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,502,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (503,508,'1+1 �⵵ ���� ���ݵ� ����',to_timestamp('18/12/30 17:11:35.676000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (504,507,'2018 ���� �Ż� ���� ü��',to_timestamp('18/12/30 17:11:35.678000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,503,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (505,506,'�̹��� ���������ϰ�',to_timestamp('18/12/30 17:11:35.681000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,501,'T','�Ǻ��濡 ����ϰ� �ڿ������� ������ ���ؼ� �����غþ��!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (506,505,'£�� ��ȭ������',to_timestamp('18/12/30 17:11:35.685000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,503,'T','������ �����̳� ����� �ڿ������� ȭ���� �����ؼ� �� ��ǰ�� ��þ�� ���� �� ���ƿ�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (507,504,'�Ǻο� ���⸦',to_timestamp('18/12/30 17:11:35.687000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'T','�Ǻο� �Ű��� ���� ���ٺ��� ��ä�Ǻ�, �� ���� �̷� �κ� �Ű��� �����󱸿� ���� ��ǰ ���ƿ�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (508,503,'������ ��Ƽ�ϰ� �Ŀ�!',to_timestamp('18/12/30 17:11:35.690000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,501,'T','������ ��Ƽ�ϰ� ȭ���� £���� Ŭ��¡ �ϴµ� �ǰ� ���� �� ���ƿ�!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (509,502,'��ī�鿡�� �����߾��',to_timestamp('18/12/30 17:11:35.693000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,502,'T','��ī�鿡�� ������ ��µ� �ǰ� �����߾��. �ʵ��л� ��鿡�� ����. �ڱ����� ��ǰ�� ���߾��.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (510,501,'���� ��ʴ� ����ó',to_timestamp('18/12/30 17:11:35.695000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'T','�Ź� ���� �귣�带 ��� ���� �Ǵ� ������ �ֳ׿� ��ǰ ���� ��õ�ؿ�!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (300,300,'�Ϳ� �̰� �����̴�',to_timestamp('18/12/30 03:04:43.144000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,300,'T','ó�� ����� �ôµ� ���Ǻο� ���� �߸³׿�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (301,301,'�׳� �����̳׿�',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,300,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (302,302,'�߸��� �������ƿ�',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,301,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (303,303,'���� 3��° ��� ���Դϴ�. �� ������',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,302,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (304,304,'�����״� �ȸ´°Ű��ƿ�..',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,302,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (305,305,'ȭ���ϴ� ���׿� ~!!�����Դϴ�.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,303,'T','�̰� ���� ������ ������.. ��Ѱ� ���� ���̿���.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (306,306,'������ �������ؿ�',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'T',4,301,'T','��Ӵ����� �����ߴµ� ���� �����Ͻʴϴ�. ����');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (307,307,'��ũ���� �ʿ��ϱ��� ���ô� ���ó׿�',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,300,'T','�� ���� �� ������ �Ǻο� �� �´°Ű���?G��');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (308,308,'������ ��Ⱑ �������ʳ׿�.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,303,'T','��ҿ� ����� ��ܾ��� ���� �ƴ����� �̰� ���׿� ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (309,309,'�α����񴩸� ���ٰ� ���� �ż����Դϴ�.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,300,'T','���� �׳� ����񴩷� �����ϴ� ���ܵ���.. �� �̰ŷ� �����ϴϱ� ���� ���׿�..');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1001,1001,'�Ҷ߹��� �����ϵ���',to_timestamp('18/12/30 17:40:06.249000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1001,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1002,1002,'�Ǻο��� ����..',to_timestamp('18/12/30 17:40:06.252000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1002,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1003,1003,'���� �Ͼ����',to_timestamp('18/12/30 17:40:06.256000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1003,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1004,1004,'�ڿܼ��� �Ⱦ..',to_timestamp('18/12/30 17:40:06.258000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1004,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1005,1005,'�˷ο��� �ÿ���',to_timestamp('18/12/30 17:40:06.260000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,1001,'T','���� �˷ο��� �ڿܼ� ���� ȿ���� Ź������! ������, �뷮�� �ʹ� ��� �ƽ��׿�. ��');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1006,1006,'�Ŀ� �˷ο�!!',to_timestamp('18/12/30 17:40:06.265000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,1002,'T','�ڿܼ��� ���� �����ϳ׿�!!! ���� ���� ��ǰ�Դϴ�. �˷ο��� �����Ե� �� �� �ϰ� �뷮�� ���׿�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1007,1007,'�ڲ� ������ �����ؼ�..',to_timestamp('18/12/30 17:40:06.266000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1003,'T','����ũ���� ��µ� ���� �󱼿��� ������ ������ �ʽ��ϴ�. ���ܶ�!!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1008,1008,'�ο���϶� ��ôµ�',to_timestamp('18/12/30 17:40:06.270000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,1004,'T','���� �ο����� �ʳ׿�. ���� ������. ������.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1009,1009,'������ ���� �ڲ� ����',to_timestamp('18/12/30 17:40:06.273000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1001,'T','�� ��ǰ�� ��ôµ� ������ ��Ƽ�� �� ���� �Ǿ����ϴ�. �� ����!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1010,1010,'������ �������� ���ƿ�.',to_timestamp('18/12/30 17:40:06.277000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,1002,'T','�ٴ� �뷮�� ���� ���Ӽ��� �������׿�. �ƽ����ϴ�.');
REM INSERTING into SECONDS
SET DEFINE OFF;
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (1,'��Ų�ɾ�','B',to_timestamp('18/12/31 16:23:18.941000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (2,'���ɾ�','B',to_timestamp('18/12/31 16:23:18.949000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (3,'Ŭ��¡','B',to_timestamp('18/12/31 16:23:18.955000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (4,'���̽�','M',to_timestamp('18/12/31 16:23:18.960000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (5,'����','M',to_timestamp('18/12/31 16:23:18.967000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (6,'��&ġũ','M',to_timestamp('18/12/31 16:23:18.973000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (7,'����','M',to_timestamp('18/12/31 16:23:18.979000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (8,'�ٵ��ɾ�','E',to_timestamp('18/12/31 16:23:18.984000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (9,'����ɾ�','E',to_timestamp('18/12/31 16:23:18.990000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (10,'���','E',to_timestamp('18/12/31 16:23:18.995000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (803,'test803','1111','���γ�','W',to_date('82/06/05','RR/MM/DD'),'D','U',null,null,null,null,'inna.jpg',null,null,to_timestamp('18/12/30 16:58:49.239000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (804,'test804','1111','������','W',to_date('89/08/31','RR/MM/DD'),'C','U',null,null,null,null,'heasun.jpg',null,null,to_timestamp('18/12/30 16:58:49.241000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (805,'test805','1111',null,null,null,null,'C','(��)�̴Ͻ�����','�̴Ͻ�����','080-380-0114','https://www.innisfree.com/','innisfree.jpg',null,null,to_timestamp('18/12/30 16:58:49.244000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (901,'eunwoo','1111','������','M',to_date('97/03/30','RR/MM/DD'),'O','U',null,null,null,null,'eunwoo.jpg',null,null,to_timestamp('18/12/30 17:00:52.393000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (902,'juhyun','1111','������','W',to_date('91/03/29','RR/MM/DD'),'N','U',null,null,null,null,'juhyun.jpg',null,null,to_timestamp('18/12/30 17:00:52.396000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (801,'test801','1111','������','W',to_date('91/08/22','RR/MM/DD'),'O','U',null,null,null,null,'joboa.jpg',null,null,to_timestamp('18/12/30 16:58:49.234000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (802,'test802','1111','�ѿ���','M',to_date('84/12/23','RR/MM/DD'),'N','U',null,null,null,null,'yeri.jpg',null,null,to_timestamp('18/12/30 16:58:49.237000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (903,'ryeonwon','1111','������','W',to_date('81/01/21','RR/MM/DD'),'D','U',null,null,null,null,'ryeowon.jpg',null,null,to_timestamp('18/12/30 17:00:52.399000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (904,'jungah','1111','������','W',to_date('72/07/28','RR/MM/DD'),'C','U',null,null,null,null,'jungah.jpg',null,null,to_timestamp('18/12/30 17:00:52.401000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (905,'ESTEELAUDER','1111',null,null,null,null,'C','�̿��������ѱ�(��)','����Ƽ�δ�','02-3440-2522','https://www.esteelauder.co.kr','esteelauder.png',null,null,to_timestamp('18/12/30 17:00:52.404000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (701,'test701','1111','�Ǽ���','W',to_date('94/05/13','RR/MM/DD'),'D','U',null,null,null,null,null,null,null,to_timestamp('18/12/30 17:08:06.450000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (702,'test702','1111','�����','W',to_date('04/08/31','RR/MM/DD'),'N','U',null,null,null,null,'profile_702.jpg',null,null,to_timestamp('18/12/30 17:08:06.454000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (703,'test703','1111','������','W',to_date('85/02/27','RR/MM/DD'),'O','U',null,null,null,null,'profile_703.jpg',null,null,to_timestamp('18/12/30 17:08:06.456000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (704,'test704','1111','�ּ���','M',to_date('62/12/18','RR/MM/DD'),'C','U',null,null,null,null,'profile_704.jpg',null,null,to_timestamp('18/12/30 17:08:06.458000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (705,'test705','1111',null,null,null,null,'C','(��)��Ƽ���','���','080-023-5454','https://www.hera.com/kr/ko/','hera.jpg',null,null,to_timestamp('18/12/30 17:08:06.460000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (401,'dylan','1111','Dylan','M',to_date('91/09/17','RR/MM/DD'),'D','U',null,null,null,null,'dylan.png',null,null,to_timestamp('18/12/30 17:10:44.905000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (402,'felly','1111','Felicia','W',to_date('64/10/20','RR/MM/DD'),'N','U',null,null,null,null,'felly.png',null,null,to_timestamp('18/12/30 17:10:44.909000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (403,'clara','1111','Clara','W',to_date('59/10/18','RR/MM/DD'),'O','U',null,null,null,null,'clara.png',null,null,to_timestamp('18/12/30 17:10:44.912000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (404,'ai','1111','Ai','W',to_date('84/02/08','RR/MM/DD'),'C','U',null,null,null,null,'ai.png',null,null,to_timestamp('18/12/30 17:10:44.915000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (405,'THEBODYSHOP','1111',null,null,null,null,'C','(��)�񿡽��������۷��̼�','���ٵ�','080-759-7700','https://www.thebodyshop.co.kr/','thebodyshop.jpg',null,null,to_timestamp('18/12/30 17:10:44.917000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (501,'qhsk','1111','����','W',to_date('95/08/19','RR/MM/DD'),'O','U',null,null,null,null,'qhsk.jpg',null,null,to_timestamp('18/12/30 17:11:33.151000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (502,'gusqls','1111','����','M',to_date('82/09/25','RR/MM/DD'),'N','U',null,null,null,null,'gusqls.jpg',null,null,to_timestamp('18/12/30 17:11:33.154000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (503,'tkfkd','1111','����','W',to_date('78/01/12','RR/MM/DD'),'D','U',null,null,null,null,'tkfkd.jpg',null,null,to_timestamp('18/12/30 17:11:33.157000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (504,'tjdfud','1111','�輺��','W',to_date('67/02/08','RR/MM/DD'),'C','U',null,null,null,null,'tjdfud.jpg',null,null,to_timestamp('18/12/30 17:11:33.159000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (505,'NATUREREPUBLIC','1111',null,null,null,null,'C','(��)����ó���ۺ�','����ó���ۺ�','080-890-6000','https://www.naturerepublic.com/','naturerepublic.jpg',null,null,to_timestamp('18/12/30 17:11:33.162000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (302,'test302','1111','������','W',to_date('84/01/22','RR/MM/DD'),'D','U',null,null,null,null,'profile_302.png',null,null,to_timestamp('18/12/30 01:07:22.963000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (300,'test300','1111','�����','M',to_date('91/07/25','RR/MM/DD'),'C','U',null,null,null,null,'profile_300.png',null,null,to_timestamp('18/12/30 00:29:12.622000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (301,'test301','1111','������','W',to_date('81/05/30','RR/MM/DD'),'N','U',null,null,null,null,'profile_301.png',null,null,to_timestamp('18/12/30 01:07:22.952000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (303,'test303','1111','�ճ���','W',to_date('04/05/10','RR/MM/DD'),'O','U',null,null,null,null,'profile_303.png',null,null,to_timestamp('18/12/30 01:07:22.967000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (304,'test304','1111',null,null,null,null,'C','�Ƹ��۽���','��ȭ��',null,null,'profile_304.png','buisnessImg.png','106-85-12345',to_timestamp('18/12/30 01:08:38.639000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1001,'test1001','1111','�躴��','M',to_date('90/09/13','RR/MM/DD'),'N','U',null,null,null,null,'1001.jpg',null,null,to_timestamp('18/12/30 17:36:25.991000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1002,'test1002','1111','������','M',to_date('80/11/12','RR/MM/DD'),'O','U',null,null,null,null,'1002.jpg',null,null,to_timestamp('18/12/30 17:36:25.997000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1003,'test1003','1111','�ѿ���','W',to_date('71/11/12','RR/MM/DD'),'O','U',null,null,null,null,'1003.jpg',null,null,to_timestamp('18/12/30 17:36:26.001000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1004,'test1004','1111','������','W',to_date('69/07/12','RR/MM/DD'),'C','U',null,null,null,null,'1004.jpg',null,null,to_timestamp('18/12/30 17:36:26.007000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1005,'skinfood','1111',null,null,null,null,'C','(��)��ŲǪ��','��ŲǪ��','02-597-4191','http://www.theskinfood.com','skinfood.jpg',null,'214-09-21233',to_timestamp('18/12/30 17:38:05.877000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into WARNS
SET DEFINE OFF;
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (1,'���ƿ���̵�Ͻ���翣','Ż��,�Ǻ� ���ι���,�˷�������',to_timestamp('18/12/31 16:23:06.671000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (2,'�̳׶�����','���帧 ����,���ҹ��� ����,�������� ����,�Ǻ� ��ȭ',to_timestamp('18/12/31 16:23:06.678000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (3,'��ƿ���̵�Ͻþƴϼ�','������ �̻�,�˷���,�� ����',to_timestamp('18/12/31 16:23:06.684000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (4,'�Ҹ���־���','�Ǻ����� �ڱ�(�˷������� ����)',to_timestamp('18/12/31 16:23:06.690000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (5,'��ƿ����õ����ϸ�ź','Ȱ����� ����, DNA �ջ�',to_timestamp('18/12/31 16:23:06.696000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (6,'�������-3','ȣ���, ��ȭ�����, �˷��� ����',to_timestamp('18/12/31 16:23:06.701000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (7,'�̴̹�������ҿ췹��','�ƹڼ� ����,�����˵����� ����,�Ǻ� ���� ����',to_timestamp('18/12/31 16:23:06.707000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (8,'0-���̸�-5��','�����ڱ�,����, ���帧,�ε巯�� ����',to_timestamp('18/12/31 16:23:06.713000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (9,'�̼������ʾ��ڿ�','����,ȫ��,��������,���� ����',to_timestamp('18/12/31 16:23:06.719000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (10,'�ҵ��츱������Ʈ','�鳻��,�Ǻΰ���,�� ����',to_timestamp('18/12/31 16:23:06.725000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (11,'���','���� �����ϴ� ������ ��Ī�Ͽ� ���� ǥ���Ͽ� ��ü�� �˼�����',to_timestamp('18/12/31 16:23:06.730000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (13,'Ʈ����ź�þƹ�','�ȱ���ȯ,���,�Ǻΰ��� ����. �������� ����',to_timestamp('18/12/31 16:23:06.736000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (14,'Ʈ���̼������ǿþƹ�','������ �������ŷ� �Ǻ� ���� ����',to_timestamp('18/12/31 16:23:06.741000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (15,'Ʈ��Ŭ�λ�','�鿪��, �����ɷ� ���� ������ ���к� ��ֹ���',to_timestamp('18/12/31 16:23:06.746000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (16,'�Ķ�','���˼��Ǻο�, �˷���, ���, �ָ��� ����. ���к� ��ֹ�',to_timestamp('18/12/31 16:23:06.752000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (17,'���ÿ�ź��','��ǥ���� ������� ü�� ��� �� �����ۿ� �� �ڱ�����',to_timestamp('18/12/31 16:23:06.758000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (18,'������ƿ���۶�����','����,���� ���,�˷��� ����',to_timestamp('18/12/31 16:23:06.763000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (19,'�ռ�������','��ǰ���� ����ص� ���輺�� ���ٰ� �� �� ����',to_timestamp('18/12/31 16:23:06.770000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (20,'ȣ�����','�Ǿ�ǰ�� ����� �����ν� ���ھ����� �������� ����',to_timestamp('18/12/31 16:23:06.777000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (12,'Ÿ��','����, ����, ����, �̸� ����. �Ǻ��ڱ��� ����.',to_timestamp('18/12/31 16:49:13.979000000','RR/MM/DD HH24:MI:SSXFF'));
--------------------------------------------------------
--  DDL for Index PK_EVENTIMGS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EVENTIMGS" ON "EVENTIMGS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EVENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EVENTS" ON "EVENTS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ITEMS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ITEMS" ON "ITEMS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ITEMWARNS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ITEMWARNS" ON "ITEMWARNS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_LIKES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_LIKES" ON "LIKES" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PROBLEMS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROBLEMS" ON "PROBLEMS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PROBLEMTYPES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROBLEMTYPES" ON "PROBLEMTYPES" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REPLIES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REPLIES" ON "REPLIES" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEWCONTENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REVIEWCONTENTS" ON "REVIEWCONTENTS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEWS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REVIEWS" ON "REVIEWS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SECONDS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SECONDS" ON "SECONDS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_USERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_USERS" ON "USERS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_WARNS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_WARNS" ON "WARNS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Function CUSTOM_AUTH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CUSTOM_AUTH" (p_username in VARCHAR2, p_password in VARCHAR2)
return BOOLEAN
is
  l_password varchar2(4000);
  l_stored_password varchar2(4000);
  l_expires_on date;
  l_count number;
begin
-- First, check to see if the user is in the user table
select count(*) into l_count from demo_users where user_name = p_username;
if l_count > 0 then
  -- First, we fetch the stored hashed password & expire date
  select password, expires_on into l_stored_password, l_expires_on
   from demo_users where user_name = p_username;

  -- Next, we check to see if the user's account is expired
  -- If it is, return FALSE
  if l_expires_on > sysdate or l_expires_on is null then

    -- If the account is not expired, we have to apply the custom hash
    -- function to the password
    l_password := custom_hash(p_username, p_password);

    -- Finally, we compare them to see if they are the same and return
    -- either TRUE or FALSE
    if l_password = l_stored_password then
      return true;
    else
      return false;
    end if;
  else
    return false;
  end if;
else
  -- The username provided is not in the DEMO_USERS table
  return false;
end if;
end;



/
--------------------------------------------------------
--  DDL for Function CUSTOM_HASH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := 'ESCQP14JXQE86S8C82YMAARLMBR9XQ';
begin

-- This function should be wrapped, as the hash algorhythm is exposed here.
-- You can change the value of l_salt or the method of which to call the
-- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords
-- if you choose to do this.

l_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5
  (input_string => p_password || substr(l_salt,10,13) || p_username ||
    substr(l_salt, 4,10)));
return l_password;
end;



/
--------------------------------------------------------
--  Constraints for Table EVENTIMGS
--------------------------------------------------------

  ALTER TABLE "EVENTIMGS" ADD CONSTRAINT "PK_EVENTIMGS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "EVENTIMGS" MODIFY ("EVENT_NO" NOT NULL ENABLE);
  ALTER TABLE "EVENTIMGS" MODIFY ("IMG" NOT NULL ENABLE);
  ALTER TABLE "EVENTIMGS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "EVENTIMGS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENTS
--------------------------------------------------------

  ALTER TABLE "EVENTS" ADD CONSTRAINT "PK_EVENTS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "EVENTS" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("END_DATE" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("START_DATE" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ITEMS
--------------------------------------------------------

  ALTER TABLE "ITEMS" ADD CONSTRAINT "PK_ITEMS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ITEMS" MODIFY ("SECOND_NO" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("FIRST" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("IMG" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("DETAIL_IMG" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("SKIN" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("AGE" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("VOLUME" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ITEMWARNS
--------------------------------------------------------

  ALTER TABLE "ITEMWARNS" ADD CONSTRAINT "PK_ITEMWARNS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ITEMWARNS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "ITEMWARNS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIKES
--------------------------------------------------------

  ALTER TABLE "LIKES" ADD CONSTRAINT "PK_LIKES" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LIKES" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "LIKES" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "LIKES" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "LIKES" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROBLEMS
--------------------------------------------------------

  ALTER TABLE "PROBLEMS" ADD CONSTRAINT "PK_PROBLEMS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PROBLEMS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "PROBLEMS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "PROBLEMS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROBLEMTYPES
--------------------------------------------------------

  ALTER TABLE "PROBLEMTYPES" ADD CONSTRAINT "PK_PROBLEMTYPES" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PROBLEMTYPES" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "PROBLEMTYPES" MODIFY ("PROB_NO" NOT NULL ENABLE);
  ALTER TABLE "PROBLEMTYPES" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPLIES
--------------------------------------------------------

  ALTER TABLE "REPLIES" ADD CONSTRAINT "PK_REPLIES" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "REPLIES" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "REPLIES" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "REPLIES" MODIFY ("REVIEW_NO" NOT NULL ENABLE);
  ALTER TABLE "REPLIES" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "REPLIES" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEWCONTENTS
--------------------------------------------------------

  ALTER TABLE "REVIEWCONTENTS" ADD CONSTRAINT "PK_REVIEWCONTENTS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("REVIEW_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("IMG" NOT NULL ENABLE);
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEWS
--------------------------------------------------------

  ALTER TABLE "REVIEWS" ADD CONSTRAINT "PK_REVIEWS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "REVIEWS" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("SCORE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("GIFT" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("ITEM_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SECONDS
--------------------------------------------------------

  ALTER TABLE "SECONDS" ADD CONSTRAINT "PK_SECONDS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SECONDS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "SECONDS" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "SECONDS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SECONDS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" ADD CONSTRAINT "PK_USERS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "USERS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WARNS
--------------------------------------------------------

  ALTER TABLE "WARNS" ADD CONSTRAINT "PK_WARNS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "WARNS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "WARNS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "WARNS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "WARNS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table EVENTIMGS
--------------------------------------------------------

  ALTER TABLE "EVENTIMGS" ADD CONSTRAINT "FK_EVENTS_TO_EVENTIMGS" FOREIGN KEY ("EVENT_NO")
	  REFERENCES "EVENTS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENTS
--------------------------------------------------------

  ALTER TABLE "EVENTS" ADD CONSTRAINT "FK_USERS_TO_EVENTS" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEMS
--------------------------------------------------------

  ALTER TABLE "ITEMS" ADD CONSTRAINT "FK_SECONDS_TO_ITEMS" FOREIGN KEY ("SECOND_NO")
	  REFERENCES "SECONDS" ("NO") ENABLE;
  ALTER TABLE "ITEMS" ADD CONSTRAINT "FK_USERS_TO_ITEMS" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEMWARNS
--------------------------------------------------------

  ALTER TABLE "ITEMWARNS" ADD CONSTRAINT "FK_ITEMS_TO_ITEMWARNS" FOREIGN KEY ("ITEM_NO")
	  REFERENCES "ITEMS" ("NO") ENABLE;
  ALTER TABLE "ITEMWARNS" ADD CONSTRAINT "FK_WARNS_TO_ITEMWARNS" FOREIGN KEY ("WARN_NO")
	  REFERENCES "WARNS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIKES
--------------------------------------------------------

  ALTER TABLE "LIKES" ADD CONSTRAINT "FK_REVIEWS_TO_LIKES" FOREIGN KEY ("REVIEW_NO")
	  REFERENCES "REVIEWS" ("NO") ENABLE;
  ALTER TABLE "LIKES" ADD CONSTRAINT "FK_USERS_TO_LIKES" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROBLEMTYPES
--------------------------------------------------------

  ALTER TABLE "PROBLEMTYPES" ADD CONSTRAINT "FK_PROBLEMS_TO_PROBLEMTYPES" FOREIGN KEY ("PROB_NO")
	  REFERENCES "PROBLEMS" ("NO") ENABLE;
  ALTER TABLE "PROBLEMTYPES" ADD CONSTRAINT "FK_USERS_TO_PROBLEMTYPES" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPLIES
--------------------------------------------------------

  ALTER TABLE "REPLIES" ADD CONSTRAINT "FK_REVIEWS_TO_REPLIES" FOREIGN KEY ("REVIEW_NO")
	  REFERENCES "REVIEWS" ("NO") ENABLE;
  ALTER TABLE "REPLIES" ADD CONSTRAINT "FK_USERS_TO_REPLIES" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEWCONTENTS
--------------------------------------------------------

  ALTER TABLE "REVIEWCONTENTS" ADD CONSTRAINT "FK_REVIEWS_TO_REVIEWCONTENTS" FOREIGN KEY ("REVIEW_NO")
	  REFERENCES "REVIEWS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEWS
--------------------------------------------------------

  ALTER TABLE "REVIEWS" ADD CONSTRAINT "FK_USERS_TO_REVIEWS" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  ������ ������ - ������-1��-02-2019   
--------------------------------------------------------
DROP SEQUENCE "EVENTIMGS_SEQ";
DROP SEQUENCE "EVENTS_SEQ";
DROP SEQUENCE "ITEMS_SEQ";
DROP SEQUENCE "ITEMWARNS_SEQ";
DROP SEQUENCE "LIKES_SEQ";
DROP SEQUENCE "PROBLEMS_SEQ";
DROP SEQUENCE "PROBLEMTYPES_SEQ";
DROP SEQUENCE "REPLIES_SEQ";
DROP SEQUENCE "REVIEWCONTENTS_SEQ";
DROP SEQUENCE "REVIEWS_SEQ";
DROP SEQUENCE "SECONDS_SEQ";
DROP SEQUENCE "USERS_SEQ";
DROP SEQUENCE "WARNS_SEQ";
DROP TABLE "EVENTIMGS";
DROP TABLE "EVENTS";
DROP TABLE "ITEMWARNS";
DROP TABLE "LIKES";
DROP TABLE "PROBLEMTYPES";
DROP TABLE "REPLIES";
DROP TABLE "REVIEWCONTENTS";
DROP TABLE "REVIEWS";
DROP TABLE "ITEMS";
DROP TABLE "USERS";
DROP FUNCTION "CUSTOM_AUTH";
DROP FUNCTION "CUSTOM_HASH";
--------------------------------------------------------
--  DDL for Sequence EVENTIMGS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EVENTIMGS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EVENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EVENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ITEMS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ITEMS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ITEMWARNS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ITEMWARNS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LIKES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LIKES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROBLEMS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROBLEMS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROBLEMTYPES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PROBLEMTYPES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPLIES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REPLIES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEWCONTENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEWCONTENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEWS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEWS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SECONDS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SECONDS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence WARNS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "WARNS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table EVENTIMGS
--------------------------------------------------------

  CREATE TABLE "EVENTIMGS" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"IMG" VARCHAR2(400 BYTE), 
	"EVENT_NO" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENTS
--------------------------------------------------------

  CREATE TABLE "EVENTS" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"TITLE" VARCHAR2(400 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"EMAIL" VARCHAR2(400 BYTE), 
	"USER_NO" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ITEMS
--------------------------------------------------------

  CREATE TABLE "ITEMS" 
   (	"NO" NUMBER(9,0), 
	"USER_NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"PRICE" NUMBER(9,0), 
	"VOLUME" VARCHAR2(400 BYTE), 
	"AGE" CHAR(1 BYTE), 
	"GENDER" CHAR(1 BYTE), 
	"SKIN" CHAR(1 BYTE), 
	"CONTENT" VARCHAR2(400 BYTE), 
	"DETAIL_IMG" VARCHAR2(400 BYTE), 
	"TYPE" CHAR(1 BYTE), 
	"IMG" VARCHAR2(400 BYTE), 
	"REGDATE" TIMESTAMP (6), 
	"FIRST" CHAR(1 BYTE), 
	"SECOND_NO" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ITEMWARNS
--------------------------------------------------------

  CREATE TABLE "ITEMWARNS" 
   (	"NO" NUMBER(9,0), 
	"WARN_NO" NUMBER(9,0), 
	"ITEM_NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LIKES
--------------------------------------------------------

  CREATE TABLE "LIKES" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"USER_NO" NUMBER(9,0), 
	"TYPE" CHAR(1 BYTE), 
	"ITEM_NO" NUMBER(9,0), 
	"REVIEW_NO" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROBLEMS
--------------------------------------------------------

  CREATE TABLE "PROBLEMS" 
   (	"NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROBLEMTYPES
--------------------------------------------------------

  CREATE TABLE "PROBLEMTYPES" 
   (	"NO" NUMBER(9,0), 
	"PROB_NO" NUMBER(9,0), 
	"USER_NO" NUMBER(9,0), 
	"ITEM_NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REPLIES
--------------------------------------------------------

  CREATE TABLE "REPLIES" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"REVIEW_NO" NUMBER(9,0), 
	"USER_NO" NUMBER(9,0), 
	"CONTENT" VARCHAR2(400 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEWCONTENTS
--------------------------------------------------------

  CREATE TABLE "REVIEWCONTENTS" 
   (	"NO" NUMBER(9,0), 
	"REGDATE" TIMESTAMP (6), 
	"IMG" VARCHAR2(400 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"REVIEW_NO" NUMBER(9,0), 
	"SEQ" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEWS
--------------------------------------------------------

  CREATE TABLE "REVIEWS" 
   (	"NO" NUMBER(9,0), 
	"ITEM_NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"REGDATE" TIMESTAMP (6), 
	"GIFT" CHAR(1 BYTE), 
	"SCORE" NUMBER(9,0), 
	"USER_NO" NUMBER(9,0), 
	"TYPE" CHAR(1 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SECONDS
--------------------------------------------------------

  CREATE TABLE "SECONDS" 
   (	"NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"TYPE" CHAR(1 BYTE), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"NO" NUMBER(9,0), 
	"ID" VARCHAR2(400 BYTE), 
	"PWD" VARCHAR2(400 BYTE), 
	"NAME" VARCHAR2(400 BYTE), 
	"GENDER" CHAR(1 BYTE), 
	"BIRTH" DATE, 
	"SKIN" CHAR(1 BYTE), 
	"TYPE" CHAR(1 BYTE), 
	"COMPANY" VARCHAR2(400 BYTE), 
	"BRAND" VARCHAR2(400 BYTE), 
	"TEL" VARCHAR2(400 BYTE), 
	"LINK" VARCHAR2(400 BYTE), 
	"IMG" VARCHAR2(400 BYTE), 
	"BUISNESS_IMG" VARCHAR2(400 BYTE), 
	"BUISNESS_NUM" VARCHAR2(12 BYTE), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WARNS
--------------------------------------------------------

  CREATE TABLE "WARNS" 
   (	"NO" NUMBER(9,0), 
	"TITLE" VARCHAR2(400 BYTE), 
	"CONTENT" VARCHAR2(400 BYTE), 
	"REGDATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into EVENTIMGS
SET DEFINE OFF;
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (701,to_timestamp('18/12/30 17:09:22.562000000','RR/MM/DD HH24:MI:SSXFF'),'event_701.jpg',701);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (801,to_timestamp('18/12/30 16:58:52.650000000','RR/MM/DD HH24:MI:SSXFF'),'innisfree801.jpg',801);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (901,to_timestamp('18/12/30 17:05:06.374000000','RR/MM/DD HH24:MI:SSXFF'),'esteelauderevent901.jpg',901);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (702,to_timestamp('18/12/30 17:09:22.564000000','RR/MM/DD HH24:MI:SSXFF'),'event_702.jpg',701);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (703,to_timestamp('18/12/30 17:09:22.566000000','RR/MM/DD HH24:MI:SSXFF'),'event_703.jpg',701);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (401,to_timestamp('18/12/30 17:10:47.637000000','RR/MM/DD HH24:MI:SSXFF'),'tbs_event_401.jpg',401);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (501,to_timestamp('18/12/30 17:11:35.668000000','RR/MM/DD HH24:MI:SSXFF'),'naturerepublick501.jpg',501);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (300,to_timestamp('18/12/30 02:56:24.510000000','RR/MM/DD HH24:MI:SSXFF'),'event_300.png',300);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (301,to_timestamp('18/12/30 02:59:31.564000000','RR/MM/DD HH24:MI:SSXFF'),'event_301.png',300);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1001,to_timestamp('18/12/30 17:41:17.878000000','RR/MM/DD HH24:MI:SSXFF'),'event1.jpg',1001);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1002,to_timestamp('18/12/30 17:41:17.882000000','RR/MM/DD HH24:MI:SSXFF'),'event2.jpg',1002);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1003,to_timestamp('18/12/30 17:41:17.885000000','RR/MM/DD HH24:MI:SSXFF'),'event3.jpg',1003);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1004,to_timestamp('18/12/30 17:41:17.889000000','RR/MM/DD HH24:MI:SSXFF'),'event4.jpg',1004);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1005,to_timestamp('18/12/30 17:41:17.892000000','RR/MM/DD HH24:MI:SSXFF'),'event5.jpg',1005);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1006,to_timestamp('18/12/30 17:41:17.894000000','RR/MM/DD HH24:MI:SSXFF'),'event6.jpg',1006);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1007,to_timestamp('18/12/30 17:41:17.896000000','RR/MM/DD HH24:MI:SSXFF'),'event7.jpg',1007);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1008,to_timestamp('18/12/30 17:41:17.898000000','RR/MM/DD HH24:MI:SSXFF'),'event8.jpg',1008);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1009,to_timestamp('18/12/30 17:41:17.900000000','RR/MM/DD HH24:MI:SSXFF'),'event9.jpg',1009);
Insert into EVENTIMGS (NO,REGDATE,IMG,EVENT_NO) values (1010,to_timestamp('18/12/30 17:41:17.903000000','RR/MM/DD HH24:MI:SSXFF'),'event10.jpg',1010);
REM INSERTING into EVENTS
SET DEFINE OFF;
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (701,to_timestamp('18/12/30 17:09:22.559000000','RR/MM/DD HH24:MI:SSXFF'),'��� Golden Pig�� �帮�� 2019 �ູ ��� �̺�Ʈ',to_date('19/01/01','RR/MM/DD'),to_date('19/01/11','RR/MM/DD'),'nono123@naver.com',705);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (801,to_timestamp('18/12/30 16:58:52.648000000','RR/MM/DD HH24:MI:SSXFF'),'��Ŭ&������ ���̾� ��� ��� #������ EVENT',to_date('18/12/20','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'innisfree@innisfree.com',805);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (901,to_timestamp('18/12/30 17:05:06.371000000','RR/MM/DD HH24:MI:SSXFF'),'���ĸ� �ܵ�����',to_date('18/12/27','RR/MM/DD'),to_date('19/01/27','RR/MM/DD'),'user_support@kr.estee.com',905);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (401,to_timestamp('18/12/30 17:10:47.635000000','RR/MM/DD HH24:MI:SSXFF'),'���ٵ� ���� ���� ���ΰ��� �Ǿ����.',to_date('18/12/24','RR/MM/DD'),to_date('19/01/03','RR/MM/DD'),'webmaster@thebodyshop.co.kr',405);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (501,to_timestamp('18/12/30 17:11:35.666000000','RR/MM/DD HH24:MI:SSXFF'),'2018 Ȧ�����̷� ���� ���θ��',to_date('18/11/27','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'nature1230@naver.com',505);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (300,to_timestamp('18/12/30 02:54:31.998000000','RR/MM/DD HH24:MI:SSXFF'),'��ȭ������ ���ϴ�',to_date('18/12/03','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'),'event@sulwhasoo.com',304);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1001,to_timestamp('18/12/30 17:40:55.332000000','RR/MM/DD HH24:MI:SSXFF'),'�������佺Ƽ��',to_date('18/12/25','RR/MM/DD'),to_date('19/01/30','RR/MM/DD'),'event1@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1002,to_timestamp('18/12/30 17:40:55.337000000','RR/MM/DD HH24:MI:SSXFF'),'ȭ��ǰ�� ����',to_date('18/11/25','RR/MM/DD'),to_date('19/02/10','RR/MM/DD'),'event2@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1003,to_timestamp('18/12/30 17:40:55.340000000','RR/MM/DD HH24:MI:SSXFF'),'���, �̰� ��ߵ�',to_date('17/11/25','RR/MM/DD'),to_date('18/01/10','RR/MM/DD'),'event3@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1004,to_timestamp('18/12/30 17:40:55.343000000','RR/MM/DD HH24:MI:SSXFF'),'ȭ���',to_date('18/01/25','RR/MM/DD'),to_date('18/12/25','RR/MM/DD'),'event4@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1005,to_timestamp('18/12/30 17:40:55.346000000','RR/MM/DD HH24:MI:SSXFF'),'�����ϰ� ��������',to_date('19/01/25','RR/MM/DD'),to_date('19/02/20','RR/MM/DD'),'event5@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1006,to_timestamp('18/12/30 17:40:55.348000000','RR/MM/DD HH24:MI:SSXFF'),'������ �̰ɷ�!',to_date('18/10/25','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'event6@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1007,to_timestamp('18/12/30 17:40:55.350000000','RR/MM/DD HH24:MI:SSXFF'),'���ظ��� �ִ����� �̺�Ʈ',to_date('19/01/01','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'),'event7@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1008,to_timestamp('18/12/30 17:40:55.352000000','RR/MM/DD HH24:MI:SSXFF'),'�ȱ��?',to_date('18/07/09','RR/MM/DD'),to_date('18/09/30','RR/MM/DD'),'event8@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1009,to_timestamp('18/12/30 17:40:55.356000000','RR/MM/DD HH24:MI:SSXFF'),'10����� 90����� �̺�Ʈ',to_date('18/11/09','RR/MM/DD'),to_date('19/02/28','RR/MM/DD'),'event9@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1010,to_timestamp('18/12/30 17:40:55.359000000','RR/MM/DD HH24:MI:SSXFF'),'�ҷ��� ȭ��ǰ �̺�Ʈ',to_date('18/10/01','RR/MM/DD'),to_date('18/10/31','RR/MM/DD'),'event10@naver.com',1005);
REM INSERTING into ITEMS
SET DEFINE OFF;
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (704,705,'����Ż ������ ������ ���̽� SPF15/PA+',55000,'30ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_704.jpg','F','hera_704.jpg',to_timestamp('18/12/30 17:08:28.861000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (705,705,'�÷���-�� ���� ����',75000,'15ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_705.jpg','F','hera_705.jpg',to_timestamp('18/12/30 17:08:28.864000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (706,705,'�� ��ũ����',37000,'3.5g','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_706.jpg','F','hera_706.jpg',to_timestamp('18/12/30 17:08:28.867000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (707,705,'���� ������ �÷�',22000,'10ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_707.jpg','F','hera_707.jpg',to_timestamp('18/12/30 17:08:28.870000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (708,705,'��� ���� ��Ǿ�� �ٵ� �μ�',50000,'250 ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_708.jpg','F','hera_708.jpg',to_timestamp('18/12/30 17:08:28.872000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (709,705,'���̽� �����̴� ����',48000,'10g','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_709.jpg','F','hera_709.jpg',to_timestamp('18/12/30 17:08:28.874000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (710,705,'�ͼ��ų� �� �� ��Ǿ',85000,'30ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_710.jpg','F','hera_710.jpg',to_timestamp('18/12/30 17:08:28.877000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (401,405,'�긮Ƽ�� ���� ��Ż-����Ʈ �� ��� 250ML',24000,'250ml','E','W','E','������, �����ǵ��, ��ĥ�۷缼��-20, ������-26-���׽�-26, �۸�����, ������-40���̵��������Ƽ��ĳ���Ϳ���, ���ÿ�ź�� ��','tbs401.jpg','F','tbs401.jpg',to_timestamp('18/12/30 17:10:47.572000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (402,405,'��Ų ���潺 �ڿܼ������� 60ML',29900,'60ml','E','W','B','������, �������ڿ�, ��ĥ��Ǹ���ýų�����Ʈ, �׿���ƿ�۶����ݵ���Ÿ�뿡��Ʈ, ��ƿ����õ����ϸ�ź, ��ƿ���۶�����, ���ġ��, �۸�����','tbs402.jpg','F','tbs402.jpg',to_timestamp('18/12/30 17:10:47.576000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (403,405,'ƼƮ�� ��Ų Ŭ��� ���̼� ���� 250ML',17000,'250ml','E','W','E','������, �۸�����, �ҵ��췹��������Ʈ, ��ī�̵������ʺ�Ÿ��, ������-120��ĥ�۷��ڿ�����ø�����Ʈ, ������-40���̵��������Ƽ��ĳ���Ϳ���','tbs403.jpg','F','tbs403.jpg',to_timestamp('18/12/30 17:10:47.580000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (404,405,'��ī �� & �˷ο� ī�� ����Ʈ ���̺� ���� �� �� �� 160ML',21000,'160ml','E','M','E','������, �����ǵ��, �ϸ𴽾�ũ�����ϵ��ĥŸ�췹��Ʈ/��������������, ������-26-���׽�-26, ������-40���̵��������Ƽ��ĳ���Ϳ���, �������ʷ��۶�����','tbs404.jpg','F','tbs404.jpg',to_timestamp('18/12/30 17:10:47.582000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (405,405,'��ӽ� ���� ���� ���� ���� ũ�� 20ML',36000,'20ml','E','W','E','������, �۸�����, �������, ���ġ��, ī������/ī����Ʈ���۸������̵�, �������ڿ�, �̼Ҽ�ƿ���׾Ʒ���Ʈ, �̼ҳ���̼ҳ볪�뿡��Ʈ, ��ƿ���۶�����','tbs405.jpg','F','tbs405.jpg',to_timestamp('18/12/30 17:10:47.585000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (406,405,'�� ���� ���� - ����� 10ML',7500,'10ml','E','W','E','�Ǹ��ھ�����, �����۸�����-3����ν�, ��, ���, ����ν�, ���̵��������Ƽ��ĳ���Ϳ���, [����] �Ǹ�ī, �����丱�Ƽ�����Ʈ, �ղɾ�����','tbs406.jpg','F','tbs406.jpg',to_timestamp('18/12/30 17:10:47.588000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (407,405,'��ũ �׷������ķ� �ڵ� ũ�� 30ML',7000,'30ml','E','W','E','������, �۸�����, ī������/ī����Ʈ���۸������̵�, ����Ʈ�Ƹ�����, �ҵ�������ũ������Ʈ, ��ƿ���ڿ�, ��Ÿ��������ƿ���׾Ʒ���Ʈ, ���ÿ�ź��','tbs407.jpg','F','tbs407.jpg',to_timestamp('18/12/30 17:10:47.590000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (408,405,'���� ���� �� ���� �޵��׶�Ͼ� �� ��Ʈ ��ũ�� 350ML',46000,'350ml','E','W','E','��ĥ����ȹ�����Ʈ, ����Ʈ, �ҵ�Ŭ�ζ��̵�, �عٶ�⾾����, [����] �Ǹ�ī, �������, �þ����, ���, ���ÿ�ź��, ��ǽų���, �����츮�Ƿ���Ʈ, �������','tbs408.jpg','F','tbs408.jpg',to_timestamp('18/12/30 17:10:47.594000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (409,405,'��뷮 ���� ��Ķ�� �ɾ� ���� 400ML',17000,'400ml','E','W','E','������, �ҵ��췹��������Ʈ, ��ī�̵������ʺ�Ÿ��, �Ƿ���þƹ�, ���׳�, �����Ҹ�����Ʈ20, �ҵ㺥������Ʈ, �����ʷ��۶�����, �ҵ�Ŭ�ζ��̵�','tbs409.jpg','F','tbs409.jpg',to_timestamp('18/12/30 17:10:47.597000000','RR/MM/DD HH24:MI:SSXFF'),'E',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (410,405,'ȭ��Ʈ �ӽ�ũ �ķ��׷��� �ٵ� �̽�Ʈ 100ML',21000,'100ml','E','M','E','��ź��, ������, �������ڿ�, ���, ��ƿ��Ҹ�ĥ�����ǿ���, ���̵�Ͻ��̼����3-����Ŭ����ī�����˵����̵�, t-��ƿ���ڿ�, ��ǽų���, ������','tbs410.jpg','F','tbs410.jpg',to_timestamp('18/12/30 17:10:47.599000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (510,505,'���� �� ���� ���� �ڷ� - �׷����� �ĸ���',14900,'110ml','E','W','E','�ڸ����⹰�� ��Ÿ��C�� ǳ���Ͽ� �Ǻθ� �ɾ����ݴϴ�.','naturerepublic510.gif','F','naturerepublic510.gif',to_timestamp('18/12/30 17:11:35.592000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (509,505,'���� ��Ƽ ���ν� ��Ǫ',15000,'300ml','E','W','E','���������⹰�� �� ���÷����� �����Ǿ� ���ǿ� ��� ���� ���޿� ������ �ݴϴ�. Ż�� ��ȭ ��ɼ� ��Ǫ�Դϴ�. ��ź�� ������ ���� ���� ������ ������ �־� ���� �ɾ �����ϴ�.','naturerepublic509.gif','F','naturerepublic509.gif',to_timestamp('18/12/30 17:11:35.597000000','RR/MM/DD HH24:MI:SSXFF'),'E',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (508,505,'���� �� ���� ���� ��-������ �˷ο�',20000,'1l','E','W','E','�˷ο� 5 complex�� �����Ǿ� �����ϰ� �ǰ��� �Ǻη� ���ٴµ� ������ �ݴϴ�.','naturerepublic508.gif','F','naturerepublic508.gif',to_timestamp('18/12/30 17:11:35.600000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (507,505,'[2018] �÷� �� ����ó ���� �ɾ� ��Ʈ ž ��Ʈ',2500,'8ml','E','W','E','Ư�̻��� �����ϴ�.','naturerepublic507.gif','F','naturerepublic507.gif',to_timestamp('18/12/30 17:11:35.602000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (506,505,'���� ���� ���� 01 ��ũ ����',6900,'10g','E','W','E','Ư�̻��� �����ϴ�.','naturerepublic506.gif','F','naturerepublic506.gif',to_timestamp('18/12/30 17:11:35.604000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (505,505,'���״��� ��Ű�� ���̺�ο� ����ī�� 03 ������',7500,'3.5g','E','W','E','Ư�̻��� �����ϴ�.','naturerepublic505.gif','F','naturerepublic505.gif',to_timestamp('18/12/30 17:11:35.606000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (504,505,'���ι潺 ���ٽú� ���� �Ŀ�̼� SPF30 PA+++',22000,'30ml','E','W','E','3Effect Ampoule Complex �� ���� ������ �� 66% �����ϰ� ������ ��� �̳׶� ���͸� ����Ͽ� ����, �۹�, ���� �ɾ��� ��Ų �ɾ� ȿ���� �ο� �մϴ�.','naturerepublic504.gif','F','naturerepublic504.gif',to_timestamp('18/12/30 17:11:35.608000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (503,505,'������Ʈ ���� �̼��� Ŭ��¡ ���� �� ����_ī����',14000,'250ml','E','W','E','�̼��� ������ ����ũ�� �ܿ����� ���󹰸��� �۾Ƴ����ְ� ��꼺 Ŭ������ ���� ��ȣ�� �ջ� ���� ���� ���� �����Ͽ� ������ �뷯���� ���߾� �ݴϴ�.','naturerepublic503.gif','F','naturerepublic503.gif',to_timestamp('18/12/30 17:11:35.611000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (502,505,'�׸����� ���ϵ� Ű�� �� ��� SPF50+ PA++++',23000,'12ml','K','W','E','�������������⹰�� õ�� ���� �������� �����ϰ� �ǰ��� �Ǻη� �����ݴϴ�. ���ڶ�ƽþ�Ƽī ������ ��Ǯ ���� ���⹰�� ����ī�һ��̵�, �ƽþ�Ƽ�ڻ��̵�, ����ī�ľ־���, �ƽþ�ƽ�־��尡 ��� ��� �Ǻθ� ��ȣ�ϰ� �Ǻ� ��� ���� �ɾ ������ �ݴϴ�.','naturerepublic502.gif','F','naturerepublic502.gif',to_timestamp('18/12/30 17:11:35.614000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (501,505,'�� ���� ���� ���˷�л� ���� ���',18000,'400ml','E','W','E','���˷�л��� �Ǻο� ������ �����մϴ�. pH 5~6�� ��꼺���� �Ǻ� pH �뷱�� �ɾ ������ �˴ϴ�. �ڿ� ���� ������ ���ϰ� ���� ���ϵ��� �������� �ΰ��� �Ǻο��� ����ϰ� ����� �� �ֽ��ϴ�.','naturerepublic501.gif','F','naturerepublic501.gif',to_timestamp('18/12/30 17:11:35.617000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (300,304,'����������',90000,'60ml','A','a','E','��� �� ���� ����, �ξ����, �ڱص��� Ʈ�����̻��� �ִ� ��� ����� �����Ͻð� �Ǻΰ� �����ǿ��� ����Ͻʽÿ�.','deltail_300.png',null,'product300.png',to_timestamp('18/12/30 01:28:07.452000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (301,304,'ź��ũ��',105000,'75ml','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_301.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (302,304,'���� ������ �Ŀ�̼� SPF25 PA++',58000,'30ml','A','M','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_302.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (303,304,'���̺�ο� ������',20000,'0.3g','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_303.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (304,304,'������ ������ ��ƽ_ ����ģ�� ������ ����ƽ 3g',40000,'3g','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_304.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (305,304,'����� ����',60000,'10g','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_305.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (306,304,'��������� SPF50+/PA+++',65000,'15g','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_306.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (307,304,'������ UV ��������',40000,'50ml','E','M','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_307.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (308,304,'��ȭ���� ��� ��������',40000,'15ml','A','W','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_308.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (309,304,'��������Ŭ��¡��',30000,'150ml','E','M','E','�۸�����, �̸���ƽ�־���, ������, ���׾Ƹ��־���, ��Ÿ�����̵�ϻ��̵�, ������-32, �Ǹ�ī, �۸��������׾Ʒ���Ʈ, �� ī�̵������ʺ�Ÿ��, ������-100���׾Ʒ���Ʈ, �λﰡ��, ȣ�β�������, �ҵ��ĥ������Ÿ�췹��Ʈ, ��ҵ��̵�Ƽ����, �ҵ㺥������Ʈ, ���','detail.png',null,'product_309.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1001,1005,'���̽� ���ϸ� �����Ʈ�� ��ũ�� ��',10000,'150ml','E','W','C','���� û�� ö�� ���� ���� �鱹���� ��ȿ�Ͽ� ���� �������� ���̽� ���ϸ� �����Ʈ�� ����','detail1001.jpg','F','item1001.jpg',to_timestamp('18/12/30 17:38:27.540000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1002,1005,'��� �� ���� Ŭ��¡��',8000,'150ml','E','W','D','���Ͼ� ��ó�� ����, ���� ��ó�� ����! �� �Ǻθ� ������ ���� Ŭ��¡ ����','detail1002.jpg','F','item1002.jpg',to_timestamp('18/12/30 17:38:27.543000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1003,1005,'���� ȭ��Ʈ ����Ʈ ���� Ŭ��¡ ����',12000,'300ml','E','W','C','�� �ް� �Ǻ� ����! �Ǻ� ������ ���ְ� ��� ��� ������ ��� ���� Ŭ��¡','detail1003.jpg','F','item1003.jpg',to_timestamp('18/12/30 17:38:27.546000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1004,1005,'���ö�� ��� ����ƽ SPF50+PA++++',15000,'20g','E','W','C','���ö�� ������ �ǰ����� ���� ���� �� ����!','detail1004.jpg','F','item1004.jpg',to_timestamp('18/12/30 17:38:27.551000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1005,1005,'�˷ο� �� �� Ŭ���� ��ƽSPF50+PA+++',13000,'20g','E','W','C','��ġ�� ���а�, ����� ������! ���� ��𼭳� �� ����� ��� ���� �˷ο� ���ɾ�','detail1005.jpg','F','item1005.jpg',to_timestamp('18/12/30 17:38:27.553000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1006,1005,'�˷ο� ���͸� �� ��ũ��',25000,'200g','E','W','C','������ ��ģ �Ǻθ� �ǰ��ϰ� ������ �˷ο� �� ������!','detail1006.jpg','F','item1006.jpg',to_timestamp('18/12/30 17:38:27.557000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1007,1005,'���к��� ������ ����',24000,'60ml','E','W','C','ǳ���� ������ �ӱ��� ���� ���̺����� ���� ���� �������� �����ϰ� �����ϰ� �������Ǵ� ����� ����','detail1007.jpg','F','item1007.jpg',to_timestamp('18/12/30 17:38:27.560000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1008,1005,'�ο���� ���������� �θ�ġ ������',30000,'50ml','E','W','C','���� ���ϰ� ������ ���� ������������ ä���ִ� �� ������ źź �Ǻ� ����','detail1008.jpg','F','item1008.jpg',to_timestamp('18/12/30 17:38:27.564000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1009,1005,'�ο���� ������ ���� ũ��',10000,'150ml','E','W','C','���� �������� ������ �Ǻ�ó�� �����ϰ� ������ ���� ����','detail1009.jpg','F','item1009.jpg',to_timestamp('18/12/30 17:38:27.567000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1010,1005,'�������� �ٿ ���� ũ��',28000,'30g','E','W','C','�ٴ� �� �׸�ĳ�� �Ǻ� �� ���� ��������!','detail1010.jpg','F','item1010.jpg',to_timestamp('18/12/30 17:38:27.570000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);

/* �����ɾ� 1*/
insert into items(NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO)
values(801,805,'���� Ʈ���� �μ�',13000,'100ml','E','W','E','��Ų ��� �� ���緮�� ���� �� ��ü�� �ε巴�� �� �߶��־� ����� �Ǻ� ���·� �ɾ����ݴϴ�.','innisfree801.png','F','innisfree801.png',systimestamp,'E',1);

/*���ɾ� 2*/
insert into items(NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO)
values(802,805,'���ϸ� UV �����ؼ� �μ� �� �йи�',24000,'150ml','E','W','E','�������ٱ����⹰�� �����Ǿ� ������ ���а��� �پ ���� ȿ���� �����մϴ�.','innisfree802.png','F','innisfree802.png',systimestamp,'E',2);

Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (803,805,'���� Ʈ���� ���̼� �� ',8000,'150ml','E','W','E','�տ� ���緮�� ���빰�� ���Ͽ� ����� ��ǰ�� �� �� �������ϵ� ������ ���� ������ �ľ���ϴ�.','innisfree803.png','F','innisfree803.png',to_timestamp('18/12/30 16:58:52.589000000','RR/MM/DD HH24:MI:SSXFF'),'E',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (804,805,'�̳׶� ���� ���� ���̽� ',12000,'40ml','E','W','E','����ũ�� ��ǰ ��� ��, �ε巴�� �Ǻο� �������ָ� ���������� ǳ���� ���а����� ������ ���б� �Ǻ� �ϼ�.','innisfree804.png','F','innisfree804.png',to_timestamp('18/12/30 16:58:52.590000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (805,805,'����Ʈ 9 ����� ����ũ�� ',42000,'30g','E','W','E','���� ������ ���÷����� 9���� ��ȿ �������� ��ȭ ¡�� �ɾ�� ���� �ָ� ���� & �̹���� �ɾ��ϴ� ��Ƽ����¡ ����ũ��.','innisfree805.png','F','innisfree805.png',to_timestamp('18/12/30 16:58:52.591000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (806,805,'���� ����',10000,'15g','E','W','E','Ư�̻��� �����ϴ�.','innisfree806.png','F','innisfree806.png',to_timestamp('18/12/30 16:58:52.594000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (807,805,'�׸� ����',5000,'7ml','E','W','E','Ư�̻��� �����ϴ�.','innisfree807.png','F','innisfree807.png',to_timestamp('18/12/30 16:58:52.596000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (808,805,'Ŀ�� ���� �ٵ� ��ũ�� ',18000,'250ml','E','W','E','Ŀ�ǹڿ��� ������ �� Ŀ�� ���ϰ� ���� �˰��̰� ������ �Ų��ϰ� �ɾ��ϰ� �ε巯�� ��ǰ�� �Ǻθ� �Ų��ϰ� ������ ���ִ� �ٵ� ��ũ��.','innisfree808.png','F','innisfree808.png',to_timestamp('18/12/30 16:58:52.598000000','RR/MM/DD HH24:MI:SSXFF'),'B',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (809,805,'���� ��� ������ �������� ��ϰ� Ʈ��Ʈ��Ʈ',12000,'150ml','K','W','E','���� �ҳ���, �ﳪ��, ��鳪���� ������ ���� ��Ʈ������ ��ȭ���� �ǰ��� ���Ƿ� �����ݴϴ�.','innisfree809.png','F','innisfree809.png',to_timestamp('18/12/30 16:58:52.601000000','RR/MM/DD HH24:MI:SSXFF'),'B',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (810,805,'���� ��Ǿ ��ƽ ����',9000,'2.3g','E','W','E','�Ŀ�ġ�� Ŭ��ġ�� �־ �δ㽺���� ���� 2.3g �̴� ��ƽ ����� ���� ��𼭳� �����ϰ� �پ��� ���� ��� �� �ֽ��ϴ�.','innisfree810.png','F','innisfree810.png',to_timestamp('18/12/30 16:58:52.603000000','RR/MM/DD HH24:MI:SSXFF'),'B',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (901,905,'6���� ������ ����� ������',155000,'50ml','E','W','E','���˷�л��� ������ ����Ʈ ����� ������ �����ڼ� ȿ���� �Ϸ����� ������ �Ǻη� �����ְ�, ���ָ��� ���� �ָ��� ũ�� �پ��ϴ�.','itemwarn901.jpg','F','item901.jpg',to_timestamp('19/01/02 10:47:13.921000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (902,905,'ũ����Ʈ ȭ��Ʈ UV ��������',62000,'30ml','E','W','E','���ķ��� �ε巴�� ������ ������ �ٸ��� ���� �� �� �ƴ϶�, �Ǻθ� ȭ���ϱ� ������ ���·� ������ݴϴ�.','itemwarn902.jpg','F','item902.jpg',to_timestamp('19/01/02 10:47:13.926000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (903,905,'����Ʋ�� Ŭ�� ��Ƽ �׼� �� Ŭ����/ǻ������ ����ũ',38000,'150ml','E','W','E','ǳ���� ��ǰ�� ������ �����Ǿ�, ��� �� �Ҽ����� �Ǻ� ǥ���� ĢĢ�� ������ �ε巴�� �������ִ� Ŭ����.','itemwarn903.jpg','F','item903.jpg',to_timestamp('19/01/02 10:47:13.951000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (904,905,'���� ���� �Ŀ�̼�',69000,'30ml','E','W','E','�����̼� ���Ƶ� �ڽ� �ְ�, ���� ���� �Ϻ��� �Ǻθ� �������ݴϴ�.�پ Ŀ���°� ���� ���ӷ�, ����� ��밨���� ����޾� �� ����Ƽ �δ��� ����Ʈ ���� ������ �Ŀ�̼��Դϴ�.','itemwarn904.jpg','F','item904.jpg',to_timestamp('19/01/02 10:47:13.960000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (905,905,'ǻ�� Į�� ���� �����̴� ���̼�����',34000,'1.8g','E','W','E','������ �߻��� ������ �������� ���� ���̼�����. ��, ��Ʈ, ���� �� ��ä�ο� �ؽ�ó�� ���� ���ο��� ���� �̱� ���̼����츦 ����������. �ε巯�� ��������� ������ Į�����, 24���� �������� �پ��ϰ� ǳ���� ���� ����ũ���� ������ �� �ֽ��ϴ�.','itemwarn905.jpg','F','item905.jpg',to_timestamp('19/01/02 10:47:13.966000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (906,905,'ǻ�� �÷� ���� ����Ʈ-�� ������ ��',41000,'7ml','E','W','E','���̴� �÷� �״��, ������ ����Ʈ �߻�','itemwarn906.jpg','F','item906.jpg',to_timestamp('19/01/02 10:47:13.974000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (907,905,'ǻ���÷� ���� ��ī',27000,'9ml','E','W','E','������ó�� ������ ���ð� �����ϰ� �پ��� �÷��� ����޴� ����Ƽ �δ��� ���� ��ī�� ����������.','itemwarn907.jpg','T','item907.jpg',to_timestamp('19/01/02 10:47:13.980000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (908,905,'�÷��� �ٵ� �μ�',69000,'250ml','E','W','E','Ŀ�� ���� ���� ũ����Ż�� �����԰� ����� �������� ���� ������ ���� �ٵ�μ��Դϴ�.','itemwarn908.jpg','F','item908.jpg',to_timestamp('19/01/02 10:47:13.987000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (909,905,'��� ���� EDP',90000,'30ml','E','W','E','����� ����Ŭ�� �罺���� �÷η� ���, ��â���̰� �������� ��� ���� ��췯�� ��� ����� Ư���� ���� �����غ�����. ','itemwarn909.jpg','F','item909.jpg',to_timestamp('19/01/02 10:47:13.996000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (701,705,'�� ������',60000,'150ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_701.jpg','F','hera_701.jpg',to_timestamp('18/12/30 17:08:28.853000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (702,705,'�� ����Ʈ �������� SPF50+ PA++++',45000,'40ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_702.jpg','F','hera_702.jpg',to_timestamp('18/12/30 17:08:28.856000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (703,705,'ȭ��Ʈ ���α׷� �� Ŭ��¡ ��',32000,'200ml','E','W','E','������, �����ǵ��, ���̾ƽžƸ��̵�, �۸�����, �۸�������-26,��ƿ���۶�����, ������Ǯ���⹰, Ʈ����ĥ������, ����˶�, ���ġ��, ������-60�۸������̼ҽ��׾Ʒ���Ʈ, �۸��������׾Ʒ���Ʈ, ���׾Ƹ����ڿ�, ������-20�۸������̼ҽ��׾Ʒ���Ʈ','hera_detail_703.jpg','F','hera_703.jpg',to_timestamp('18/12/30 17:08:28.858000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
REM INSERTING into ITEMWARNS
SET DEFINE OFF;
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (801,10,808,to_timestamp('18/12/30 16:58:52.629000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (802,17,808,to_timestamp('18/12/30 16:58:52.631000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (803,11,808,to_timestamp('18/12/30 16:58:52.634000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (804,9,807,to_timestamp('18/12/30 16:58:52.636000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (805,11,806,to_timestamp('18/12/30 16:58:52.639000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (806,13,805,to_timestamp('18/12/30 16:58:52.641000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (807,17,805,to_timestamp('18/12/30 16:58:52.643000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (808,11,804,to_timestamp('18/12/30 16:58:52.644000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (809,17,804,to_timestamp('18/12/30 16:58:52.645000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (810,11,803,to_timestamp('18/12/30 16:58:52.647000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (901,13,901,to_timestamp('19/01/02 10:47:14.277000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (902,17,901,to_timestamp('19/01/02 10:47:14.282000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (903,5,902,to_timestamp('19/01/02 10:47:14.297000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (904,6,902,to_timestamp('19/01/02 10:47:14.302000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (905,11,902,to_timestamp('19/01/02 10:47:14.306000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (906,17,902,to_timestamp('19/01/02 10:47:14.312000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (907,11,903,to_timestamp('19/01/02 10:47:14.318000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (908,17,904,to_timestamp('19/01/02 10:47:14.322000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (909,11,906,to_timestamp('19/01/02 10:47:14.326000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (910,17,906,to_timestamp('19/01/02 10:47:14.330000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (911,11,908,to_timestamp('19/01/02 10:47:14.335000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (912,17,908,to_timestamp('19/01/02 10:47:14.341000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (913,11,909,to_timestamp('19/01/02 10:47:14.346000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (701,2,701,to_timestamp('18/12/30 17:09:59.311000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (702,3,701,to_timestamp('18/12/30 17:09:59.315000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (703,20,702,to_timestamp('18/12/30 17:09:59.318000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (704,13,702,to_timestamp('18/12/30 17:09:59.320000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (705,10,703,to_timestamp('18/12/30 17:09:59.323000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (706,8,703,to_timestamp('18/12/30 17:09:59.325000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (707,9,704,to_timestamp('18/12/30 17:09:59.329000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (708,11,704,to_timestamp('18/12/30 17:09:59.331000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (709,3,705,to_timestamp('18/12/30 17:09:59.334000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (401,5,402,to_timestamp('18/12/30 17:10:47.621000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (402,17,402,to_timestamp('18/12/30 17:10:47.623000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (403,11,402,to_timestamp('18/12/30 17:10:47.626000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (404,17,403,to_timestamp('18/12/30 17:10:47.629000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (405,17,407,to_timestamp('18/12/30 17:10:47.631000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (406,11,407,to_timestamp('18/12/30 17:10:47.633000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (501,10,508,to_timestamp('18/12/30 17:11:35.643000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (502,17,508,to_timestamp('18/12/30 17:11:35.646000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (503,11,508,to_timestamp('18/12/30 17:11:35.648000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (504,9,507,to_timestamp('18/12/30 17:11:35.650000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (505,11,506,to_timestamp('18/12/30 17:11:35.652000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (506,13,505,to_timestamp('18/12/30 17:11:35.653000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (507,17,505,to_timestamp('18/12/30 17:11:35.655000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (508,11,504,to_timestamp('18/12/30 17:11:35.657000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (509,17,504,to_timestamp('18/12/30 17:11:35.660000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (510,11,503,to_timestamp('18/12/30 17:11:35.662000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (511,11,502,to_timestamp('18/12/30 17:11:35.665000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (300,20,300,to_timestamp('18/12/30 03:01:18.623000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (301,10,301,to_timestamp('18/12/30 03:01:40.899000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1001,11,1001,to_timestamp('18/12/30 17:41:36.282000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1002,11,1002,to_timestamp('18/12/30 17:41:36.286000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1003,11,1003,to_timestamp('18/12/30 17:41:36.289000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1004,19,1004,to_timestamp('18/12/30 17:41:36.292000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1005,15,1005,to_timestamp('18/12/30 17:41:36.296000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1006,19,1006,to_timestamp('18/12/30 17:41:36.299000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1007,11,1007,to_timestamp('18/12/30 17:41:36.302000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1008,19,1008,to_timestamp('18/12/30 17:41:36.305000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1009,11,1009,to_timestamp('18/12/30 17:41:36.308000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into ITEMWARNS (NO,WARN_NO,ITEM_NO,REGDATE) values (1010,11,1010,to_timestamp('18/12/30 17:41:36.310000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into LIKES
SET DEFINE OFF;
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (803,to_timestamp('18/12/30 16:58:52.696000000','RR/MM/DD HH24:MI:SSXFF'),804,'P',806,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (804,to_timestamp('18/12/30 16:58:52.698000000','RR/MM/DD HH24:MI:SSXFF'),801,'R',null,807);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (805,to_timestamp('18/12/30 16:58:52.700000000','RR/MM/DD HH24:MI:SSXFF'),804,'R',null,809);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (901,to_timestamp('18/12/30 17:07:16.996000000','RR/MM/DD HH24:MI:SSXFF'),904,'P',901,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (902,to_timestamp('18/12/30 17:07:16.999000000','RR/MM/DD HH24:MI:SSXFF'),902,'P',902,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (801,to_timestamp('18/12/30 16:58:52.692000000','RR/MM/DD HH24:MI:SSXFF'),804,'P',802,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (802,to_timestamp('18/12/30 16:58:52.694000000','RR/MM/DD HH24:MI:SSXFF'),803,'P',805,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (903,to_timestamp('18/12/30 17:07:17.002000000','RR/MM/DD HH24:MI:SSXFF'),901,'P',903,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (904,to_timestamp('18/12/30 17:07:17.004000000','RR/MM/DD HH24:MI:SSXFF'),901,'R',null,906);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (905,to_timestamp('18/12/30 17:07:17.006000000','RR/MM/DD HH24:MI:SSXFF'),903,'R',null,907);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (701,to_timestamp('18/12/30 17:10:08.567000000','RR/MM/DD HH24:MI:SSXFF'),701,'P',701,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (702,to_timestamp('18/12/30 17:10:08.570000000','RR/MM/DD HH24:MI:SSXFF'),702,'P',701,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (703,to_timestamp('18/12/30 17:10:08.573000000','RR/MM/DD HH24:MI:SSXFF'),703,'P',702,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (704,to_timestamp('18/12/30 17:10:08.575000000','RR/MM/DD HH24:MI:SSXFF'),701,'P',702,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (705,to_timestamp('18/12/30 17:10:08.578000000','RR/MM/DD HH24:MI:SSXFF'),702,'P',703,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (706,to_timestamp('18/12/30 17:10:08.580000000','RR/MM/DD HH24:MI:SSXFF'),703,'P',703,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (707,to_timestamp('18/12/30 17:10:08.584000000','RR/MM/DD HH24:MI:SSXFF'),701,'R',null,704);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (708,to_timestamp('18/12/30 17:10:08.586000000','RR/MM/DD HH24:MI:SSXFF'),702,'R',null,705);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (709,to_timestamp('18/12/30 17:10:08.588000000','RR/MM/DD HH24:MI:SSXFF'),702,'R',null,704);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (710,to_timestamp('18/12/30 17:10:08.590000000','RR/MM/DD HH24:MI:SSXFF'),703,'R',null,705);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (401,to_timestamp('18/12/30 17:10:47.673000000','RR/MM/DD HH24:MI:SSXFF'),404,'P',402,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (402,to_timestamp('18/12/30 17:10:47.676000000','RR/MM/DD HH24:MI:SSXFF'),403,'P',409,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (403,to_timestamp('18/12/30 17:10:47.677000000','RR/MM/DD HH24:MI:SSXFF'),401,'P',404,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (404,to_timestamp('18/12/30 17:10:47.679000000','RR/MM/DD HH24:MI:SSXFF'),403,'R',null,409);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (405,to_timestamp('18/12/30 17:10:47.681000000','RR/MM/DD HH24:MI:SSXFF'),404,'R',null,410);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (501,to_timestamp('18/12/30 17:11:35.713000000','RR/MM/DD HH24:MI:SSXFF'),504,'P',509,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (502,to_timestamp('18/12/30 17:11:35.717000000','RR/MM/DD HH24:MI:SSXFF'),503,'P',509,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (503,to_timestamp('18/12/30 17:11:35.718000000','RR/MM/DD HH24:MI:SSXFF'),504,'P',502,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (504,to_timestamp('18/12/30 17:11:35.721000000','RR/MM/DD HH24:MI:SSXFF'),501,'R',null,506);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (505,to_timestamp('18/12/30 17:11:35.724000000','RR/MM/DD HH24:MI:SSXFF'),504,'R',null,502);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (300,to_timestamp('18/12/30 03:34:26.120000000','RR/MM/DD HH24:MI:SSXFF'),300,'P',309,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (301,to_timestamp('18/12/30 03:36:05.011000000','RR/MM/DD HH24:MI:SSXFF'),300,'P',302,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (302,to_timestamp('18/12/30 03:37:47.795000000','RR/MM/DD HH24:MI:SSXFF'),300,'P',301,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (303,to_timestamp('18/12/30 03:38:05.660000000','RR/MM/DD HH24:MI:SSXFF'),300,'R',null,301);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (304,to_timestamp('18/12/30 03:38:32.808000000','RR/MM/DD HH24:MI:SSXFF'),300,'R',null,303);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1001,to_timestamp('18/12/30 17:42:03.770000000','RR/MM/DD HH24:MI:SSXFF'),1001,'P',1008,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1002,to_timestamp('18/12/30 17:42:03.774000000','RR/MM/DD HH24:MI:SSXFF'),1002,'P',1001,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1003,to_timestamp('18/12/30 17:42:03.777000000','RR/MM/DD HH24:MI:SSXFF'),1003,'P',1003,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1004,to_timestamp('18/12/30 17:42:03.780000000','RR/MM/DD HH24:MI:SSXFF'),1004,'P',1004,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1005,to_timestamp('18/12/30 17:42:03.783000000','RR/MM/DD HH24:MI:SSXFF'),1001,'P',1009,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1006,to_timestamp('18/12/30 17:42:03.786000000','RR/MM/DD HH24:MI:SSXFF'),1002,'P',1010,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1007,to_timestamp('18/12/30 17:42:03.790000000','RR/MM/DD HH24:MI:SSXFF'),1003,'P',1005,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1008,to_timestamp('18/12/30 17:42:03.794000000','RR/MM/DD HH24:MI:SSXFF'),1004,'P',1002,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1009,to_timestamp('18/12/30 17:42:03.796000000','RR/MM/DD HH24:MI:SSXFF'),1001,'P',1003,null);
Insert into LIKES (NO,REGDATE,USER_NO,TYPE,ITEM_NO,REVIEW_NO) values (1010,to_timestamp('18/12/30 17:42:03.798000000','RR/MM/DD HH24:MI:SSXFF'),1002,'R',1008,1008);
REM INSERTING into PROBLEMS
SET DEFINE OFF;
Insert into PROBLEMS (NO,TITLE,REGDATE) values (1,'�˷�����(������ ��)',to_timestamp('18/12/31 16:23:06.783000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMS (NO,TITLE,REGDATE) values (2,'��Ƽ����¡',to_timestamp('18/12/31 16:23:06.788000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMS (NO,TITLE,REGDATE) values (3,'Ʈ����',to_timestamp('18/12/31 16:23:06.794000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into PROBLEMTYPES
SET DEFINE OFF;
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (801,3,801,null,to_timestamp('18/12/30 16:58:52.605000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (802,2,802,null,to_timestamp('18/12/30 16:58:52.607000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (803,3,802,null,to_timestamp('18/12/30 16:58:52.610000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (804,1,803,null,to_timestamp('18/12/30 16:58:52.612000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (805,2,803,null,to_timestamp('18/12/30 16:58:52.614000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (806,2,804,null,to_timestamp('18/12/30 16:58:52.618000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (807,3,804,null,to_timestamp('18/12/30 16:58:52.620000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (808,2,null,802,to_timestamp('18/12/30 16:58:52.623000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (809,3,null,803,to_timestamp('18/12/30 16:58:52.625000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (810,2,null,810,to_timestamp('18/12/30 16:58:52.627000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (901,1,901,null,to_timestamp('19/01/02 10:47:15.315000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (902,3,901,null,to_timestamp('19/01/02 10:47:15.320000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (903,3,902,null,to_timestamp('19/01/02 10:47:15.325000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (904,1,903,null,to_timestamp('19/01/02 10:47:15.330000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (905,2,903,null,to_timestamp('19/01/02 10:47:15.335000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (906,2,904,null,to_timestamp('19/01/02 10:47:15.343000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (907,3,904,null,to_timestamp('19/01/02 10:47:15.348000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (908,2,null,905,to_timestamp('19/01/02 10:47:15.373000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (701,3,701,null,to_timestamp('18/12/30 17:09:45.899000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (702,1,701,null,to_timestamp('18/12/30 17:09:45.903000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (703,1,702,null,to_timestamp('18/12/30 17:09:45.906000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (704,2,703,null,to_timestamp('18/12/30 17:09:45.909000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (705,2,703,null,to_timestamp('18/12/30 17:09:45.912000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (706,3,704,null,to_timestamp('18/12/30 17:09:45.915000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (707,2,704,null,to_timestamp('18/12/30 17:09:45.917000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (713,2,702,null,to_timestamp('18/12/30 17:09:45.920000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (708,3,null,702,to_timestamp('18/12/30 17:09:45.922000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (709,2,null,707,to_timestamp('18/12/30 17:09:45.924000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (710,2,null,701,to_timestamp('18/12/30 17:09:45.926000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (711,2,null,708,to_timestamp('18/12/30 17:09:45.929000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (712,2,null,704,to_timestamp('18/12/30 17:09:45.931000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (401,1,401,null,to_timestamp('18/12/30 17:10:47.600000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (402,3,401,null,to_timestamp('18/12/30 17:10:47.602000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (403,2,402,null,to_timestamp('18/12/30 17:10:47.604000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (404,3,402,null,to_timestamp('18/12/30 17:10:47.606000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (405,1,403,null,to_timestamp('18/12/30 17:10:47.608000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (406,2,403,null,to_timestamp('18/12/30 17:10:47.612000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (407,2,null,402,to_timestamp('18/12/30 17:10:47.614000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (408,2,null,405,to_timestamp('18/12/30 17:10:47.616000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (409,3,null,404,to_timestamp('18/12/30 17:10:47.618000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (410,3,null,409,to_timestamp('18/12/30 17:10:47.619000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (501,3,501,null,to_timestamp('18/12/30 17:11:35.619000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (502,2,502,null,to_timestamp('18/12/30 17:11:35.621000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (503,3,502,null,to_timestamp('18/12/30 17:11:35.623000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (504,1,503,null,to_timestamp('18/12/30 17:11:35.626000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (505,2,503,null,to_timestamp('18/12/30 17:11:35.628000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (506,2,504,null,to_timestamp('18/12/30 17:11:35.630000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (507,3,504,null,to_timestamp('18/12/30 17:11:35.633000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (508,2,null,509,to_timestamp('18/12/30 17:11:35.635000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (509,3,null,503,to_timestamp('18/12/30 17:11:35.636000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (510,3,null,502,to_timestamp('18/12/30 17:11:35.639000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (511,2,null,504,to_timestamp('18/12/30 17:11:35.641000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (300,2,null,300,to_timestamp('18/12/30 03:26:16.693000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (301,2,null,301,to_timestamp('18/12/30 03:26:16.693000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (302,2,null,307,to_timestamp('18/12/30 03:26:16.693000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (303,3,301,null,to_timestamp('18/12/30 03:27:40.054000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (304,3,null,309,to_timestamp('18/12/30 03:30:55.040000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (305,3,null,302,to_timestamp('18/12/30 03:31:48.560000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (306,1,302,null,to_timestamp('18/12/30 03:32:38.552000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (307,1,303,null,to_timestamp('18/12/30 03:32:58.562000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1001,1,1001,1001,to_timestamp('18/12/30 17:42:25.431000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1002,2,1002,1002,to_timestamp('18/12/30 17:42:25.435000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1003,3,1003,1003,to_timestamp('18/12/30 17:42:25.437000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1004,1,1004,1004,to_timestamp('18/12/30 17:42:25.440000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1005,2,1002,1005,to_timestamp('18/12/30 17:42:25.442000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1006,3,1001,1006,to_timestamp('18/12/30 17:42:25.445000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1007,1,1002,1007,to_timestamp('18/12/30 17:42:25.448000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1008,2,1003,1008,to_timestamp('18/12/30 17:42:25.453000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1009,3,1003,1009,to_timestamp('18/12/30 17:42:25.456000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMTYPES (NO,PROB_NO,USER_NO,ITEM_NO,REGDATE) values (1010,1,1004,1010,to_timestamp('18/12/30 17:42:25.458000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into REPLIES
SET DEFINE OFF;
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (803,to_timestamp('18/12/30 16:58:52.690000000','RR/MM/DD HH24:MI:SSXFF'),806,801,'���߰��� !');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (901,to_timestamp('18/12/30 17:07:04.241000000','RR/MM/DD HH24:MI:SSXFF'),904,902,'���� ��� �� ���� ����ϰ� �־��µ� �̰ɷ� ��߰ڳ׿�');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (902,to_timestamp('18/12/30 17:07:04.245000000','RR/MM/DD HH24:MI:SSXFF'),902,903,'������� ��¥ �̹���ȸ�� �ѹ� ����߰ٳ׿�');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (801,to_timestamp('18/12/30 16:58:52.686000000','RR/MM/DD HH24:MI:SSXFF'),804,801,'�� ��� �;�� !');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (802,to_timestamp('18/12/30 16:58:52.688000000','RR/MM/DD HH24:MI:SSXFF'),802,804,'������ �� ���ƿ�.');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (903,to_timestamp('18/12/30 17:07:04.247000000','RR/MM/DD HH24:MI:SSXFF'),903,901,'����ģ������ ���ָ� �����ҰͰ��׿� ������ ����߰ھ�� ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (701,to_timestamp('18/12/30 17:09:35.135000000','RR/MM/DD HH24:MI:SSXFF'),701,702,'����ѳ� ���ƿ� ~');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (702,to_timestamp('18/12/30 17:09:35.137000000','RR/MM/DD HH24:MI:SSXFF'),701,703,'���� ���� ���� �Դϴ� !!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (703,to_timestamp('18/12/30 17:09:35.139000000','RR/MM/DD HH24:MI:SSXFF'),701,704,'�̷� ���� ���� �����ɿ� ~~! :)');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (704,to_timestamp('18/12/30 17:09:35.142000000','RR/MM/DD HH24:MI:SSXFF'),702,701,'���� �ʹ� ���ƿ� >~< !!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (705,to_timestamp('18/12/30 17:09:35.144000000','RR/MM/DD HH24:MI:SSXFF'),702,703,'�ƴ� �̰��� Ȳ�� ����׿� ~');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (706,to_timestamp('18/12/30 17:09:35.147000000','RR/MM/DD HH24:MI:SSXFF'),702,704,'���� ���� ����ϱ��� ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (707,to_timestamp('18/12/30 17:09:35.150000000','RR/MM/DD HH24:MI:SSXFF'),703,702,'�̷� ����� ������� ���� �����̱��� ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (708,to_timestamp('18/12/30 17:09:35.152000000','RR/MM/DD HH24:MI:SSXFF'),703,701,'�̰��� �ʿ��ϴٰ� ���ϸ� ��� ���� �� �� ����??');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (709,to_timestamp('18/12/30 17:09:35.154000000','RR/MM/DD HH24:MI:SSXFF'),703,704,'�����ϴ� ������ ����׿� ;;;');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (401,to_timestamp('18/12/30 17:10:47.668000000','RR/MM/DD HH24:MI:SSXFF'),404,401,'�� ���� ����ǰ �Ẹ�� �ͳ׿�');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (402,to_timestamp('18/12/30 17:10:47.669000000','RR/MM/DD HH24:MI:SSXFF'),406,402,'�� ���� �߸��� ������?');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (403,to_timestamp('18/12/30 17:10:47.671000000','RR/MM/DD HH24:MI:SSXFF'),410,404,'�̽�Ʈ�� ���� �������� ���� �ʳ���?');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (501,to_timestamp('18/12/30 17:11:35.708000000','RR/MM/DD HH24:MI:SSXFF'),504,501,'�̹� �Ż� ���� �����׿�!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (502,to_timestamp('18/12/30 17:11:35.710000000','RR/MM/DD HH24:MI:SSXFF'),502,504,'���� ���� ����̿��� ��');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (503,to_timestamp('18/12/30 17:11:35.712000000','RR/MM/DD HH24:MI:SSXFF'),506,501,'Ŭ��¡�� �̼��� Ŭ��¡ ���� �� ����_ī���� ��õ�ؿ�!!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (300,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),300,300,'�� �׷���?? ������ ����');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (301,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),301,300,'���ô� ���ñ���');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (302,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),302,300,'��������޾ҽ��ϴ�.~!!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1001,to_timestamp('18/12/30 17:42:43.270000000','RR/MM/DD HH24:MI:SSXFF'),1001,1001,'��ȣ! �� ������ ��õ!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1002,to_timestamp('18/12/30 17:42:43.272000000','RR/MM/DD HH24:MI:SSXFF'),1002,1002,'�� �Ǻΰ� �� �Ǻΰ� ��!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1003,to_timestamp('18/12/30 17:42:43.274000000','RR/MM/DD HH24:MI:SSXFF'),1003,1003,'��Ȥ���� ���.. ����');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1004,to_timestamp('18/12/30 17:42:43.278000000','RR/MM/DD HH24:MI:SSXFF'),1003,1001,'����Ʈ�� �ѷ���¡!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1008,to_timestamp('18/12/30 17:42:43.281000000','RR/MM/DD HH24:MI:SSXFF'),1007,1001,'����.. ����.. ��');
REM INSERTING into REVIEWCONTENTS
SET DEFINE OFF;
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (803,to_timestamp('18/12/30 16:58:52.680000000','RR/MM/DD HH24:MI:SSXFF'),'review803.jpg','��ǰ�� ���� ���۸��� �� ���ͼ� ���� ���ƿ�.',803,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (804,to_timestamp('18/12/30 16:58:52.683000000','RR/MM/DD HH24:MI:SSXFF'),'review804.jpg','���ο��� ��õ���ְ� ���� �������̿��� :)',804,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (805,to_timestamp('18/12/30 16:58:52.684000000','RR/MM/DD HH24:MI:SSXFF'),'review805.jpg','���б� �Ǻ� �ϼ� ~~',804,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (901,to_timestamp('18/12/30 17:06:42.036000000','RR/MM/DD HH24:MI:SSXFF'),'review901.jpg','�㿡 ��� �ٸ��� ����� ������ ���� �����������..�׵��� �Ǻΰ� �ʹ� �����ؼ� �� �߶� Ǫ���ߴµ�.. ���� �������� ������. ���õ� �־��̴ּµ� ������ �ۿ� ���������� ���ٴϱ� ������ ���ֿ�~',901,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (902,to_timestamp('18/12/30 17:06:42.039000000','RR/MM/DD HH24:MI:SSXFF'),'review902.jpg','���ٴ� ���� ���� ����µ� �ǳ� ��θ� �ϴٰ� �ᱹ ���䤻���� ���̽��� ��� �������� �ϰ� �ִ�ϴ�~',904,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (801,to_timestamp('18/12/30 16:58:52.677000000','RR/MM/DD HH24:MI:SSXFF'),'review801.jpg','�ѹ� �� ��� �;�� !',801,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (802,to_timestamp('18/12/30 16:58:52.678000000','RR/MM/DD HH24:MI:SSXFF'),'review802.jpg','�ڿܼ����ܿ� ���� ȿ�����̿��� !',802,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (903,to_timestamp('18/12/30 17:06:42.042000000','RR/MM/DD HH24:MI:SSXFF'),'review903.jpg','��Ʈ�ι��� ���...���� ���鼭 �ʾ �̻� �����÷�����! �׶��̼��ϴϱ� ��ũ���� �ػ����� ���̴��󱸿�',906,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (904,to_timestamp('18/12/30 17:06:42.043000000','RR/MM/DD HH24:MI:SSXFF'),'review9032.jpg','���� �Ǻζ� �Ⱦ�︱�� ������ �� �䷱�� �Ǻ� ������ ���ְŵ��! �ű�� ���ø������ͷ� �÷��� ��� �ö󰡰� �߸����� ��¥ ���ƿ�! ������ �����ѵ��� �ö󰡴µ� �ð��� ������ ��ġ �űⰡ �ڱ� �ڸ������� �Լ��� ? �����ǿ�! ���帳 �����Ͻø� ������õ�մϴ�!!',906,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (905,to_timestamp('18/12/30 17:06:42.047000000','RR/MM/DD HH24:MI:SSXFF'),'review904.jpg','������ �� �Ἥ �ٽ� �籸���߾�� ���� ���������ʰ� �ʹ� ���ƿ� �̰� �� ���� �� �籸���� ������ �� �ʹ� �����ϴ�.',909,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (701,to_timestamp('18/12/30 17:09:08.645000000','RR/MM/DD HH24:MI:SSXFF'),'review701.jpg','����� ����� Ȯ ���󰡴� �������� �߻��� ���ڰ� ������ ���� �������� ����� ���׿�. 2������ �Ǿ� �ֱ���... �⵵ ������ �ʰ� ���� �������� �� ������ �߸��̶� �� ���´� ��ô ���ƿ�. �پ��� Į�� �� ���� �������� ���ھ��.',707,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (702,to_timestamp('18/12/30 17:09:08.648000000','RR/MM/DD HH24:MI:SSXFF'),'review702.jpg','�ʹ� ���� ���ڿ� ������� �Ա���... �ȿ��� ������������ ���� ������ �Դµ� ȯ�溸ȣ�� ���ؼ� ���������� �� �ϳ׿�. ���� �������� �� ¯¯�� ������ ���ڳ׿�. ��Ӵ� �帮���� �����ߴµ� ���� ���� �ٸ�������. ������� �� �߸��� �ݹ� �����',707,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (703,to_timestamp('18/12/30 17:09:08.650000000','RR/MM/DD HH24:MI:SSXFF'),'review703.jpg','�����ֱ⿡ �ڵ�ũ�� �����Ŷ�� �����ߴµ� �������� ���� ����������ʰ� �ʹ� �����ؿ�.',708,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (704,to_timestamp('18/12/30 17:09:08.652000000','RR/MM/DD HH24:MI:SSXFF'),'review704.jpg','�⵵ ���� �ٸ��� ������ �����ϴ٤� �������� ���� ���������� �ʴ°� ������? ������ ������ �ʽ��ϴ�?',708,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (705,to_timestamp('18/12/30 17:09:08.654000000','RR/MM/DD HH24:MI:SSXFF'),'review705.jpg','������ ���� �������� ���ڰ� �߻��ǰ�, �ٸ��� �Ǿ�� ��äȭ �������� ����� ǥ���Ǿ� �� ������~',709,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (706,to_timestamp('18/12/30 17:09:08.657000000','RR/MM/DD HH24:MI:SSXFF'),'review706.jpg','��������������ƴ����������̶������ָ�������~~�����ε����ֿ¶��μ��α����ϰ�ͳ׿�~^^',709,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (707,to_timestamp('18/12/30 17:09:08.659000000','RR/MM/DD HH24:MI:SSXFF'),'review707.jpg','������������ �߼��� �ְ��ؼ� ������.���Ƽ� ���������� �����߽��ϴ� ����ģ���� �������� �߻���մϴ� ��󸮹ڽ��� ��Ű�� �����̶� �ְ� �޴±���� �ι��ϲ����ƿ� �̹̻�����ε� ����� �￩���� ��Ŀ����ε� ������ ���� �����ϰڽ��ϴ� �������ε� ���󺸶� �ؼ� ���ڰ� �⵵ ������� �Ǹ��ѻ�ǰ.��� Ī���մϴ�',710,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (708,to_timestamp('18/12/30 17:09:08.662000000','RR/MM/DD HH24:MI:SSXFF'),'review708.jpg','��ȹ��Ʈ�� �����ؼ� �ҿ뷮���� �־��. ���� ���ſ�� �޴��� ���̿���. ���������� �� ���Ƽ� �ٽ� �����ؼ� ���� �ٷ��� ����. ������ �� �Ĵ����ؼ� ������ ���� ��� �����Ű��ƿ�. ������ ���������� �����Ű����� ���� ���� ���� ����.',710,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (401,to_timestamp('18/12/30 17:10:47.659000000','RR/MM/DD HH24:MI:SSXFF'),'review401.jpg','�̸��� �� �̸��� �˰� ���� ��ã�ƿ�',407,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (402,to_timestamp('18/12/30 17:10:47.660000000','RR/MM/DD HH24:MI:SSXFF'),'review402.jpg','��ũ���� �����Ͽ� �ѹ��� �ϸ� �ʹ� ���ƿ�. �ʹ� ��ĥ���� �ʰ� ����� ������ ����� ���ƿ�',408,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (403,to_timestamp('18/12/30 17:10:47.662000000','RR/MM/DD HH24:MI:SSXFF'),'review403.jpg','���� ���� �ɾ �̸��Ѱ� �����',409,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (404,to_timestamp('18/12/30 17:10:47.664000000','RR/MM/DD HH24:MI:SSXFF'),'review404.jpg','�ƹ����� ���� ���µ� �ʹ��ʹ� ���ƿ�',409,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (405,to_timestamp('18/12/30 17:10:47.666000000','RR/MM/DD HH24:MI:SSXFF'),'review405.jpg','���� �� �Ѹ��� �̷� ��� ���� �� �����',410,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (501,to_timestamp('18/12/30 17:11:35.697000000','RR/MM/DD HH24:MI:SSXFF'),'review501.jpg','��ŭ�� ������ ������ �ڱ����ֳ׿�. ��ŭ�� �ڸ��� ���������� ��Ʈ�����ϰ� �������� ���� ǳ���ϰ� ��췯���� �������� ���ӵǴ� �̱׷��� ��ŭ�� �����̿��� :D',501,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (502,to_timestamp('18/12/30 17:11:35.699000000','RR/MM/DD HH24:MI:SSXFF'),'review502.jpg','������ ���� �� �������� ������, �̸��� �� �������°�... ��Ʈ������ ���� �޴ٺ��ϱ� �Գ׿� �� �̹��� ��õ ���� ��ǰ�̶� ��� ���� �Ⱓ�� �ΰ� ��߰����� ���� �� 3���� �ε� ������������! �� �� ����� ���� �͵� ��õ�ؿ�',502,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (503,to_timestamp('18/12/30 17:11:35.701000000','RR/MM/DD HH24:MI:SSXFF'),'review503.jpg','�������� ��Ʈ���� ���̶�� �ϴµ� ����� �ڸ� �迭�� ���� ���̿��� �ʹ� ���ƿ�!',503,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (504,to_timestamp('18/12/30 17:11:35.703000000','RR/MM/DD HH24:MI:SSXFF'),'review5032.jpg','��ǰ�� ������ ǳ���ϰ� ������ ������ ��ŭ�� ��������� ����ؼ� �ʹ� ���Ҿ��!',503,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (505,to_timestamp('18/12/30 17:11:35.705000000','RR/MM/DD HH24:MI:SSXFF'),'review504.jpg','2018 �Ż� ��ǰ �߶�þ��. ��ħ���� �� �߶�⵵ �ϰ� �߻��� ���Ƽ� ���������ϱ� ���� ���ؿ�. �����غ�����^^*!',504,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (300,to_timestamp('18/12/30 03:43:20.823000000','RR/MM/DD HH24:MI:SSXFF'),'review_300.png','���̽ó���?',301,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (301,to_timestamp('18/12/30 03:43:24.044000000','RR/MM/DD HH24:MI:SSXFF'),'review_301.png','�̴̰ϴ�������',301,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (302,to_timestamp('18/12/30 03:44:52.466000000','RR/MM/DD HH24:MI:SSXFF'),'review_302.png','��??�� ������?',302,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (303,to_timestamp('18/12/30 03:44:54.542000000','RR/MM/DD HH24:MI:SSXFF'),'review_303.png','������������ �̷������� ���������',303,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (304,to_timestamp('18/12/30 03:44:59.329000000','RR/MM/DD HH24:MI:SSXFF'),'review_304.png','�̹��� ���䰡 �����󱸿� Ȯ���ϰ� �˷��ְ� ',303,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (305,to_timestamp('18/12/30 03:45:01.729000000','RR/MM/DD HH24:MI:SSXFF'),'review_305.png','������������ �� �����ϴ�.',304,1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1001, systimestamp,'review1001.jpg','���� ������ ������ ���� ������ �̰����θ� �����Ұſ���111.',1001, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1002, systimestamp,'review1002.jpg','���� ������ ������ ���� ������ �̰����θ� �����Ұſ���222.',1001, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1003, systimestamp,'review1003.jpg','�Ǻ� ���� ������� ���Ǻ� ��� �׷��ݾƿ�. �װ� �ٷ� ���ϴ� ����111.',1002, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1004, systimestamp,'review1004.jpg','�Ǻ� ���� ������� ���Ǻ� ��� �׷��ݾƿ�. �װ� �ٷ� ���ϴ� ����222.',1002, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1005, systimestamp,'review1005.jpg','��ǰ�� �Ͼ�� ó�� �� �Ǻε� �Ͼ�� �Ǿ����ϴ�. �� ���ܶ�!111.',1003, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1006, systimestamp,'review1006.jpg','��ǰ�� �Ͼ�� ó�� �� �Ǻε� �Ͼ�� �Ǿ����ϴ�. �� ���ܶ�!222.',1003, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1007, systimestamp,'review1007.jpg','�ڿܼ��� ���� �����ϳ׿�!!! ���� ���� ��ǰ�Դϴ�.111',1004, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1008, systimestamp,'review1008.jpg','�ڿܼ��� ���� �����ϳ׿�!!! ���� ���� ��ǰ�Դϴ�.222',1004, 2);


REM INSERTING into REVIEWS
SET DEFINE OFF;
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (803,803,'�Ǻΰ� ���������.',to_timestamp('18/12/30 16:58:52.655000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,802,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (804,804,'����ũ�� �����ϱ� ���� ����ϸ� ���ƿ�.',to_timestamp('18/12/30 16:58:52.656000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,801,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (805,805,'������ �ָ� �ȳ� !',to_timestamp('18/12/30 16:58:52.659000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,804,'T','���� ����غ��ϱ� ������ �ָ��� Ȯ���� �پ����.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (806,806,'��� 3����',to_timestamp('18/12/30 16:58:52.663000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,803,'T','������� 3������ �����µ� �Լ����� ���Ⱑ ����.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (807,807,'������ �����ϳ׿�.',to_timestamp('18/12/30 16:58:52.665000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,802,'T','���� ����� �� ���ƿ�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (808,808,'�������ſ� �� �ʿ��� ������!',to_timestamp('18/12/30 16:58:52.667000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,801,'T','���� ������ ����̿��µ� �� ��ǰ�� ��� �� �Ŀ� ����� �������� ~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (809,809,'�Ӹ��� ���Ⱑ ������ !',to_timestamp('18/12/30 16:58:52.670000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,804,'T','�ֺ� ������ ��õ���༭ ����غôµ� �±� !');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (810,810,'�޴뼺�� ���ƿ� ~',to_timestamp('18/12/30 16:58:52.674000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,803,'T','���� �����ؼ� ���� �޴뼺�� ���� ~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (901,901,'��⸸�� �ٽ� ���������� ���ƿԾ��.',to_timestamp('18/12/30 17:05:34.940000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,904,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (902,904,'������� ���� ���ƿ�.',to_timestamp('18/12/30 17:05:34.943000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,902,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (801,801,'�� ����ϰ� �;�� !!!',to_timestamp('18/12/30 16:58:52.651000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,804,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (802,802,'�ڿܼ� ���ܿ� ȿ�����̿���.',to_timestamp('18/12/30 16:58:52.652000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,803,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (903,906,'���� �ʹ� �̻���',to_timestamp('18/12/30 17:05:34.946000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,902,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (904,909,'����Ƽ�δ� ��� �������� �� �Ẹ�� �ֳ׿�',to_timestamp('18/12/30 17:05:34.948000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,903,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (905,902,'����Ƽ�δ� ��ũ�� �ı�',to_timestamp('18/12/30 17:05:34.950000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,901,'T','���бⰡ ������ �ٸ��� �� �� ���� ���������ŷ���. ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (906,903,'�ε�ε��ؿ�',to_timestamp('18/12/30 17:05:34.952000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,903,'T','��õ���� �����ߴµ� ��ǰ�� �ε巴�� �� �ı�׿� ������ ����� �ʾƼ� ���ƿ�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (907,905,'�����ؿ�',to_timestamp('18/12/30 17:05:34.954000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,904,'T','�����մϴ� ��¦��¦���� ������ �����ϰ� ���̴µ� �����̳׿�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (908,908,'��Ⱑ �ʹ� ���ƿ�',to_timestamp('18/12/30 17:05:34.956000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,901,'T','����ģ������ �����ߴµ� �ʹ� �����ϳ׿� ���� �þ��� ���� �ܿﺸ�ٴ� �������� �� ���� �� ���׿�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (909,904,'������� �׳� �׷��׿�',to_timestamp('18/12/30 17:05:34.959000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,902,'T','�������� �����Դϴ�. ���� �ߴ´����� ���� 8�ð� ���� �̷��� �ƴѰͰ��ƿ� �� ���� ��Ʈ�մϴ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (910,909,'�ʹ� �����׿� ',to_timestamp('18/12/30 17:05:34.961000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,904,'T','���ϸ鼭 ���� ������ �ʾ� �ܿ￡�� ����,,�ʹ� ��� �����Դϴ�. ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (701,701,'�� ������ ��¥ �����ϴ� !!',to_timestamp('18/12/30 17:08:55.985000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,701,'T','�ξ� ��Ų �μ� ����� �� �Ǵ°� ���ƿ� ���� �ϰ� ���� ���!! ��⵵ �� ��޽����� ���ڰ� ���� ���� ȭ��ص� �Ǻ�Ÿ�Կ� ���� �յڰ� �޶� �ǿ����̿���~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (702,702,'�� ����Ʈ �������� ���׿�~',to_timestamp('18/12/30 17:08:55.988000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,702,'T','�ڿܼ� ���ܻ� �ƴ϶� �ϻ� ��Ȱ�� ��� ����Ʈ ���͸� ������� �Ǻθ� �ѹ��� ��ȣ�� �شٴ� ��� �����Ʈ ������Ʈ ũ���� ����� �����̸� ��ɵ� �־� ���� ȭ���� �Ĳ��ϰ� �߶��ִ� �ѵ� ���ѵ� �����ϸ鼭�� ȭ���� ���̴� ��ä�Ǻη� ����� �ֳ׿� ^^ �ſ� ����~~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (703,703,'ȭ��Ʈ ���α׷� �� Ŭ��¡ �� ��¥ �����ϴ� :) ',to_timestamp('18/12/30 17:08:55.990000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,703,'T','������ ���� �Ǻ����� ������� �̹�ȿ���� ���ƿ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (704,704,'�����ߴµ� ����Ż ������ ������ ���̽� �����ϴ� !!',to_timestamp('18/12/30 17:08:55.992000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,704,'T','�Ƴ��� �ε巯�������� ���� ��ϴ� ����ϰ� ǥ���ȴٰ� �ϳ׿�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (705,705,'�÷���-�� ���� ���� �״��̳׿�;;',to_timestamp('18/12/30 17:08:55.994000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,701,'T','����ǰ�̶� ������� ���� ���� ��µ��� ���� �������ϴ� �κа� ����ũ�� ������ �κ��� �������̶� �����ؿ� ���� ������ ũ���� �����⵵ �ϰ� �Ѳ� ������ ��¦ �̸� ������ ������ �ϴ� �κ��� ���� �о����� ���پ�� ���� ��ǰ�������� �����Ǿ��� �մϴ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (706,706,' �� ��ũ���� ���γ׿� :( ',to_timestamp('18/12/30 17:08:55.997000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,702,'T','�ݹ� �ڶ��̶� �޸��� ��ũ�� ���� ���� ���ƿ� �� �� ��µ� ���� �׸��� ���̽��� �ʹ� ũ�� ���̽��� ������ ���� �־ ���ÿ� �޸����� �ݹ� ������ ���� Ȳ��. ���� ������ ��ü�� ������ �������� ��� �޸������� �޹��ڶ����� ������ �Ȱ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (707,707,'���� ������ �÷� �����ϴ� !!',to_timestamp('18/12/30 17:08:55.999000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,703,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (708,708,'��� ���� ��Ǿ�� �ٵ� �μ� ���׿�~',to_timestamp('18/12/30 17:08:56.001000000','RR/MM/DD HH24:MI:SSXFF'),'T',3,704,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (709,709,'���־��� ���̽� �����̴� ���� ���̾�������',to_timestamp('18/12/30 17:08:56.003000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,701,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (710,710,'�ͼ��ų� �� �� ��Ǿ ���������� ���׿�',to_timestamp('18/12/30 17:08:56.005000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,702,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (401,401,'���ο� ����! ����!',to_timestamp('18/12/30 17:10:47.638000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,401,'T','�긮Ƽ�� ���� ���� �ٵ���͸� �Ẹ�� ���� �ʹ� ���Ƽ� �õ��� ���Ҵµ� �����̳׿�. ������ ��ȫ�� �ƴ϶�...����');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (402,402,'�׻󾲴� it item',to_timestamp('18/12/30 17:10:47.640000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,402,'T','�μ�Ÿ���� ��ũ���� �ſ� ��ȣ�ϴµ� �̸��� �� �����. 5�����ε� ���ڶ� ���� ������!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (403,403,'Ʈ������ ����̽ö��',to_timestamp('18/12/30 17:10:47.643000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,403,'T','���� ���� ���� ���帧�� ����� �� ���� ���� ���ϸ� �������� �ƴ�����!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (404,404,'���� ������� ����',to_timestamp('18/12/30 17:10:47.645000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,404,'T','�츮�� ���ڻ������ ���ؼ� �� ���Ҵµ� �⵵ ���� �ξ� �ֲ��غ��̳׿�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (405,405,'���� �ָ��� ������ ����',to_timestamp('18/12/30 17:10:47.647000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,401,'T','�׷� ���̶� ����� ������ ������ ���ٵ����� �����ؾ��ؿ�');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (406,406,'������ �ܿ￡ ��',to_timestamp('18/12/30 17:10:47.649000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,402,'T','�ܿ��̶� �׷��� �Լ��� ��¦ ��¦ �����µ� �ӻ��ϳ׿� �̰� ���� �ܿ��� ������ ...');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (407,407,'�ܿ￡ �ε巴�� ������ ���� �ڵ�ũ��',to_timestamp('18/12/30 17:10:47.651000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,403,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (408,408,'��쳪 ��� ��ũ��',to_timestamp('18/12/30 17:10:47.652000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,404,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (409,409,'�ƹ����� ����',to_timestamp('18/12/30 17:10:47.654000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,402,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (410,410,'������ ����',to_timestamp('18/12/30 17:10:47.656000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,401,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (501,510,'�����ϰ� ��� ���� ���� �ְ���',to_timestamp('18/12/30 17:11:35.670000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,501,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (502,509,'Ż��.. �̹��� �� �༮ ���� �ſ���',to_timestamp('18/12/30 17:11:35.672000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,502,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (503,508,'1+1 �⵵ ���� ���ݵ� ����',to_timestamp('18/12/30 17:11:35.676000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (504,507,'2018 ���� �Ż� ���� ü��',to_timestamp('18/12/30 17:11:35.678000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,503,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (505,506,'�̹��� ���������ϰ�',to_timestamp('18/12/30 17:11:35.681000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,501,'T','�Ǻ��濡 ����ϰ� �ڿ������� ������ ���ؼ� �����غþ��!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (506,505,'£�� ��ȭ������',to_timestamp('18/12/30 17:11:35.685000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,503,'T','������ �����̳� ����� �ڿ������� ȭ���� �����ؼ� �� ��ǰ�� ��þ�� ���� �� ���ƿ�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (507,504,'�Ǻο� ���⸦',to_timestamp('18/12/30 17:11:35.687000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'T','�Ǻο� �Ű��� ���� ���ٺ��� ��ä�Ǻ�, �� ���� �̷� �κ� �Ű��� �����󱸿� ���� ��ǰ ���ƿ�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (508,503,'������ ��Ƽ�ϰ� �Ŀ�!',to_timestamp('18/12/30 17:11:35.690000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,501,'T','������ ��Ƽ�ϰ� ȭ���� £���� Ŭ��¡ �ϴµ� �ǰ� ���� �� ���ƿ�!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (509,502,'��ī�鿡�� �����߾��',to_timestamp('18/12/30 17:11:35.693000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,502,'T','��ī�鿡�� ������ ��µ� �ǰ� �����߾��. �ʵ��л� ��鿡�� ����. �ڱ����� ��ǰ�� ���߾��.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (510,501,'���� ��ʴ� ����ó',to_timestamp('18/12/30 17:11:35.695000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'T','�Ź� ���� �귣�带 ��� ���� �Ǵ� ������ �ֳ׿� ��ǰ ���� ��õ�ؿ�!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (300,300,'�Ϳ� �̰� �����̴�',to_timestamp('18/12/30 03:04:43.144000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,300,'T','ó�� ����� �ôµ� ���Ǻο� ���� �߸³׿�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (301,301,'�׳� �����̳׿�',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,300,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (302,302,'�߸��� �������ƿ�',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,301,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (303,303,'���� 3��° ��� ���Դϴ�. �� ������',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,302,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (304,304,'�����״� �ȸ´°Ű��ƿ�..',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,302,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (305,305,'ȭ���ϴ� ���׿� ~!!�����Դϴ�.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,303,'T','�̰� ���� ������ ������.. ��Ѱ� ���� ���̿���.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (306,306,'������ �������ؿ�',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'T',4,301,'T','��Ӵ����� �����ߴµ� ���� �����Ͻʴϴ�. ����');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (307,307,'��ũ���� �ʿ��ϱ��� ���ô� ���ó׿�',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,300,'T','�� ���� �� ������ �Ǻο� �� �´°Ű���?G��');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (308,308,'������ ��Ⱑ �������ʳ׿�.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,303,'T','��ҿ� ����� ��ܾ��� ���� �ƴ����� �̰� ���׿� ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (309,309,'�α����񴩸� ���ٰ� ���� �ż����Դϴ�.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,300,'T','���� �׳� ����񴩷� �����ϴ� ���ܵ���.. �� �̰ŷ� �����ϴϱ� ���� ���׿�..');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1001,1001,'�Ҷ߹��� �����ϵ���',to_timestamp('18/12/30 17:40:06.249000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1001,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1002,1002,'�Ǻο��� ����..',to_timestamp('18/12/30 17:40:06.252000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1002,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1003,1003,'���� �Ͼ����',to_timestamp('18/12/30 17:40:06.256000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1003,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1004,1004,'�ڿܼ��� �Ⱦ..',to_timestamp('18/12/30 17:40:06.258000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1004,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1005,1005,'�˷ο��� �ÿ���',to_timestamp('18/12/30 17:40:06.260000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,1001,'T','���� �˷ο��� �ڿܼ� ���� ȿ���� Ź������! ������, �뷮�� �ʹ� ��� �ƽ��׿�. ��');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1006,1006,'�Ŀ� �˷ο�!!',to_timestamp('18/12/30 17:40:06.265000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,1002,'T','�ڿܼ��� ���� �����ϳ׿�!!! ���� ���� ��ǰ�Դϴ�. �˷ο��� �����Ե� �� �� �ϰ� �뷮�� ���׿�.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1007,1007,'�ڲ� ������ �����ؼ�..',to_timestamp('18/12/30 17:40:06.266000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1003,'T','����ũ���� ��µ� ���� �󱼿��� ������ ������ �ʽ��ϴ�. ���ܶ�!!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1008,1008,'�ο���϶� ��ôµ�',to_timestamp('18/12/30 17:40:06.270000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,1004,'T','���� �ο����� �ʳ׿�. ���� ������. ������.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1009,1009,'������ ���� �ڲ� ����',to_timestamp('18/12/30 17:40:06.273000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1001,'T','�� ��ǰ�� ��ôµ� ������ ��Ƽ�� �� ���� �Ǿ����ϴ�. �� ����!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1010,1010,'������ �������� ���ƿ�.',to_timestamp('18/12/30 17:40:06.277000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,1002,'T','�ٴ� �뷮�� ���� ���Ӽ��� �������׿�. �ƽ����ϴ�.');
REM INSERTING into SECONDS
SET DEFINE OFF;
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (1,'��Ų�ɾ�','B',to_timestamp('18/12/31 16:23:18.941000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (2,'���ɾ�','B',to_timestamp('18/12/31 16:23:18.949000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (3,'Ŭ��¡','B',to_timestamp('18/12/31 16:23:18.955000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (4,'���̽�','M',to_timestamp('18/12/31 16:23:18.960000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (5,'����','M',to_timestamp('18/12/31 16:23:18.967000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (6,'��&ġũ','M',to_timestamp('18/12/31 16:23:18.973000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (7,'����','M',to_timestamp('18/12/31 16:23:18.979000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (8,'�ٵ��ɾ�','E',to_timestamp('18/12/31 16:23:18.984000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (9,'����ɾ�','E',to_timestamp('18/12/31 16:23:18.990000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (10,'���','E',to_timestamp('18/12/31 16:23:18.995000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (803,'test803','1111','���γ�','W',to_date('82/06/05','RR/MM/DD'),'D','U',null,null,null,null,'inna.jpg',null,null,to_timestamp('18/12/30 16:58:49.239000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (804,'test804','1111','������','W',to_date('89/08/31','RR/MM/DD'),'C','U',null,null,null,null,'heasun.jpg',null,null,to_timestamp('18/12/30 16:58:49.241000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (805,'test805','1111',null,null,null,null,'C','(��)�̴Ͻ�����','�̴Ͻ�����','080-380-0114','https://www.innisfree.com/','innisfree.jpg',null,null,to_timestamp('18/12/30 16:58:49.244000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (901,'eunwoo','1111','������','M',to_date('97/03/30','RR/MM/DD'),'O','U',null,null,null,null,'eunwoo.jpg',null,null,to_timestamp('18/12/30 17:00:52.393000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (902,'juhyun','1111','������','W',to_date('91/03/29','RR/MM/DD'),'N','U',null,null,null,null,'juhyun.jpg',null,null,to_timestamp('18/12/30 17:00:52.396000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (801,'test801','1111','������','W',to_date('91/08/22','RR/MM/DD'),'O','U',null,null,null,null,'joboa.jpg',null,null,to_timestamp('18/12/30 16:58:49.234000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (802,'test802','1111','�ѿ���','M',to_date('84/12/23','RR/MM/DD'),'N','U',null,null,null,null,'yeri.jpg',null,null,to_timestamp('18/12/30 16:58:49.237000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (903,'ryeonwon','1111','������','W',to_date('81/01/21','RR/MM/DD'),'D','U',null,null,null,null,'ryeowon.jpg',null,null,to_timestamp('18/12/30 17:00:52.399000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (904,'jungah','1111','������','W',to_date('72/07/28','RR/MM/DD'),'C','U',null,null,null,null,'jungah.jpg',null,null,to_timestamp('18/12/30 17:00:52.401000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (905,'ESTEELAUDER','1111',null,null,null,null,'C','�̿��������ѱ�(��)','����Ƽ�δ�','02-3440-2522','https://www.esteelauder.co.kr','esteelauder.png',null,null,to_timestamp('18/12/30 17:00:52.404000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (701,'test701','1111','�Ǽ���','W',to_date('94/05/13','RR/MM/DD'),'D','U',null,null,null,null,null,null,null,to_timestamp('18/12/30 17:08:06.450000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (702,'test702','1111','�����','W',to_date('04/08/31','RR/MM/DD'),'N','U',null,null,null,null,'profile_702.jpg',null,null,to_timestamp('18/12/30 17:08:06.454000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (703,'test703','1111','������','W',to_date('85/02/27','RR/MM/DD'),'O','U',null,null,null,null,'profile_703.jpg',null,null,to_timestamp('18/12/30 17:08:06.456000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (704,'test704','1111','�ּ���','M',to_date('62/12/18','RR/MM/DD'),'C','U',null,null,null,null,'profile_704.jpg',null,null,to_timestamp('18/12/30 17:08:06.458000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (705,'test705','1111',null,null,null,null,'C','(��)��Ƽ���','���','080-023-5454','https://www.hera.com/kr/ko/','hera.jpg',null,null,to_timestamp('18/12/30 17:08:06.460000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (401,'dylan','1111','Dylan','M',to_date('91/09/17','RR/MM/DD'),'D','U',null,null,null,null,'dylan.png',null,null,to_timestamp('18/12/30 17:10:44.905000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (402,'felly','1111','Felicia','W',to_date('64/10/20','RR/MM/DD'),'N','U',null,null,null,null,'felly.png',null,null,to_timestamp('18/12/30 17:10:44.909000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (403,'clara','1111','Clara','W',to_date('59/10/18','RR/MM/DD'),'O','U',null,null,null,null,'clara.png',null,null,to_timestamp('18/12/30 17:10:44.912000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (404,'ai','1111','Ai','W',to_date('84/02/08','RR/MM/DD'),'C','U',null,null,null,null,'ai.png',null,null,to_timestamp('18/12/30 17:10:44.915000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (405,'THEBODYSHOP','1111',null,null,null,null,'C','(��)�񿡽��������۷��̼�','���ٵ�','080-759-7700','https://www.thebodyshop.co.kr/','thebodyshop.jpg',null,null,to_timestamp('18/12/30 17:10:44.917000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (501,'qhsk','1111','����','W',to_date('95/08/19','RR/MM/DD'),'O','U',null,null,null,null,'qhsk.jpg',null,null,to_timestamp('18/12/30 17:11:33.151000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (502,'gusqls','1111','����','M',to_date('82/09/25','RR/MM/DD'),'N','U',null,null,null,null,'gusqls.jpg',null,null,to_timestamp('18/12/30 17:11:33.154000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (503,'tkfkd','1111','����','W',to_date('78/01/12','RR/MM/DD'),'D','U',null,null,null,null,'tkfkd.jpg',null,null,to_timestamp('18/12/30 17:11:33.157000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (504,'tjdfud','1111','�輺��','W',to_date('67/02/08','RR/MM/DD'),'C','U',null,null,null,null,'tjdfud.jpg',null,null,to_timestamp('18/12/30 17:11:33.159000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (505,'NATUREREPUBLIC','1111',null,null,null,null,'C','(��)����ó���ۺ�','����ó���ۺ�','080-890-6000','https://www.naturerepublic.com/','naturerepublic.jpg',null,null,to_timestamp('18/12/30 17:11:33.162000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (302,'test302','1111','������','W',to_date('84/01/22','RR/MM/DD'),'D','U',null,null,null,null,'profile_302.png',null,null,to_timestamp('18/12/30 01:07:22.963000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (300,'test300','1111','�����','M',to_date('91/07/25','RR/MM/DD'),'C','U',null,null,null,null,'profile_300.png',null,null,to_timestamp('18/12/30 00:29:12.622000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (301,'test301','1111','������','W',to_date('81/05/30','RR/MM/DD'),'N','U',null,null,null,null,'profile_301.png',null,null,to_timestamp('18/12/30 01:07:22.952000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (303,'test303','1111','�ճ���','W',to_date('04/05/10','RR/MM/DD'),'O','U',null,null,null,null,'profile_303.png',null,null,to_timestamp('18/12/30 01:07:22.967000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (304,'test304','1111',null,null,null,null,'C','�Ƹ��۽���','��ȭ��',null,null,'profile_304.png','buisnessImg.png','106-85-12345',to_timestamp('18/12/30 01:08:38.639000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1001,'test1001','1111','�躴��','M',to_date('90/09/13','RR/MM/DD'),'N','U',null,null,null,null,'1001.jpg',null,null,to_timestamp('18/12/30 17:36:25.991000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1002,'test1002','1111','������','M',to_date('80/11/12','RR/MM/DD'),'O','U',null,null,null,null,'1002.jpg',null,null,to_timestamp('18/12/30 17:36:25.997000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1003,'test1003','1111','�ѿ���','W',to_date('71/11/12','RR/MM/DD'),'O','U',null,null,null,null,'1003.jpg',null,null,to_timestamp('18/12/30 17:36:26.001000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1004,'test1004','1111','������','W',to_date('69/07/12','RR/MM/DD'),'C','U',null,null,null,null,'1004.jpg',null,null,to_timestamp('18/12/30 17:36:26.007000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1005,'skinfood','1111',null,null,null,null,'C','(��)��ŲǪ��','��ŲǪ��','02-597-4191','http://www.theskinfood.com','skinfood.jpg',null,'214-09-21233',to_timestamp('18/12/30 17:38:05.877000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into WARNS
SET DEFINE OFF;
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (1,'���ƿ���̵�Ͻ���翣','Ż��,�Ǻ� ���ι���,�˷�������',to_timestamp('18/12/31 16:23:06.671000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (2,'�̳׶�����','���帧 ����,���ҹ��� ����,�������� ����,�Ǻ� ��ȭ',to_timestamp('18/12/31 16:23:06.678000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (3,'��ƿ���̵�Ͻþƴϼ�','������ �̻�,�˷���,�� ����',to_timestamp('18/12/31 16:23:06.684000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (4,'�Ҹ���־���','�Ǻ����� �ڱ�(�˷������� ����)',to_timestamp('18/12/31 16:23:06.690000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (5,'��ƿ����õ����ϸ�ź','Ȱ����� ����, DNA �ջ�',to_timestamp('18/12/31 16:23:06.696000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (6,'�������-3','ȣ���, ��ȭ�����, �˷��� ����',to_timestamp('18/12/31 16:23:06.701000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (7,'�̴̹�������ҿ췹��','�ƹڼ� ����,�����˵����� ����,�Ǻ� ���� ����',to_timestamp('18/12/31 16:23:06.707000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (8,'0-���̸�-5��','�����ڱ�,����, ���帧,�ε巯�� ����',to_timestamp('18/12/31 16:23:06.713000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (9,'�̼������ʾ��ڿ�','����,ȫ��,��������,���� ����',to_timestamp('18/12/31 16:23:06.719000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (10,'�ҵ��츱������Ʈ','�鳻��,�Ǻΰ���,�� ����',to_timestamp('18/12/31 16:23:06.725000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (11,'���','���� �����ϴ� ������ ��Ī�Ͽ� ���� ǥ���Ͽ� ��ü�� �˼�����',to_timestamp('18/12/31 16:23:06.730000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (13,'Ʈ����ź�þƹ�','�ȱ���ȯ,���,�Ǻΰ��� ����. �������� ����',to_timestamp('18/12/31 16:23:06.736000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (14,'Ʈ���̼������ǿþƹ�','������ �������ŷ� �Ǻ� ���� ����',to_timestamp('18/12/31 16:23:06.741000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (15,'Ʈ��Ŭ�λ�','�鿪��, �����ɷ� ���� ������ ���к� ��ֹ���',to_timestamp('18/12/31 16:23:06.746000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (16,'�Ķ�','���˼��Ǻο�, �˷���, ���, �ָ��� ����. ���к� ��ֹ�',to_timestamp('18/12/31 16:23:06.752000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (17,'���ÿ�ź��','��ǥ���� ������� ü�� ��� �� �����ۿ� �� �ڱ�����',to_timestamp('18/12/31 16:23:06.758000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (18,'������ƿ���۶�����','����,���� ���,�˷��� ����',to_timestamp('18/12/31 16:23:06.763000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (19,'�ռ�������','��ǰ���� ����ص� ���輺�� ���ٰ� �� �� ����',to_timestamp('18/12/31 16:23:06.770000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (20,'ȣ�����','�Ǿ�ǰ�� ����� �����ν� ���ھ����� �������� ����',to_timestamp('18/12/31 16:23:06.777000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (12,'Ÿ��','����, ����, ����, �̸� ����. �Ǻ��ڱ��� ����.',to_timestamp('18/12/31 16:49:13.979000000','RR/MM/DD HH24:MI:SSXFF'));
--------------------------------------------------------
--  DDL for Index PK_EVENTIMGS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EVENTIMGS" ON "EVENTIMGS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EVENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EVENTS" ON "EVENTS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ITEMS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ITEMS" ON "ITEMS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ITEMWARNS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ITEMWARNS" ON "ITEMWARNS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_LIKES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_LIKES" ON "LIKES" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PROBLEMS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROBLEMS" ON "PROBLEMS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PROBLEMTYPES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROBLEMTYPES" ON "PROBLEMTYPES" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REPLIES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REPLIES" ON "REPLIES" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEWCONTENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REVIEWCONTENTS" ON "REVIEWCONTENTS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEWS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REVIEWS" ON "REVIEWS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SECONDS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SECONDS" ON "SECONDS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_USERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_USERS" ON "USERS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_WARNS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_WARNS" ON "WARNS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Function CUSTOM_AUTH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CUSTOM_AUTH" (p_username in VARCHAR2, p_password in VARCHAR2)
return BOOLEAN
is
  l_password varchar2(4000);
  l_stored_password varchar2(4000);
  l_expires_on date;
  l_count number;
begin
-- First, check to see if the user is in the user table
select count(*) into l_count from demo_users where user_name = p_username;
if l_count > 0 then
  -- First, we fetch the stored hashed password & expire date
  select password, expires_on into l_stored_password, l_expires_on
   from demo_users where user_name = p_username;

  -- Next, we check to see if the user's account is expired
  -- If it is, return FALSE
  if l_expires_on > sysdate or l_expires_on is null then

    -- If the account is not expired, we have to apply the custom hash
    -- function to the password
    l_password := custom_hash(p_username, p_password);

    -- Finally, we compare them to see if they are the same and return
    -- either TRUE or FALSE
    if l_password = l_stored_password then
      return true;
    else
      return false;
    end if;
  else
    return false;
  end if;
else
  -- The username provided is not in the DEMO_USERS table
  return false;
end if;
end;



/
--------------------------------------------------------
--  DDL for Function CUSTOM_HASH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := 'ESCQP14JXQE86S8C82YMAARLMBR9XQ';
begin

-- This function should be wrapped, as the hash algorhythm is exposed here.
-- You can change the value of l_salt or the method of which to call the
-- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords
-- if you choose to do this.

l_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5
  (input_string => p_password || substr(l_salt,10,13) || p_username ||
    substr(l_salt, 4,10)));
return l_password;
end;



/
--------------------------------------------------------
--  Constraints for Table EVENTIMGS
--------------------------------------------------------

  ALTER TABLE "EVENTIMGS" ADD CONSTRAINT "PK_EVENTIMGS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "EVENTIMGS" MODIFY ("EVENT_NO" NOT NULL ENABLE);
  ALTER TABLE "EVENTIMGS" MODIFY ("IMG" NOT NULL ENABLE);
  ALTER TABLE "EVENTIMGS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "EVENTIMGS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EVENTS
--------------------------------------------------------

  ALTER TABLE "EVENTS" ADD CONSTRAINT "PK_EVENTS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "EVENTS" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("END_DATE" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("START_DATE" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "EVENTS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ITEMS
--------------------------------------------------------

  ALTER TABLE "ITEMS" ADD CONSTRAINT "PK_ITEMS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ITEMS" MODIFY ("SECOND_NO" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("FIRST" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("IMG" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("DETAIL_IMG" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("SKIN" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("AGE" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("VOLUME" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "ITEMS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ITEMWARNS
--------------------------------------------------------

  ALTER TABLE "ITEMWARNS" ADD CONSTRAINT "PK_ITEMWARNS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ITEMWARNS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "ITEMWARNS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIKES
--------------------------------------------------------

  ALTER TABLE "LIKES" ADD CONSTRAINT "PK_LIKES" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LIKES" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "LIKES" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "LIKES" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "LIKES" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROBLEMS
--------------------------------------------------------

  ALTER TABLE "PROBLEMS" ADD CONSTRAINT "PK_PROBLEMS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PROBLEMS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "PROBLEMS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "PROBLEMS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROBLEMTYPES
--------------------------------------------------------

  ALTER TABLE "PROBLEMTYPES" ADD CONSTRAINT "PK_PROBLEMTYPES" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PROBLEMTYPES" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "PROBLEMTYPES" MODIFY ("PROB_NO" NOT NULL ENABLE);
  ALTER TABLE "PROBLEMTYPES" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPLIES
--------------------------------------------------------

  ALTER TABLE "REPLIES" ADD CONSTRAINT "PK_REPLIES" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "REPLIES" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "REPLIES" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "REPLIES" MODIFY ("REVIEW_NO" NOT NULL ENABLE);
  ALTER TABLE "REPLIES" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "REPLIES" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEWCONTENTS
--------------------------------------------------------

  ALTER TABLE "REVIEWCONTENTS" ADD CONSTRAINT "PK_REVIEWCONTENTS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("SEQ" NOT NULL ENABLE);
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("REVIEW_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("IMG" NOT NULL ENABLE);
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWCONTENTS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEWS
--------------------------------------------------------

  ALTER TABLE "REVIEWS" ADD CONSTRAINT "PK_REVIEWS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "REVIEWS" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("SCORE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("GIFT" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("ITEM_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEWS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SECONDS
--------------------------------------------------------

  ALTER TABLE "SECONDS" ADD CONSTRAINT "PK_SECONDS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SECONDS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "SECONDS" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "SECONDS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SECONDS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" ADD CONSTRAINT "PK_USERS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "USERS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WARNS
--------------------------------------------------------

  ALTER TABLE "WARNS" ADD CONSTRAINT "PK_WARNS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "WARNS" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "WARNS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "WARNS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "WARNS" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table EVENTIMGS
--------------------------------------------------------

  ALTER TABLE "EVENTIMGS" ADD CONSTRAINT "FK_EVENTS_TO_EVENTIMGS" FOREIGN KEY ("EVENT_NO")
	  REFERENCES "EVENTS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EVENTS
--------------------------------------------------------

  ALTER TABLE "EVENTS" ADD CONSTRAINT "FK_USERS_TO_EVENTS" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEMS
--------------------------------------------------------

  ALTER TABLE "ITEMS" ADD CONSTRAINT "FK_SECONDS_TO_ITEMS" FOREIGN KEY ("SECOND_NO")
	  REFERENCES "SECONDS" ("NO") ENABLE;
  ALTER TABLE "ITEMS" ADD CONSTRAINT "FK_USERS_TO_ITEMS" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEMWARNS
--------------------------------------------------------

  ALTER TABLE "ITEMWARNS" ADD CONSTRAINT "FK_ITEMS_TO_ITEMWARNS" FOREIGN KEY ("ITEM_NO")
	  REFERENCES "ITEMS" ("NO") ENABLE;
  ALTER TABLE "ITEMWARNS" ADD CONSTRAINT "FK_WARNS_TO_ITEMWARNS" FOREIGN KEY ("WARN_NO")
	  REFERENCES "WARNS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIKES
--------------------------------------------------------

  ALTER TABLE "LIKES" ADD CONSTRAINT "FK_REVIEWS_TO_LIKES" FOREIGN KEY ("REVIEW_NO")
	  REFERENCES "REVIEWS" ("NO") ENABLE;
  ALTER TABLE "LIKES" ADD CONSTRAINT "FK_USERS_TO_LIKES" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROBLEMTYPES
--------------------------------------------------------

  ALTER TABLE "PROBLEMTYPES" ADD CONSTRAINT "FK_PROBLEMS_TO_PROBLEMTYPES" FOREIGN KEY ("PROB_NO")
	  REFERENCES "PROBLEMS" ("NO") ENABLE;
  ALTER TABLE "PROBLEMTYPES" ADD CONSTRAINT "FK_USERS_TO_PROBLEMTYPES" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPLIES
--------------------------------------------------------

  ALTER TABLE "REPLIES" ADD CONSTRAINT "FK_REVIEWS_TO_REPLIES" FOREIGN KEY ("REVIEW_NO")
	  REFERENCES "REVIEWS" ("NO") ENABLE;
  ALTER TABLE "REPLIES" ADD CONSTRAINT "FK_USERS_TO_REPLIES" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEWCONTENTS
--------------------------------------------------------

  ALTER TABLE "REVIEWCONTENTS" ADD CONSTRAINT "FK_REVIEWS_TO_REVIEWCONTENTS" FOREIGN KEY ("REVIEW_NO")
	  REFERENCES "REVIEWS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEWS
--------------------------------------------------------

  ALTER TABLE "REVIEWS" ADD CONSTRAINT "FK_USERS_TO_REVIEWS" FOREIGN KEY ("USER_NO")
	  REFERENCES "USERS" ("NO") ENABLE;
