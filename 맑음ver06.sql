--------------------------------------------------------
--  파일이 생성됨 - 수요일-1월-02-2019   
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
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (701,to_timestamp('18/12/30 17:09:22.559000000','RR/MM/DD HH24:MI:SSXFF'),'헤라 Golden Pig가 드리는 2019 행복 기원 이벤트',to_date('19/01/01','RR/MM/DD'),to_date('19/01/11','RR/MM/DD'),'nono123@naver.com',705);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (801,to_timestamp('18/12/30 16:58:52.648000000','RR/MM/DD HH24:MI:SSXFF'),'링클&리프팅 사이언스 출시 기념 #기대끌올 EVENT',to_date('18/12/20','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'innisfree@innisfree.com',805);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (901,to_timestamp('18/12/30 17:05:06.371000000','RR/MM/DD HH24:MI:SSXFF'),'공식몰 단독혜택',to_date('18/12/27','RR/MM/DD'),to_date('19/01/27','RR/MM/DD'),'user_support@kr.estee.com',905);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (401,to_timestamp('18/12/30 17:10:47.635000000','RR/MM/DD HH24:MI:SSXFF'),'더바디샵 명예의 전당 주인공이 되어보세요.',to_date('18/12/24','RR/MM/DD'),to_date('19/01/03','RR/MM/DD'),'webmaster@thebodyshop.co.kr',405);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (501,to_timestamp('18/12/30 17:11:35.666000000','RR/MM/DD HH24:MI:SSXFF'),'2018 홀리데이룩 구매 프로모션',to_date('18/11/27','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'nature1230@naver.com',505);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (300,to_timestamp('18/12/30 02:54:31.998000000','RR/MM/DD HH24:MI:SSXFF'),'설화수에서 쏩니다',to_date('18/12/03','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'),'event@sulwhasoo.com',304);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1001,to_timestamp('18/12/30 17:40:55.332000000','RR/MM/DD HH24:MI:SSXFF'),'고객감사페스티벌',to_date('18/12/25','RR/MM/DD'),to_date('19/01/30','RR/MM/DD'),'event1@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1002,to_timestamp('18/12/30 17:40:55.337000000','RR/MM/DD HH24:MI:SSXFF'),'화장품아 놀자',to_date('18/11/25','RR/MM/DD'),to_date('19/02/10','RR/MM/DD'),'event2@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1003,to_timestamp('18/12/30 17:40:55.340000000','RR/MM/DD HH24:MI:SSXFF'),'어멋, 이건 사야되',to_date('17/11/25','RR/MM/DD'),to_date('18/01/10','RR/MM/DD'),'event3@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1004,to_timestamp('18/12/30 17:40:55.343000000','RR/MM/DD HH24:MI:SSXFF'),'화장띠',to_date('18/01/25','RR/MM/DD'),to_date('18/12/25','RR/MM/DD'),'event4@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1005,to_timestamp('18/12/30 17:40:55.346000000','RR/MM/DD HH24:MI:SSXFF'),'촉촉하게 적셔주지',to_date('19/01/25','RR/MM/DD'),to_date('19/02/20','RR/MM/DD'),'event5@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1006,to_timestamp('18/12/30 17:40:55.348000000','RR/MM/DD HH24:MI:SSXFF'),'연말엔 이걸로!',to_date('18/10/25','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'event6@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1007,to_timestamp('18/12/30 17:40:55.350000000','RR/MM/DD HH24:MI:SSXFF'),'새해맞이 최대할인 이벤트',to_date('19/01/01','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'),'event7@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1008,to_timestamp('18/12/30 17:40:55.352000000','RR/MM/DD HH24:MI:SSXFF'),'안기모씨?',to_date('18/07/09','RR/MM/DD'),to_date('18/09/30','RR/MM/DD'),'event8@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1009,to_timestamp('18/12/30 17:40:55.356000000','RR/MM/DD HH24:MI:SSXFF'),'10대부터 90대까지 이벤트',to_date('18/11/09','RR/MM/DD'),to_date('19/02/28','RR/MM/DD'),'event9@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1010,to_timestamp('18/12/30 17:40:55.359000000','RR/MM/DD HH24:MI:SSXFF'),'할로윈 화장품 이벤트',to_date('18/10/01','RR/MM/DD'),to_date('18/10/31','RR/MM/DD'),'event10@naver.com',1005);
REM INSERTING into ITEMS
SET DEFINE OFF;
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (704,705,'바이탈 리프팅 에센셜 베이스 SPF15/PA+',55000,'30ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_704.jpg','F','hera_704.jpg',to_timestamp('18/12/30 17:08:28.861000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (705,705,'플래쉬-온 아이 세럼',75000,'15ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_705.jpg','F','hera_705.jpg',to_timestamp('18/12/30 17:08:28.864000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (706,705,'립 젤크러쉬',37000,'3.5g','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_706.jpg','F','hera_706.jpg',to_timestamp('18/12/30 17:08:28.867000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (707,705,'네일 에나멜 컬러',22000,'10ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_707.jpg','F','hera_707.jpg',to_timestamp('18/12/30 17:08:28.870000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (708,705,'얼반 로즈 퍼퓸드 바디 로션',50000,'250 ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_708.jpg','F','hera_708.jpg',to_timestamp('18/12/30 17:08:28.872000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (709,705,'페이스 디자이닝 블러셔',48000,'10g','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_709.jpg','F','hera_709.jpg',to_timestamp('18/12/30 17:08:28.874000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (710,705,'익셉셔널 오 드 퍼퓸',85000,'30ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_710.jpg','F','hera_710.jpg',to_timestamp('18/12/30 17:08:28.877000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (401,405,'브리티쉬 로즈 페탈-소프트 젤 토너 250ML',24000,'250ml','E','W','E','정제수, 프로판디올, 메칠글루세스-20, 피피지-26-부테스-26, 글리세린, 피이지-40하이드로제네이티드캐스터오일, 페녹시에탄올 등','tbs401.jpg','F','tbs401.jpg',to_timestamp('18/12/30 17:10:47.572000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (402,405,'스킨 디펜스 자외선차단제 60ML',29900,'60ml','E','W','B','정제수, 변성알코올, 에칠헥실메톡시신나메이트, 네오펜틸글라이콜디헵타노에이트, 부틸메톡시디벤조일메탄, 부틸렌글라이콜, 디메치콘, 글리세린','tbs402.jpg','F','tbs402.jpg',to_timestamp('18/12/30 17:10:47.576000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (403,405,'티트리 스킨 클리어링 훼이셜 워시 250ML',17000,'250ml','E','W','E','정제수, 글리세린, 소듐라우레스설페이트, 코카미도프로필베타인, 피이지-120메칠글루코오스디올리에이트, 피이지-40하이드로제네이티드캐스터오일','tbs403.jpg','F','tbs403.jpg',to_timestamp('18/12/30 17:10:47.580000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (404,405,'마카 룻 & 알로에 카밍 포스트 쉐이브 워터 젤 포 맨 160ML',21000,'160ml','E','M','E','정제수, 프로판디올, 암모늄아크릴로일디메칠타우레이트/브이피코폴리머, 피피지-26-부테스-26, 피이지-40하이드로제네이티드캐스터오일, 디프로필렌글라이콜','tbs404.jpg','F','tbs404.jpg',to_timestamp('18/12/30 17:10:47.582000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (405,405,'드롭스 오브 유스 유스 아이 크림 20ML',36000,'20ml','E','W','E','정제수, 글리세린, 돌콩오일, 디메치콘, 카프릴릭/카프릭트리글리세라이드, 변성알코올, 이소세틸스테아레이트, 이소노닐이소노나노에이트, 펜틸렌글라이콜','tbs405.jpg','F','tbs405.jpg',to_timestamp('18/12/30 17:10:47.585000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (406,405,'본 리피 립밤 - 라즈베리 10ML',7500,'10ml','E','W','E','피마자씨오일, 폴리글리세릴-3비즈왁스, 라놀린, 향료, 비즈왁스, 하이드로제네이티드캐스터오일, [나노] 실리카, 토코페릴아세테이트, 잇꽃씨오일','tbs406.jpg','F','tbs406.jpg',to_timestamp('18/12/30 17:10:47.588000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (407,405,'핑크 그레이프후룻 핸드 크림 30ML',7000,'30ml','E','W','E','정제수, 글리세린, 카프릴릭/카프릭트리글리세라이드, 스위트아몬드오일, 소듐폴리아크릴레이트, 세틸알코올, 펜타에리스리틸디스테아레이트, 페녹시에탄올','tbs407.jpg','F','tbs407.jpg',to_timestamp('18/12/30 17:10:47.590000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (408,405,'스파 오브 더 월드 메디테라니안 씨 솔트 스크럽 350ML',46000,'350ml','E','W','E','에칠헥실팔미테이트, 씨솔트, 소듐클로라이드, 해바라기씨오일, [나노] 실리카, 돌콩오일, 시어버터, 향료, 페녹시에탄올, 헥실신남알, 벤질살리실레이트, 토코페롤','tbs408.jpg','F','tbs408.jpg',to_timestamp('18/12/30 17:10:47.594000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (409,405,'대용량 진저 스캘프 케어 샴프 400ML',17000,'400ml','E','W','E','정제수, 소듐라우레스설페이트, 코카미도프로필베타인, 피록톤올아민, 판테놀, 폴리소르베이트20, 소듐벤조에이트, 프로필렌글라이콜, 소듐클로라이드','tbs409.jpg','F','tbs409.jpg',to_timestamp('18/12/30 17:10:47.597000000','RR/MM/DD HH24:MI:SSXFF'),'E',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (410,405,'화이트 머스크 후레그런스 바디 미스트 100ML',21000,'100ml','E','M','E','에탄올, 정제수, 변성알코올, 향료, 부틸페닐메칠프로피오날, 하이드록시이소헥실3-사이클로헥센카복스알데하이드, t-부틸알코올, 헥실신남알, 리날룰','tbs410.jpg','F','tbs410.jpg',to_timestamp('18/12/30 17:10:47.599000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (510,505,'러브 미 버블 샤워 코롱 - 그레이프 후르츠',14900,'110ml','E','W','E','자몽추출물로 비타민C가 풍부하여 피부를 케어해줍니다.','naturerepublic510.gif','F','naturerepublic510.gif',to_timestamp('18/12/30 17:11:35.592000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (509,505,'블랙빈 안티 헤어로스 샴푸',15000,'300ml','E','W','E','검정콩추출물과 블랙 콤플렉스가 함유되어 두피와 모발 영양 공급에 도움을 줍니다. 탈모 완화 기능성 샴푸입니다. 토탄수 성분이 두피 피지 흡착에 도움을 주어 두피 케어를 돕습니다.','naturerepublic509.gif','F','naturerepublic509.gif',to_timestamp('18/12/30 17:11:35.597000000','RR/MM/DD HH24:MI:SSXFF'),'E',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (508,505,'러브 미 버블 샤워 젤-프레시 알로에',20000,'1l','E','W','E','알로에 5 complex가 함유되어 촉촉하고 건강한 피부로 가꾸는데 도움을 줍니다.','naturerepublic508.gif','F','naturerepublic508.gif',to_timestamp('18/12/30 17:11:35.600000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (507,505,'[2018] 컬러 앤 네이처 네일 케어 매트 탑 코트',2500,'8ml','E','W','E','특이사항 없습니다.','naturerepublic507.gif','F','naturerepublic507.gif',to_timestamp('18/12/30 17:11:35.602000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (506,505,'샤인 블라썸 블러셔 01 핑크 블라썸',6900,'10g','E','W','E','특이사항 없습니다.','naturerepublic506.gif','F','naturerepublic506.gif',to_timestamp('18/12/30 17:11:35.604000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (505,505,'보테니컬 스키니 아이브로우 코팅카라 03 로지빈스',7500,'3.5g','E','W','E','특이사항 없습니다.','naturerepublic505.gif','F','naturerepublic505.gif',to_timestamp('18/12/30 17:11:35.606000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (504,505,'프로방스 인텐시브 앰플 파운데이션 SPF30 PA+++',22000,'30ml','E','W','E','3Effect Ampoule Complex 및 앰플 성분을 약 66% 함유하고 정제수 대신 미네랄 워터를 사용하여 보습, 퍼밍, 영양 케어의 스킨 케어 효과를 부여 합니다.','naturerepublic504.gif','F','naturerepublic504.gif',to_timestamp('18/12/30 17:11:35.608000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (503,505,'포레스트 가든 미셀라 클렌징 오일 인 워터_카모마일',14000,'250ml','E','W','E','미셀라 성분이 메이크업 잔여물과 노폐물만을 닦아내어주고 약산성 클렌저가 수분 보호막 손상 없이 수분 막을 형성하여 유수분 밸러스를 맞추어 줍니다.','naturerepublic503.gif','F','naturerepublic503.gif',to_timestamp('18/12/30 17:11:35.611000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (502,505,'그린더마 마일드 키즈 선 쿠션 SPF50+ PA++++',23000,'12ml','K','W','E','프로폴리스추출물는 천연 유리 성분으로 촉촉하고 건강한 피부로 가꿔줍니다. 센텔라아시아티카 성분은 병풀 유래 추출물로 마데카소사이드, 아시아티코사이드, 마데카식애씨드, 아시아틱애씨드가 모두 담겨 피부를 보호하고 피부 고민 부위 케어에 도움을 줍니다.','naturerepublic502.gif','F','naturerepublic502.gif',to_timestamp('18/12/30 17:11:35.614000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (501,505,'더 착한 마음 히알루론산 워터 토너',18000,'400ml','E','W','E','히알루론산이 피부에 수분을 공급합니다. pH 5~6의 약산성으로 피부 pH 밸런스 케어에 도움이 됩니다. 자연 유래 에센셜 오일과 같은 마일드한 성분으로 민감한 피부에도 편안하게 사용할 수 있습니다.','naturerepublic501.gif','F','naturerepublic501.gif',to_timestamp('18/12/30 17:11:35.617000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (300,304,'윤조에센스',90000,'60ml','A','a','E','사용 중 붉은 반점, 부어오름, 자극등의 트러블이상이 있는 경우 사용을 중지하시고 피부과 전문의에게 상담하십시오.','deltail_300.png',null,'product300.png',to_timestamp('18/12/30 01:28:07.452000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (301,304,'탄력크림',105000,'75ml','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_301.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (302,304,'쉬어 래스팅 파운데이션 SPF25 PA++',58000,'30ml','A','M','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_302.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (303,304,'아이브로우 퍼펙터',20000,'0.3g','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_303.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (304,304,'에센셜 립세럼 스틱_ 남자친구 송혜교 립스틱 3g',40000,'3g','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_304.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (305,304,'래디언스 블러셔',60000,'10g','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_305.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (306,304,'퍼펙팅쿠션 SPF50+/PA+++',65000,'15g','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_306.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (307,304,'릴랙싱 UV 프로텍터',40000,'50ml','E','M','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_307.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (308,304,'매화지향 향수 스프레이',40000,'15ml','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_308.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (309,304,'리프레싱클렌징폼',30000,'150ml','E','M','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_309.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1001,1005,'라이스 데일리 브라이트닝 스크럽 폼',10000,'150ml','E','W','C','강원 청정 철원 오대 쌀을 백국균을 발효하여 더욱 강력해진 라이스 데일리 브라이트닝 라인','detail1001.jpg','F','item1001.jpg',to_timestamp('18/12/30 17:38:27.540000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1002,1005,'허니 밀 촉촉 클렌징폼',8000,'150ml','E','W','D','새하얀 밀처럼 말끔, 쫀쫀 꿀처럼 촉촉! 내 피부를 생각한 순한 클렌징 라인','detail1002.jpg','F','item1002.jpg',to_timestamp('18/12/30 17:38:27.543000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1003,1005,'에그 화이트 퍼펙트 포어 클렌징 워터',12000,'300ml','E','W','C','깐 달걀 피부 변신! 피부 노폐물은 없애고 모공 고민 잠재우는 모공 전문 클렌징','detail1003.jpg','F','item1003.jpg',to_timestamp('18/12/30 17:38:27.546000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1004,1005,'선플라워 에어리 선스틱 SPF50+PA++++',15000,'20g','E','W','C','선플라워 씨드의 건강함을 담은 강력 선 차단!','detail1004.jpg','F','item1004.jpg',to_timestamp('18/12/30 17:38:27.551000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1005,1005,'알로에 쿨링 선 클리어 스틱SPF50+PA+++',13000,'20g','E','W','C','넘치는 수분감, 산뜻한 마무리! 언제 어디서나 내 맘대로 골라 쓰는 알로에 선케어','detail1005.jpg','F','item1005.jpg',to_timestamp('18/12/30 17:38:27.553000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1006,1005,'알로에 워터리 쿨링 선크림',25000,'200g','E','W','C','더위에 지친 피부를 건강하게 지켜줄 알로에 쿠링 선라인!','detail1006.jpg','F','item1006.jpg',to_timestamp('18/12/30 17:38:27.557000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1007,1005,'수분베리 프레시 앰플',24000,'60ml','E','W','C','풍부한 수분을 머금은 레드 베이베리의 농축 수분 에너지로 쫀쫀하고 촉촉하게 마무리되는 고수분 앰플','detail1007.jpg','F','item1007.jpg',to_timestamp('18/12/30 17:38:27.560000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1008,1005,'로열허니 프로폴리스 인리치 에센스',30000,'50ml','E','W','C','더욱 진하게 숙성된 순수 프로폴리스가 채워주는 더 강해진 탄탄 피부 보습','detail1008.jpg','F','item1008.jpg',to_timestamp('18/12/30 17:38:27.564000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1009,1005,'로열허니 에센셜 아이 크림',10000,'150ml','E','W','C','꿀찬 보습으로 여왕의 피부처럼 촉촉하게 빛나는 보습 라인','detail1009.jpg','F','item1009.jpg',to_timestamp('18/12/30 17:38:27.567000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1010,1005,'수분포드 바운스 아이 크림',28000,'30g','E','W','C','바다 속 그린캐비어가 피부 속 꽉찬 수분으로!','detail1010.jpg','F','item1010.jpg',to_timestamp('18/12/30 17:38:27.570000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);

/* 기초케어 1*/
insert into items(NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO)
values(801,805,'비자 트러블 로션',13000,'100ml','E','W','E','스킨 사용 후 적당량을 덜어 얼굴 전체에 부드럽게 펴 발라주어 편안한 피부 상태로 케어해줍니다.','innisfree801.png','F','innisfree801.png',systimestamp,'E',1);

/*선케어 2*/
insert into items(NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO)
values(802,805,'데일리 UV 프로텍션 로션 포 패밀리',24000,'150ml','E','W','E','선인장줄기추출물이 함유되어 촉촉한 수분감과 뛰어난 보습 효과를 선사합니다.','innisfree802.png','F','innisfree802.png',systimestamp,'E',2);

Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (803,805,'비자 트러블 훼이셜 폼 ',8000,'150ml','E','W','E','손에 적당량의 내용물을 취하여 충분히 거품을 낸 후 마사지하듯 문지른 다음 깨끗이 씻어냅니다.','innisfree803.png','F','innisfree803.png',to_timestamp('18/12/30 16:58:52.589000000','RR/MM/DD HH24:MI:SSXFF'),'E',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (804,805,'미네랄 수분 피팅 베이스 ',12000,'40ml','E','W','E','메이크업 제품 사용 전, 부드럽게 피부에 도포해주면 생녹차수의 풍부한 수분감으로 촉촉한 수분광 피부 완성.','innisfree804.png','F','innisfree804.png',to_timestamp('18/12/30 16:58:52.590000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (805,805,'퍼펙트 9 리페어 아이크림 ',42000,'30g','E','W','E','제주 영주초 콤플렉스의 9가지 유효 성분으로 노화 징후 케어는 물론 주름 개선 & 미백까지 케어하는 안티에이징 아이크림.','innisfree805.png','F','innisfree805.png',to_timestamp('18/12/30 16:58:52.591000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (806,805,'마이 립밤',10000,'15g','E','W','E','특이사항 없습니다.','innisfree806.png','F','innisfree806.png',to_timestamp('18/12/30 16:58:52.594000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (807,805,'그린 네일',5000,'7ml','E','W','E','특이사항 없습니다.','innisfree807.png','F','innisfree807.png',to_timestamp('18/12/30 16:58:52.596000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (808,805,'커피 버블 바디 스크럽 ',18000,'250ml','E','W','E','커피박에서 추출해 낸 커피 오일과 슈가 알갱이가 각질을 매끈하게 케어하고 부드러운 거품이 피부를 매끈하게 마무리 해주는 바디 스크럽.','innisfree808.png','F','innisfree808.png',to_timestamp('18/12/30 16:58:52.598000000','RR/MM/DD HH24:MI:SSXFF'),'B',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (809,805,'마이 헤어 레시피 리프레싱 비니거 트리트먼트',12000,'150ml','K','W','E','제주 소나무, 삼나무, 편백나무의 성분이 두피 스트레스를 완화시켜 건강한 두피로 가꿔줍니다.','innisfree809.png','F','innisfree809.png',to_timestamp('18/12/30 16:58:52.601000000','RR/MM/DD HH24:MI:SSXFF'),'B',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (810,805,'마이 퍼퓸 스틱 뮤직',9000,'2.3g','E','W','E','파우치나 클러치에 넣어도 부담스럽지 않은 2.3g 미니 스틱 향수로 언제 어디서나 간편하게 다양한 향을 즐길 수 있습니다.','innisfree810.png','F','innisfree810.png',to_timestamp('18/12/30 16:58:52.603000000','RR/MM/DD HH24:MI:SSXFF'),'B',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (901,905,'6세대 갈색병 리페어 에센스',155000,'50ml','E','W','E','히알루론산을 함유한 나이트 리페어 세럼의 수분자석 효과로 하루종일 촉촉한 피부로 가꿔주고, 잔주름과 깊은 주름이 크게 줄어듭니다.','itemwarn901.jpg','F','item901.jpg',to_timestamp('19/01/02 10:47:13.921000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (902,905,'크레센트 화이트 UV 프로텍터',62000,'30ml','E','W','E','포뮬러의 부드럽고 가벼운 질감은 바르기 쉬울 뿐 만 아니라, 피부를 화장하기 최적의 상태로 만들어줍니다.','itemwarn902.jpg','F','item902.jpg',to_timestamp('19/01/02 10:47:13.926000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (903,905,'퍼펙틀리 클린 멀티 액션 폼 클렌저/퓨리파잉 마스크',38000,'150ml','E','W','E','풍부한 거품이 빠르게 생성되어, 모공 속 불순물과 피부 표면의 칙칙한 각질을 부드럽게 제거해주는 클렌저.','itemwarn903.jpg','F','item903.jpg',to_timestamp('19/01/02 10:47:13.951000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (904,905,'더블 웨어 파운데이션',69000,'30ml','E','W','E','가까이서 보아도 자신 있게, 결점 없이 완벽한 피부를 연출해줍니다.뛰어난 커버력과 오랜 지속력, 편안한 사용감으로 사랑받아 온 에스티 로더의 베스트 셀러 리퀴드 파운데이션입니다.','itemwarn904.jpg','F','item904.jpg',to_timestamp('19/01/02 10:47:13.960000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (905,905,'퓨어 칼라 엔비 디파이닝 아이섀도우',34000,'1.8g','E','W','E','선명한 발색과 촉촉한 밀착력의 엔비 아이섀도우. 펄, 매트, 벨벳 등 다채로운 텍스처로 더욱 새로워진 엔비 싱글 아이섀도우를 만나보세요. 부드러운 누드톤부터 강렬한 칼라까지, 24가지 색상으로 다양하고 풍부한 아이 메이크업을 연출할 수 있습니다.','itemwarn905.jpg','F','item905.jpg',to_timestamp('19/01/02 10:47:13.966000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (906,905,'퓨어 컬러 엔비 페인트-온 리퀴드 립',41000,'7ml','E','W','E','보이는 컬러 그대로, 강렬한 페인트 발색','itemwarn906.jpg','F','item906.jpg',to_timestamp('19/01/02 10:47:13.974000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (907,905,'퓨어컬러 네일 락카',27000,'9ml','E','W','E','유리알처럼 빛나는 광택과 선명하고 다양한 컬러로 사랑받는 에스티 로더의 네일 락카를 만나보세요.','itemwarn907.jpg','T','item907.jpg',to_timestamp('19/01/02 10:47:13.980000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (908,905,'플레져 바디 로션',69000,'250ml','E','W','E','커팅 되지 않은 크리스탈의 투명함과 우아한 심플함을 즐기는 여성을 위한 바디로션입니다.','itemwarn908.jpg','F','item908.jpg',to_timestamp('19/01/02 10:47:13.987000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (909,905,'모던 뮤즈 EDP',90000,'30ml','E','W','E','우아한 스파클링 재스민의 플로럴 향과, 독창적이고 관능적인 우디 향이 어우러진 모던 뮤즈만의 특별한 향을 경험해보세요. ','itemwarn909.jpg','F','item909.jpg',to_timestamp('19/01/02 10:47:13.996000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (701,705,'셀 에센스',60000,'150ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_701.jpg','F','hera_701.jpg',to_timestamp('18/12/30 17:08:28.853000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (702,705,'선 메이트 엑설런스 SPF50+ PA++++',45000,'40ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_702.jpg','F','hera_702.jpg',to_timestamp('18/12/30 17:08:28.856000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (703,705,'화이트 프로그램 딥 클렌징 폼',32000,'200ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_703.jpg','F','hera_703.jpg',to_timestamp('18/12/30 17:08:28.858000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
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
Insert into PROBLEMS (NO,TITLE,REGDATE) values (1,'알레르기(아토피 등)',to_timestamp('18/12/31 16:23:06.783000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMS (NO,TITLE,REGDATE) values (2,'안티에이징',to_timestamp('18/12/31 16:23:06.788000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMS (NO,TITLE,REGDATE) values (3,'트러블',to_timestamp('18/12/31 16:23:06.794000000','RR/MM/DD HH24:MI:SSXFF'));
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
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (803,to_timestamp('18/12/30 16:58:52.690000000','RR/MM/DD HH24:MI:SSXFF'),806,801,'강추강추 !');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (901,to_timestamp('18/12/30 17:07:04.241000000','RR/MM/DD HH24:MI:SSXFF'),904,902,'저도 향수 뭘 살지 고민하고 있었는데 이걸로 사야겠네요');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (902,to_timestamp('18/12/30 17:07:04.245000000','RR/MM/DD HH24:MI:SSXFF'),902,903,'더블웨어 진짜 이번기회에 한번 사봐야겟네요');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (801,to_timestamp('18/12/30 16:58:52.686000000','RR/MM/DD HH24:MI:SSXFF'),804,801,'또 사고 싶어요 !');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (802,to_timestamp('18/12/30 16:58:52.688000000','RR/MM/DD HH24:MI:SSXFF'),802,804,'괜찮은 것 같아요.');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (903,to_timestamp('18/12/30 17:07:04.247000000','RR/MM/DD HH24:MI:SSXFF'),903,901,'여자친구한테 사주면 좋아할것같네요 선물로 해줘야겠어요 ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (701,to_timestamp('18/12/30 17:09:35.135000000','RR/MM/DD HH24:MI:SSXFF'),701,702,'리뷰넘넘 좋아요 ~');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (702,to_timestamp('18/12/30 17:09:35.137000000','RR/MM/DD HH24:MI:SSXFF'),701,703,'저도 같은 생각 입니다 !!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (703,to_timestamp('18/12/30 17:09:35.139000000','RR/MM/DD HH24:MI:SSXFF'),701,704,'이런 리뷰 정말 좋은걸요 ~~! :)');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (704,to_timestamp('18/12/30 17:09:35.142000000','RR/MM/DD HH24:MI:SSXFF'),702,701,'리뷰 너무 좋아요 >~< !!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (705,to_timestamp('18/12/30 17:09:35.144000000','RR/MM/DD HH24:MI:SSXFF'),702,703,'아니 이것은 황금 리뷰네요 ~');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (706,to_timestamp('18/12/30 17:09:35.147000000','RR/MM/DD HH24:MI:SSXFF'),702,704,'허허 리뷰 대단하군요 ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (707,to_timestamp('18/12/30 17:09:35.150000000','RR/MM/DD HH24:MI:SSXFF'),703,702,'이런 리뷰는 헤라한테 좋은 내용이군요 ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (708,to_timestamp('18/12/30 17:09:35.152000000','RR/MM/DD HH24:MI:SSXFF'),703,701,'이것이 필요하다고 말하면 어떻게 정의 할 수 있죠??');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (709,to_timestamp('18/12/30 17:09:35.154000000','RR/MM/DD HH24:MI:SSXFF'),703,704,'강요하는 느낌의 리뷰네요 ;;;');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (401,to_timestamp('18/12/30 17:10:47.668000000','RR/MM/DD HH24:MI:SSXFF'),404,401,'엇 저도 이제품 써보고 싶네요');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (402,to_timestamp('18/12/30 17:10:47.669000000','RR/MM/DD HH24:MI:SSXFF'),406,402,'이 립밤 발림성 좋나요?');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (403,to_timestamp('18/12/30 17:10:47.671000000','RR/MM/DD HH24:MI:SSXFF'),410,404,'미스트는 보통 오래가지 않지 않나요?');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (501,to_timestamp('18/12/30 17:11:35.708000000','RR/MM/DD HH24:MI:SSXFF'),504,501,'이번 신상 색상 괜찮네요!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (502,to_timestamp('18/12/30 17:11:35.710000000','RR/MM/DD HH24:MI:SSXFF'),502,504,'저도 요즘 고민이에요 ㅠ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (503,to_timestamp('18/12/30 17:11:35.712000000','RR/MM/DD HH24:MI:SSXFF'),506,501,'클렌징은 미셀라 클렌징 오일 인 워터_카모마일 추천해요!!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (300,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),300,300,'오 그래요?? 좋은가 보군');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (301,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),301,300,'역시는 역시군요');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (302,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),302,300,'많은도움받았습니다.~!!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1001,to_timestamp('18/12/30 17:42:43.270000000','RR/MM/DD HH24:MI:SSXFF'),1001,1001,'오호! 꽤 좋구만 추천!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1002,to_timestamp('18/12/30 17:42:43.272000000','RR/MM/DD HH24:MI:SSXFF'),1002,1002,'내 피부가 꿀 피부가 됨!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1003,to_timestamp('18/12/30 17:42:43.274000000','RR/MM/DD HH24:MI:SSXFF'),1003,1003,'매혹적인 향기.. 지림');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1004,to_timestamp('18/12/30 17:42:43.278000000','RR/MM/DD HH24:MI:SSXFF'),1003,1001,'데이트때 뿌려야징!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1008,to_timestamp('18/12/30 17:42:43.281000000','RR/MM/DD HH24:MI:SSXFF'),1007,1001,'윗분.. 개그.. ㅋ');
REM INSERTING into REVIEWCONTENTS
SET DEFINE OFF;
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (803,to_timestamp('18/12/30 16:58:52.680000000','RR/MM/DD HH24:MI:SSXFF'),'review803.jpg','거품이 아주 몽글몽글 잘 나와서 정말 좋아요.',803,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (804,to_timestamp('18/12/30 16:58:52.683000000','RR/MM/DD HH24:MI:SSXFF'),'review804.jpg','지인에게 추천해주고 싶은 아이템이에요 :)',804,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (805,to_timestamp('18/12/30 16:58:52.684000000','RR/MM/DD HH24:MI:SSXFF'),'review805.jpg','수분광 피부 완성 ~~',804,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (901,to_timestamp('18/12/30 17:06:42.036000000','RR/MM/DD HH24:MI:SSXFF'),'review901.jpg','밤에 듬뿍 바르고 잤더니 다음날 조금 촉촉해졌어요..그동안 피부가 너무 건조해서 뭘 발라도 푸석했는데.. 조금 나아진걸 느껴요. 샘플도 넣어주셨는데 여름에 밖에 수정용으로 들고다니기 좋을것 같애요~',901,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (902,to_timestamp('18/12/30 17:06:42.039000000','RR/MM/DD HH24:MI:SSXFF'),'review902.jpg','좋다는 말은 많이 들었는데 맨날 고민만 하다가 결국 샀어요ㅋ요즘 베이스는 계속 더블웨어로 하고 있답니다~',904,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (801,to_timestamp('18/12/30 16:58:52.677000000','RR/MM/DD HH24:MI:SSXFF'),'review801.jpg','한번 더 사고 싶어요 !',801,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (802,to_timestamp('18/12/30 16:58:52.678000000','RR/MM/DD HH24:MI:SSXFF'),'review802.jpg','자외선차단에 아주 효과적이에요 !',802,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (903,to_timestamp('18/12/30 17:06:42.042000000','RR/MM/DD HH24:MI:SSXFF'),'review903.jpg','컨트로버셜 사고...집에 오면서 너어무 이쁜 레드컬러예요! 그라데이션하니깐 핑크빛이 밑색으로 보이더라구요',906,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (904,to_timestamp('18/12/30 17:06:42.043000000','RR/MM/DD HH24:MI:SSXFF'),'review9032.jpg','웜한 피부라서 안어울릴까 하지만 또 요런게 피부 형광등 켜주거든요! 거기다 어플리케이터로 올려도 얇게 올라가고 발림성이 진짜 좋아요! 오일이 가득한듯이 올라가는데 시간이 지나면 마치 거기가 자기 자리였던듯 입술에 ? 밀착되요! 레드립 좋아하시면 적극추천합니다!!',906,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (905,to_timestamp('18/12/30 17:06:42.047000000','RR/MM/DD HH24:MI:SSXFF'),'review904.jpg','쓰던거 다 써서 다시 재구매했어요 향이 질리지도않고 너무 좋아요 이거 다 쓰면 또 재구매할 정도로 향 너무 좋습니다.',909,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (701,to_timestamp('18/12/30 17:09:08.645000000','RR/MM/DD HH24:MI:SSXFF'),'review701.jpg','우울한 기분이 확 날라가는 느낌으로 발색도 예쁘고 색감을 보는 순간부터 기분이 좋네요. 2중으로 되어 있구요... 향도 진하지 않고 네일 가격으로 좀 있지만 발림이랑 솔 상태는 무척 좋아요. 다양한 칼라가 더 많이 나왔으면 좋겠어요.',707,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (702,to_timestamp('18/12/30 17:09:08.648000000','RR/MM/DD HH24:MI:SSXFF'),'review702.jpg','너무 작은 상자에 담겨져서 왔구요... 안에는 종이포장으로 돌돌 말려서 왔는데 환경보호를 위해서 종이포장인 듯 하네요. 색은 생각보다 더 짱짱한 색으로 예쁘네요. 어머니 드리려고 구입했는데 저도 같이 바르려구요. 비싸지만 잘 발리고 금방 말라요',707,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (703,to_timestamp('18/12/30 17:09:08.650000000','RR/MM/DD HH24:MI:SSXFF'),'review703.jpg','로제휘기에 핸드크림 같을거라고 예상했는데 생각보다 향이 고급지지도않고 너무 무난해요.',708,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (704,to_timestamp('18/12/30 17:09:08.652000000','RR/MM/DD HH24:MI:SSXFF'),'review704.jpg','향도 좋고 바를때 느낌도 좋습니다ㆍ 생각보다 향이 오래가지는 않는것 같구요? 가격이 착하지 않습니다?',708,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (705,to_timestamp('18/12/30 17:09:08.654000000','RR/MM/DD HH24:MI:SSXFF'),'review705.jpg','무펄의 맑은 느낌으로 예쁘게 발색되고, 바르면 뽀얗게 수채화 느낌으로 물든듯 표현되어 넘 예뻐요~',709,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (706,to_timestamp('18/12/30 17:09:08.657000000','RR/MM/DD HH24:MI:SSXFF'),'review706.jpg','배송은빠른편은아니지만색상이랑은아주맘에들어요~~앞으로도자주온라인쇼핑구매하고싶네요~^^',709,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (707,to_timestamp('18/12/30 17:09:08.659000000','RR/MM/DD HH24:MI:SSXFF'),'review707.jpg','이제좀있으면 추석도 있고해서 구성이.좋아서 선물용으로 구매했습니다 여자친구가 헤라향수를 잘사용합니다 쥬얼리박스가 패키지 구성이라서 주고 받는기쁨이 두배일꺼같아요 이미사용중인데 향수는 쟁여놔도 장식용으로도 좋으니 좋은 선물하겠습니다 용기디자인도 보라보라 해서 예쁘고 향도 고급져요 훌륭한상품.헤라 칭찬합니다',710,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (708,to_timestamp('18/12/30 17:09:08.662000000','RR/MM/DD HH24:MI:SSXFF'),'review708.jpg','기획세트로 구매해서 소용량까지 있어요. 향은 무거운듯 달달한 향이에요. 선물용으로 딱 좋아서 다시 포장해서 선물 줄려고 샀어요. 가격이 좀 후덜덜해서 세일인 지금 사면 좋을거같아요. 잔향은 오래가지는 않을거같지만 향은 정말 맘에 들어요.',710,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (401,to_timestamp('18/12/30 17:10:47.659000000','RR/MM/DD HH24:MI:SSXFF'),'review401.jpg','이만한 향 이만한 촉감 절대 못찾아요',407,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (402,to_timestamp('18/12/30 17:10:47.660000000','RR/MM/DD HH24:MI:SSXFF'),'review402.jpg','스크럽은 일주일에 한번씩 하면 너무 좋아요. 너무 거칠지도 않고 사용할 때마다 기분이 좋아요',408,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (403,to_timestamp('18/12/30 17:10:47.662000000','RR/MM/DD HH24:MI:SSXFF'),'review403.jpg','두피 각질 케어에 이만한게 없어용',409,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (404,to_timestamp('18/12/30 17:10:47.664000000','RR/MM/DD HH24:MI:SSXFF'),'review404.jpg','아버지도 같이 쓰는데 너무너무 좋아요',409,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (405,to_timestamp('18/12/30 17:10:47.666000000','RR/MM/DD HH24:MI:SSXFF'),'review405.jpg','샤워 후 뿌리면 이런 기분 느낄 수 없어요',410,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (501,to_timestamp('18/12/30 17:11:35.697000000','RR/MM/DD HH24:MI:SSXFF'),'review501.jpg','상큼한 봄날의 감성을 자극해주네요. 상큼한 자몽과 베르가못의 시트러스하고 프레시한 향이 풍성하게 어우러져서 오랫동안 지속되는 싱그럽고 상큼한 느낌이예요 :D',501,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (502,to_timestamp('18/12/30 17:11:35.699000000','RR/MM/DD HH24:MI:SSXFF'),'review502.jpg','건조한 날씨 더 휑해지는 가르마, 이름만 들어도 눈물나는게... 스트레스를 많이 받다보니까 왔네요 ㅠ 이번에 추천 받은 제품이라서 어느 정도 기간은 두고 써야겠지만 아직 한 3일차 인데 만족스러워요! 한 번 사용해 보는 것도 추천해요',502,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (503,to_timestamp('18/12/30 17:11:35.701000000','RR/MM/DD HH24:MI:SSXFF'),'review503.jpg','베르가못 시트러스 향이라고 하는데 레몬과 자몽 계열의 톡쏘는 향이에요 너무 좋아요!',503,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (504,to_timestamp('18/12/30 17:11:35.703000000','RR/MM/DD HH24:MI:SSXFF'),'review5032.jpg','거품을 만들어보니 풍성하게 나오고 냄새도 상큼한 레몬라임향 비슷해서 너무 좋았어요!',503,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (505,to_timestamp('18/12/30 17:11:35.705000000','RR/MM/DD HH24:MI:SSXFF'),'review504.jpg','2018 신상 제품 발라봤어요. 뭉침없이 잘 발라기도 하고 발색이 좋아서 셀프네일하기 정말 편해요. 도전해보세요^^*!',504,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (300,to_timestamp('18/12/30 03:43:20.823000000','RR/MM/DD HH24:MI:SSXFF'),'review_300.png','보이시나요?',301,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (301,to_timestamp('18/12/30 03:43:24.044000000','RR/MM/DD HH24:MI:SSXFF'),'review_301.png','이겁니다하하하',301,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (302,to_timestamp('18/12/30 03:44:52.466000000','RR/MM/DD HH24:MI:SSXFF'),'review_302.png','어??요 죽이죠?',302,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (303,to_timestamp('18/12/30 03:44:54.542000000','RR/MM/DD HH24:MI:SSXFF'),'review_303.png','ㅋㅋㅋㅋㅋㅋ 이런식으로 사용했지요',303,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (304,to_timestamp('18/12/30 03:44:59.329000000','RR/MM/DD HH24:MI:SSXFF'),'review_304.png','이미지 리뷰가 좋더라구요 확실하게 알려주고 ',303,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (305,to_timestamp('18/12/30 03:45:01.729000000','RR/MM/DD HH24:MI:SSXFF'),'review_305.png','ㅋㅋㅋㅋㅋㅋ 하 좋습니다.',304,1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1001, systimestamp,'review1001.jpg','아주 깨끗한 느낌이 들어요 앞으로 이것으로만 세수할거에요111.',1001, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1002, systimestamp,'review1002.jpg','아주 깨끗한 느낌이 들어요 앞으로 이것으로만 세수할거에요222.',1001, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1003, systimestamp,'review1003.jpg','피부 좋은 사람한테 꿀피부 라고 그러잖아요. 그게 바로 접니다 ㅎㅎ111.',1002, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1004, systimestamp,'review1004.jpg','피부 좋은 사람한테 꿀피부 라고 그러잖아요. 그게 바로 접니다 ㅎㅎ222.',1002, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1005, systimestamp,'review1005.jpg','제품의 하얀색 처럼 제 피부도 하얗게 되었습니다. 앙 개꿀띠!111.',1003, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1006, systimestamp,'review1006.jpg','제품의 하얀색 처럼 제 피부도 하얗게 되었습니다. 앙 개꿀띠!222.',1003, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1007, systimestamp,'review1007.jpg','자외선을 완전 차단하네요!!! 정말 좋은 제품입니다.111',1004, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1008, systimestamp,'review1008.jpg','자외선을 완전 차단하네요!!! 정말 좋은 제품입니다.222',1004, 2);


REM INSERTING into REVIEWS
SET DEFINE OFF;
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (803,803,'피부가 맑아졌어요.',to_timestamp('18/12/30 16:58:52.655000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,802,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (804,804,'메이크업 시작하기 전에 사용하면 좋아요.',to_timestamp('18/12/30 16:58:52.656000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,801,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (805,805,'눈가에 주름 안녕 !',to_timestamp('18/12/30 16:58:52.659000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,804,'T','몇일 사용해보니까 눈가에 주름이 확실히 줄었어요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (806,806,'사용 3일차',to_timestamp('18/12/30 16:58:52.663000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,803,'T','사용한지 3일정도 지났는데 입술에서 생기가 나요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (807,807,'색상이 무난하네요.',to_timestamp('18/12/30 16:58:52.665000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,802,'T','자주 사용할 것 같아요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (808,808,'각질제거에 꼭 필요한 아이템!',to_timestamp('18/12/30 16:58:52.667000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,801,'T','각질 때문에 고민이였는데 이 제품을 사용 한 후에 고민이 사라졌어요 ~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (809,809,'머리의 생기가 생겼어요 !',to_timestamp('18/12/30 16:58:52.670000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,804,'T','주변 지인이 추천해줘서 사용해봤는데 굿굿 !');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (810,810,'휴대성이 좋아요 ~',to_timestamp('18/12/30 16:58:52.674000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,803,'T','향이 은은해서 좋고 휴대성도 좋고 ~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (901,901,'몇년만에 다시 갈색병으로 돌아왔어요.',to_timestamp('18/12/30 17:05:34.940000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,904,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (902,904,'더블웨어 역시 좋아요.',to_timestamp('18/12/30 17:05:34.943000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,902,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (801,801,'또 사용하고 싶어요 !!!',to_timestamp('18/12/30 16:58:52.651000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,804,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (802,802,'자외선 차단에 효과적이에요.',to_timestamp('18/12/30 16:58:52.652000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,803,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (903,906,'색이 너무 이뻐요',to_timestamp('18/12/30 17:05:34.946000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,902,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (904,909,'에스티로더 향수 계절별로 다 써보고 있네요',to_timestamp('18/12/30 17:05:34.948000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,903,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (905,902,'에스티로더 선크림 후기',to_timestamp('18/12/30 17:05:34.950000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,901,'T','유분기가 많은지 바르고 난 후 얼굴이 번질번질거려요. ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (906,903,'부들부들해요',to_timestamp('18/12/30 17:05:34.952000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,903,'T','추천으로 구매했는데 거품도 부드럽게 잘 씻기네요 세안후 당기지 않아서 좋아요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (907,905,'은은해요',to_timestamp('18/12/30 17:05:34.954000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,904,'T','은은합니다 반짝반짝하진 않지만 수수하게 보이는데 제격이네요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (908,908,'향기가 너무 좋아요',to_timestamp('18/12/30 17:05:34.956000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,901,'T','여자친구한테 선물했는데 너무 좋아하네요 제가 맡았을 때는 겨울보다는 봄여름에 더 좋을 것 같네요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (909,904,'더블웨어 그냥 그러네요',to_timestamp('18/12/30 17:05:34.959000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,902,'T','생각보다 별로입니다. 조금 뜨는느낌이 들어요 8시간 지속 이런건 아닌것같아요 좀 많이 매트합니다');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (910,909,'너무 가볍네요 ',to_timestamp('18/12/30 17:05:34.961000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,904,'T','싸하면서 많이 무겁지 않아 겨울에는 별로,,너무 기대 이하입니다. ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (701,701,'셀 에센스 진짜 좋습니다 !!',to_timestamp('18/12/30 17:08:55.985000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,701,'T','훨씬 스킨 로션 흡수가 잘 되는것 같아요 역시 믿고 쓰는 헤라!! 용기도 넘 고급스럽게 예쁘고 같이 오는 화장솜도 피부타입에 따라 앞뒤가 달라 실용적이예요~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (702,702,'선 메이트 엑설런스 좋네요~',to_timestamp('18/12/30 17:08:55.988000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,702,'T','자외선 차단뿐 아니라 일상 생활속 블루 라이트 필터링 기능으로 피부를 한번더 보호해 준다는 헤라 썬메이트 엑설런트 크림ㅎ 톤업에 프라이머 기능두 있어 기초 화장후 꼼꼼하게 발라주니 한듯 안한듯 은은하면서도 화사해 보이는 광채피부로 만들어 주네요 ^^ 매우 강추~~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (703,703,'화이트 프로그램 딥 클렌징 폼 진짜 좋습니다 :) ',to_timestamp('18/12/30 17:08:55.990000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,703,'T','꾸준히 쓰면 피부톤이 밝아져요 미백효과가 좋아요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (704,704,'선물했는데 바이탈 리프팅 에센셜 베이스 좋습니다 !!',to_timestamp('18/12/30 17:08:55.992000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,704,'T','아내가 부드러운질감이 맘에 듭니다 산뜻하게 표현된다고 하네요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (705,705,'플래쉬-온 아이 세럼 그닥이네요;;',to_timestamp('18/12/30 17:08:55.994000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,701,'T','신제품이라 리뷰없이 광고만 보고 샀는데요 눈밑 마사지하는 부분과 아이크림 나오는 부분이 같은곳이라서 불편해요 좀만 누르고 크림이 나오기도 하고 뚜껑 열때도 살짝 미리 나오고 마사지 하는 부분이 조금 넓었으면 좋겟어요 추후 상품디자인이 개선되었음 합니다');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (706,706,' 립 젤크러쉬 별로네요 :( ',to_timestamp('18/12/30 17:08:55.997000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,702,'T','햅번 코랄이랑 메리지 핑크랑 색이 완전 같아요 두 개 샀는데 난감 그리고 케이스가 너무 크고 케이스에 색상이 적혀 있어서 동시에 메리지랑 햅번 꺼내서 보고 황당. 색이 같은데 본체엔 색상이 안적혀서 어떤게 메리지인지 햇반코랄인지 구분이 안감');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (707,707,'네일 에나멜 컬러 좋습니다 !!',to_timestamp('18/12/30 17:08:55.999000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,703,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (708,708,'얼반 로즈 퍼퓸드 바디 로션 좋네요~',to_timestamp('18/12/30 17:08:56.001000000','RR/MM/DD HH24:MI:SSXFF'),'T',3,704,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (709,709,'아주아주 페이스 디자이닝 블러셔 많이쓸꺼에요',to_timestamp('18/12/30 17:08:56.003000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,701,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (710,710,'익셉셔널 오 드 퍼퓸 무난하지만 좋네요',to_timestamp('18/12/30 17:08:56.005000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,702,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (401,401,'새로운 도전! 무난!',to_timestamp('18/12/30 17:10:47.638000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,401,'T','브리티쉬 로즈 라인 바디버터를 써보고 향이 너무 좋아서 시도해 보았는데 보통이네요. 색상이 분홍이 아니라...쩜쩜');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (402,402,'항상쓰는 it item',to_timestamp('18/12/30 17:10:47.640000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,402,'T','로션타입의 선크림을 매우 선호하는데 이만한 게 없어요. 5점으로도 모자란 저의 아이템!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (403,403,'트러블이 고민이시라면',to_timestamp('18/12/30 17:10:47.643000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,403,'T','가끔 나는 성인 여드름이 고민일 때 쓰기 좋은 데일리 아이템은 아니지만!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (404,404,'남자 사람들을 위한',to_timestamp('18/12/30 17:10:47.645000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,404,'T','우리집 남자사람들을 위해서 사 놓았는데 향도 좋고 훨씬 멀끔해보이네요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (405,405,'눈가 주름이 걱정될 나이',to_timestamp('18/12/30 17:10:47.647000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,401,'T','그런 나이란 없어요 젊었을 때부터 더바디샵으로 관리해야해요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (406,406,'건조한 겨울에 딱',to_timestamp('18/12/30 17:10:47.649000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,402,'T','겨울이라 그런지 입술이 바짝 바짝 마르는데 속상하네요 이거 덕에 겨울을 무사히 ...');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (407,407,'겨울에 부드럽게 언제나 쓰는 핸드크림',to_timestamp('18/12/30 17:10:47.651000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,403,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (408,408,'사우나 대신 스크럽',to_timestamp('18/12/30 17:10:47.652000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,404,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (409,409,'아버지를 위한',to_timestamp('18/12/30 17:10:47.654000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,402,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (410,410,'땀냄새 관리',to_timestamp('18/12/30 17:10:47.656000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,401,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (501,510,'은은하고 기분 좋은 향이 최고에요',to_timestamp('18/12/30 17:11:35.670000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,501,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (502,509,'탈모.. 이번엔 이 녀석 잡을 거예요',to_timestamp('18/12/30 17:11:35.672000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,502,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (503,508,'1+1 향도 좋고 가격도 좋고',to_timestamp('18/12/30 17:11:35.676000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (504,507,'2018 네일 신상 셀프 체험',to_timestamp('18/12/30 17:11:35.678000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,503,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (505,506,'이번엔 핑쿠핑쿠하게',to_timestamp('18/12/30 17:11:35.681000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,501,'T','피부톤에 비슷하고 자연스러운 색상을 원해서 도전해봤어요!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (506,505,'짙은 눈화장으로',to_timestamp('18/12/30 17:11:35.685000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,503,'T','연말에 모임이나 놀러가면 자연스러운 화장을 좋아해서 이 제품을 써봤어요 좋은 거 같아요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (507,504,'피부에 생기를',to_timestamp('18/12/30 17:11:35.687000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'T','피부에 신경을 많이 쓰다보니 광채피부, 뭐 보습 이런 부분 신경이 가더라구요 좋은 제품 같아요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (508,503,'연말에 파티하고 후에!',to_timestamp('18/12/30 17:11:35.690000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,501,'T','연말에 파티하고 화장이 짙은데 클렌징 하는데 되게 좋은 거 같아요!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (509,502,'조카들에게 선물했어요',to_timestamp('18/12/30 17:11:35.693000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,502,'T','조카들에게 선물로 줬는데 되게 좋아했어요. 초등학생 얘들에게 줬어요. 자극적인 제품은 피했어요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (510,501,'역시 토너는 네이처',to_timestamp('18/12/30 17:11:35.695000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'T','매번 같은 브랜드를 계속 쓰게 되는 이유가 있네요 제품 역시 추천해요!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (300,300,'와우 이거 물건이다',to_timestamp('18/12/30 03:04:43.144000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,300,'T','처음 사용해 봤는데 제피부에 정말 잘맞네요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (301,301,'그냥 보통이네요',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,300,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (302,302,'발림이 완전좋아요',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,301,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (303,303,'벌써 3개째 사용 중입니다. 잇 아이템',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,302,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (304,304,'저한테는 안맞는거같아요..',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,302,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (305,305,'화사하니 좋네요 ~!!강추입니다.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,303,'T','이거 정말 좋은데 가격이.. 비싼게 조금 흠이에요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (306,306,'엄마가 참좋아해요',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'T',4,301,'T','어머니한테 선물했는데 정말 좋아하십니다. ㅎㅎ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (307,307,'선크림이 필요하구나 역시는 역시네요',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,300,'T','아 완전 제 소중한 피부에 딱 맞는거같아?Gㅎ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (308,308,'은은한 향기가 나쁘지않네요.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,303,'T','평소에 향수를 즐겨쓰는 편은 아니지만 이건 좋네요 ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (309,309,'싸구려비누만 쓰다고 완전 신세계입니다.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,300,'T','저는 그냥 데톨비누로 세안하던 남잔데요.. 와 이거로 세안하니깐 정말 좋네요..');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1001,1001,'쌀뜨물에 세수하듯이',to_timestamp('18/12/30 17:40:06.249000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1001,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1002,1002,'피부에서 꿀이..',to_timestamp('18/12/30 17:40:06.252000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1002,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1003,1003,'색도 하얀것이',to_timestamp('18/12/30 17:40:06.256000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1003,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1004,1004,'자외선이 싫어서..',to_timestamp('18/12/30 17:40:06.258000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1004,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1005,1005,'알로에의 시원함',to_timestamp('18/12/30 17:40:06.260000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,1001,'T','역시 알로에는 자외선 차단 효과가 탁월하죠! 하지만, 용량이 너무 적어서 아쉽네요. ㅠ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1006,1006,'파워 알로에!!',to_timestamp('18/12/30 17:40:06.265000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,1002,'T','자외선을 완전 차단하네요!!! 정말 좋은 제품입니다. 알로에의 촉촉함도 한 몫 하고 용량도 많네요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1007,1007,'자꾸 수분이 부족해서..',to_timestamp('18/12/30 17:40:06.266000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1003,'T','수분크림을 샀는데 이제 얼굴에서 수분이 마르질 않습니다. 개꿀띠!!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1008,1008,'로열허니라서 사봤는데',to_timestamp('18/12/30 17:40:06.270000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,1004,'T','전혀 로열하지 않네요. 사지 마세요. 구려요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1009,1009,'눈가에 뭐가 자꾸 나서',to_timestamp('18/12/30 17:40:06.273000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1001,'T','이 제품을 써봤는데 눈가에 잡티가 다 제거 되었습니다. 앙 개꿀!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1010,1010,'은은한 포도향이 좋아요.',to_timestamp('18/12/30 17:40:06.277000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,1002,'T','근대 용량이 적고 지속성이 떨어지네요. 아쉽습니다.');
REM INSERTING into SECONDS
SET DEFINE OFF;
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (1,'스킨케어','B',to_timestamp('18/12/31 16:23:18.941000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (2,'선케어','B',to_timestamp('18/12/31 16:23:18.949000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (3,'클렌징','B',to_timestamp('18/12/31 16:23:18.955000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (4,'베이스','M',to_timestamp('18/12/31 16:23:18.960000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (5,'아이','M',to_timestamp('18/12/31 16:23:18.967000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (6,'립&치크','M',to_timestamp('18/12/31 16:23:18.973000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (7,'네일','M',to_timestamp('18/12/31 16:23:18.979000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (8,'바디케어','E',to_timestamp('18/12/31 16:23:18.984000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (9,'헤어케어','E',to_timestamp('18/12/31 16:23:18.990000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (10,'향수','E',to_timestamp('18/12/31 16:23:18.995000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (803,'test803','1111','유인나','W',to_date('82/06/05','RR/MM/DD'),'D','U',null,null,null,null,'inna.jpg',null,null,to_timestamp('18/12/30 16:58:49.239000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (804,'test804','1111','신혜선','W',to_date('89/08/31','RR/MM/DD'),'C','U',null,null,null,null,'heasun.jpg',null,null,to_timestamp('18/12/30 16:58:49.241000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (805,'test805','1111',null,null,null,null,'C','(주)이니스프리','이니스프리','080-380-0114','https://www.innisfree.com/','innisfree.jpg',null,null,to_timestamp('18/12/30 16:58:49.244000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (901,'eunwoo','1111','차은우','M',to_date('97/03/30','RR/MM/DD'),'O','U',null,null,null,null,'eunwoo.jpg',null,null,to_timestamp('18/12/30 17:00:52.393000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (902,'juhyun','1111','배주현','W',to_date('91/03/29','RR/MM/DD'),'N','U',null,null,null,null,'juhyun.jpg',null,null,to_timestamp('18/12/30 17:00:52.396000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (801,'test801','1111','조보아','W',to_date('91/08/22','RR/MM/DD'),'O','U',null,null,null,null,'joboa.jpg',null,null,to_timestamp('18/12/30 16:58:49.234000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (802,'test802','1111','한예리','M',to_date('84/12/23','RR/MM/DD'),'N','U',null,null,null,null,'yeri.jpg',null,null,to_timestamp('18/12/30 16:58:49.237000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (903,'ryeonwon','1111','정려원','W',to_date('81/01/21','RR/MM/DD'),'D','U',null,null,null,null,'ryeowon.jpg',null,null,to_timestamp('18/12/30 17:00:52.399000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (904,'jungah','1111','염정아','W',to_date('72/07/28','RR/MM/DD'),'C','U',null,null,null,null,'jungah.jpg',null,null,to_timestamp('18/12/30 17:00:52.401000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (905,'ESTEELAUDER','1111',null,null,null,null,'C','이엘씨에이한국(유)','에스티로더','02-3440-2522','https://www.esteelauder.co.kr','esteelauder.png',null,null,to_timestamp('18/12/30 17:00:52.404000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (701,'test701','1111','권수연','W',to_date('94/05/13','RR/MM/DD'),'D','U',null,null,null,null,null,null,null,to_timestamp('18/12/30 17:08:06.450000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (702,'test702','1111','장원영','W',to_date('04/08/31','RR/MM/DD'),'N','U',null,null,null,null,'profile_702.jpg',null,null,to_timestamp('18/12/30 17:08:06.454000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (703,'test703','1111','서현진','W',to_date('85/02/27','RR/MM/DD'),'O','U',null,null,null,null,'profile_703.jpg',null,null,to_timestamp('18/12/30 17:08:06.456000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (704,'test704','1111','최수종','M',to_date('62/12/18','RR/MM/DD'),'C','U',null,null,null,null,'profile_704.jpg',null,null,to_timestamp('18/12/30 17:08:06.458000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (705,'test705','1111',null,null,null,null,'C','(주)뷰티헤라','헤라','080-023-5454','https://www.hera.com/kr/ko/','hera.jpg',null,null,to_timestamp('18/12/30 17:08:06.460000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (401,'dylan','1111','Dylan','M',to_date('91/09/17','RR/MM/DD'),'D','U',null,null,null,null,'dylan.png',null,null,to_timestamp('18/12/30 17:10:44.905000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (402,'felly','1111','Felicia','W',to_date('64/10/20','RR/MM/DD'),'N','U',null,null,null,null,'felly.png',null,null,to_timestamp('18/12/30 17:10:44.909000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (403,'clara','1111','Clara','W',to_date('59/10/18','RR/MM/DD'),'O','U',null,null,null,null,'clara.png',null,null,to_timestamp('18/12/30 17:10:44.912000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (404,'ai','1111','Ai','W',to_date('84/02/08','RR/MM/DD'),'C','U',null,null,null,null,'ai.png',null,null,to_timestamp('18/12/30 17:10:44.915000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (405,'THEBODYSHOP','1111',null,null,null,null,'C','(주)비에스케이코퍼레이션','더바디샵','080-759-7700','https://www.thebodyshop.co.kr/','thebodyshop.jpg',null,null,to_timestamp('18/12/30 17:10:44.917000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (501,'qhsk','1111','보나','W',to_date('95/08/19','RR/MM/DD'),'O','U',null,null,null,null,'qhsk.jpg',null,null,to_timestamp('18/12/30 17:11:33.151000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (502,'gusqls','1111','현빈','M',to_date('82/09/25','RR/MM/DD'),'N','U',null,null,null,null,'gusqls.jpg',null,null,to_timestamp('18/12/30 17:11:33.154000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (503,'tkfkd','1111','김사랑','W',to_date('78/01/12','RR/MM/DD'),'D','U',null,null,null,null,'tkfkd.jpg',null,null,to_timestamp('18/12/30 17:11:33.157000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (504,'tjdfud','1111','김성령','W',to_date('67/02/08','RR/MM/DD'),'C','U',null,null,null,null,'tjdfud.jpg',null,null,to_timestamp('18/12/30 17:11:33.159000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (505,'NATUREREPUBLIC','1111',null,null,null,null,'C','(주)네이처리퍼블릭','네이처리퍼블릭','080-890-6000','https://www.naturerepublic.com/','naturerepublic.jpg',null,null,to_timestamp('18/12/30 17:11:33.162000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (302,'test302','1111','이윤지','W',to_date('84/01/22','RR/MM/DD'),'D','U',null,null,null,null,'profile_302.png',null,null,to_timestamp('18/12/30 01:07:22.963000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (300,'test300','1111','노승현','M',to_date('91/07/25','RR/MM/DD'),'C','U',null,null,null,null,'profile_300.png',null,null,to_timestamp('18/12/30 00:29:12.622000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (301,'test301','1111','송혜교','W',to_date('81/05/30','RR/MM/DD'),'N','U',null,null,null,null,'profile_301.png',null,null,to_timestamp('18/12/30 01:07:22.952000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (303,'test303','1111','손나은','W',to_date('04/05/10','RR/MM/DD'),'O','U',null,null,null,null,'profile_303.png',null,null,to_timestamp('18/12/30 01:07:22.967000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (304,'test304','1111',null,null,null,null,'C','아모레퍼시픽','설화수',null,null,'profile_304.png','buisnessImg.png','106-85-12345',to_timestamp('18/12/30 01:08:38.639000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1001,'test1001','1111','김병윤','M',to_date('90/09/13','RR/MM/DD'),'N','U',null,null,null,null,'1001.jpg',null,null,to_timestamp('18/12/30 17:36:25.991000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1002,'test1002','1111','하정우','M',to_date('80/11/12','RR/MM/DD'),'O','U',null,null,null,null,'1002.jpg',null,null,to_timestamp('18/12/30 17:36:25.997000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1003,'test1003','1111','한예슬','W',to_date('71/11/12','RR/MM/DD'),'O','U',null,null,null,null,'1003.jpg',null,null,to_timestamp('18/12/30 17:36:26.001000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1004,'test1004','1111','조보아','W',to_date('69/07/12','RR/MM/DD'),'C','U',null,null,null,null,'1004.jpg',null,null,to_timestamp('18/12/30 17:36:26.007000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1005,'skinfood','1111',null,null,null,null,'C','(주)스킨푸드','스킨푸드','02-597-4191','http://www.theskinfood.com','skinfood.jpg',null,'214-09-21233',to_timestamp('18/12/30 17:38:05.877000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into WARNS
SET DEFINE OFF;
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (1,'디부틸하이드록시톨루엔','탈모,피부 과민반응,알러지유발',to_timestamp('18/12/31 16:23:06.671000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (2,'미네랄오일','여드름 유발,독소배출 방해,세포발육 방해,피부 노화',to_timestamp('18/12/31 16:23:06.678000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (3,'부틸하이드록시아니솔','유전자 이상,알러지,암 유발',to_timestamp('18/12/31 16:23:06.684000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (4,'소르빅애씨드','피부점막 자극(알러지성분 유발)',to_timestamp('18/12/31 16:23:06.690000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (5,'부틸메톡시디벤조일메탄','활성산소 생성, DNA 손상',to_timestamp('18/12/31 16:23:06.696000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (6,'벤조페논-3','호흡기, 소화기장애, 알러지 유발',to_timestamp('18/12/31 16:23:06.701000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (7,'이미다졸리디닐우레아','맥박수 증가,포름알데히드 방출,피부 염증 유발',to_timestamp('18/12/31 16:23:06.707000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (8,'0-사이멘-5올','강한자극,부종, 여드름,두드러기 유발',to_timestamp('18/12/31 16:23:06.713000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (9,'이소프로필알코올','두통,홍조,어지러움,구토 유발',to_timestamp('18/12/31 16:23:06.719000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (10,'소듐라우릴설페이트','백내장,피부건조,암 유발',to_timestamp('18/12/31 16:23:06.725000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (11,'향료','향을 유발하는 성분을 통칭하여 향료로 표기하여 실체를 알수없음',to_timestamp('18/12/31 16:23:06.730000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (13,'트리에탄올아민','안구질환,모발,피부건조 유발. 독성물질 변모',to_timestamp('18/12/31 16:23:06.736000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (14,'트리이소프로판올아민','과도한 피지제거로 피부 건조 유발',to_timestamp('18/12/31 16:23:06.741000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (15,'트리클로산','면역력, 수정능력 저하 원인의 내분비 장애물질',to_timestamp('18/12/31 16:23:06.746000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (16,'파라벤','접촉성피부염, 알러지, 기미, 주름의 원인. 내분비 장애물',to_timestamp('18/12/31 16:23:06.752000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (17,'페녹시에탄올','대표적인 방부제로 체내 흡수 시 마취작용 및 자극유발',to_timestamp('18/12/31 16:23:06.758000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (18,'폴리에틸렌글라이콜','간장,신장 장애,알러지 유발',to_timestamp('18/12/31 16:23:06.763000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (19,'합성착색료','식품에서 사용해도 위험성이 없다고 할 수 없음',to_timestamp('18/12/31 16:23:06.770000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (20,'호르몬류','의약품에 가까운 물질로써 여자아이의 성조숙증 유발',to_timestamp('18/12/31 16:23:06.777000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (12,'타몰','구토, 설사, 두통, 이명 유발. 피부자극이 강함.',to_timestamp('18/12/31 16:49:13.979000000','RR/MM/DD HH24:MI:SSXFF'));
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
--  파일이 생성됨 - 수요일-1월-02-2019   
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
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (701,to_timestamp('18/12/30 17:09:22.559000000','RR/MM/DD HH24:MI:SSXFF'),'헤라 Golden Pig가 드리는 2019 행복 기원 이벤트',to_date('19/01/01','RR/MM/DD'),to_date('19/01/11','RR/MM/DD'),'nono123@naver.com',705);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (801,to_timestamp('18/12/30 16:58:52.648000000','RR/MM/DD HH24:MI:SSXFF'),'링클&리프팅 사이언스 출시 기념 #기대끌올 EVENT',to_date('18/12/20','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'innisfree@innisfree.com',805);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (901,to_timestamp('18/12/30 17:05:06.371000000','RR/MM/DD HH24:MI:SSXFF'),'공식몰 단독혜택',to_date('18/12/27','RR/MM/DD'),to_date('19/01/27','RR/MM/DD'),'user_support@kr.estee.com',905);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (401,to_timestamp('18/12/30 17:10:47.635000000','RR/MM/DD HH24:MI:SSXFF'),'더바디샵 명예의 전당 주인공이 되어보세요.',to_date('18/12/24','RR/MM/DD'),to_date('19/01/03','RR/MM/DD'),'webmaster@thebodyshop.co.kr',405);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (501,to_timestamp('18/12/30 17:11:35.666000000','RR/MM/DD HH24:MI:SSXFF'),'2018 홀리데이룩 구매 프로모션',to_date('18/11/27','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'nature1230@naver.com',505);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (300,to_timestamp('18/12/30 02:54:31.998000000','RR/MM/DD HH24:MI:SSXFF'),'설화수에서 쏩니다',to_date('18/12/03','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'),'event@sulwhasoo.com',304);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1001,to_timestamp('18/12/30 17:40:55.332000000','RR/MM/DD HH24:MI:SSXFF'),'고객감사페스티벌',to_date('18/12/25','RR/MM/DD'),to_date('19/01/30','RR/MM/DD'),'event1@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1002,to_timestamp('18/12/30 17:40:55.337000000','RR/MM/DD HH24:MI:SSXFF'),'화장품아 놀자',to_date('18/11/25','RR/MM/DD'),to_date('19/02/10','RR/MM/DD'),'event2@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1003,to_timestamp('18/12/30 17:40:55.340000000','RR/MM/DD HH24:MI:SSXFF'),'어멋, 이건 사야되',to_date('17/11/25','RR/MM/DD'),to_date('18/01/10','RR/MM/DD'),'event3@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1004,to_timestamp('18/12/30 17:40:55.343000000','RR/MM/DD HH24:MI:SSXFF'),'화장띠',to_date('18/01/25','RR/MM/DD'),to_date('18/12/25','RR/MM/DD'),'event4@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1005,to_timestamp('18/12/30 17:40:55.346000000','RR/MM/DD HH24:MI:SSXFF'),'촉촉하게 적셔주지',to_date('19/01/25','RR/MM/DD'),to_date('19/02/20','RR/MM/DD'),'event5@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1006,to_timestamp('18/12/30 17:40:55.348000000','RR/MM/DD HH24:MI:SSXFF'),'연말엔 이걸로!',to_date('18/10/25','RR/MM/DD'),to_date('18/12/31','RR/MM/DD'),'event6@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1007,to_timestamp('18/12/30 17:40:55.350000000','RR/MM/DD HH24:MI:SSXFF'),'새해맞이 최대할인 이벤트',to_date('19/01/01','RR/MM/DD'),to_date('19/01/31','RR/MM/DD'),'event7@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1008,to_timestamp('18/12/30 17:40:55.352000000','RR/MM/DD HH24:MI:SSXFF'),'안기모씨?',to_date('18/07/09','RR/MM/DD'),to_date('18/09/30','RR/MM/DD'),'event8@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1009,to_timestamp('18/12/30 17:40:55.356000000','RR/MM/DD HH24:MI:SSXFF'),'10대부터 90대까지 이벤트',to_date('18/11/09','RR/MM/DD'),to_date('19/02/28','RR/MM/DD'),'event9@naver.com',1005);
Insert into EVENTS (NO,REGDATE,TITLE,START_DATE,END_DATE,EMAIL,USER_NO) values (1010,to_timestamp('18/12/30 17:40:55.359000000','RR/MM/DD HH24:MI:SSXFF'),'할로윈 화장품 이벤트',to_date('18/10/01','RR/MM/DD'),to_date('18/10/31','RR/MM/DD'),'event10@naver.com',1005);
REM INSERTING into ITEMS
SET DEFINE OFF;
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (704,705,'바이탈 리프팅 에센셜 베이스 SPF15/PA+',55000,'30ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_704.jpg','F','hera_704.jpg',to_timestamp('18/12/30 17:08:28.861000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (705,705,'플래쉬-온 아이 세럼',75000,'15ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_705.jpg','F','hera_705.jpg',to_timestamp('18/12/30 17:08:28.864000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (706,705,'립 젤크러쉬',37000,'3.5g','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_706.jpg','F','hera_706.jpg',to_timestamp('18/12/30 17:08:28.867000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (707,705,'네일 에나멜 컬러',22000,'10ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_707.jpg','F','hera_707.jpg',to_timestamp('18/12/30 17:08:28.870000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (708,705,'얼반 로즈 퍼퓸드 바디 로션',50000,'250 ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_708.jpg','F','hera_708.jpg',to_timestamp('18/12/30 17:08:28.872000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (709,705,'페이스 디자이닝 블러셔',48000,'10g','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_709.jpg','F','hera_709.jpg',to_timestamp('18/12/30 17:08:28.874000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (710,705,'익셉셔널 오 드 퍼퓸',85000,'30ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_710.jpg','F','hera_710.jpg',to_timestamp('18/12/30 17:08:28.877000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (401,405,'브리티쉬 로즈 페탈-소프트 젤 토너 250ML',24000,'250ml','E','W','E','정제수, 프로판디올, 메칠글루세스-20, 피피지-26-부테스-26, 글리세린, 피이지-40하이드로제네이티드캐스터오일, 페녹시에탄올 등','tbs401.jpg','F','tbs401.jpg',to_timestamp('18/12/30 17:10:47.572000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (402,405,'스킨 디펜스 자외선차단제 60ML',29900,'60ml','E','W','B','정제수, 변성알코올, 에칠헥실메톡시신나메이트, 네오펜틸글라이콜디헵타노에이트, 부틸메톡시디벤조일메탄, 부틸렌글라이콜, 디메치콘, 글리세린','tbs402.jpg','F','tbs402.jpg',to_timestamp('18/12/30 17:10:47.576000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (403,405,'티트리 스킨 클리어링 훼이셜 워시 250ML',17000,'250ml','E','W','E','정제수, 글리세린, 소듐라우레스설페이트, 코카미도프로필베타인, 피이지-120메칠글루코오스디올리에이트, 피이지-40하이드로제네이티드캐스터오일','tbs403.jpg','F','tbs403.jpg',to_timestamp('18/12/30 17:10:47.580000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (404,405,'마카 룻 & 알로에 카밍 포스트 쉐이브 워터 젤 포 맨 160ML',21000,'160ml','E','M','E','정제수, 프로판디올, 암모늄아크릴로일디메칠타우레이트/브이피코폴리머, 피피지-26-부테스-26, 피이지-40하이드로제네이티드캐스터오일, 디프로필렌글라이콜','tbs404.jpg','F','tbs404.jpg',to_timestamp('18/12/30 17:10:47.582000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (405,405,'드롭스 오브 유스 유스 아이 크림 20ML',36000,'20ml','E','W','E','정제수, 글리세린, 돌콩오일, 디메치콘, 카프릴릭/카프릭트리글리세라이드, 변성알코올, 이소세틸스테아레이트, 이소노닐이소노나노에이트, 펜틸렌글라이콜','tbs405.jpg','F','tbs405.jpg',to_timestamp('18/12/30 17:10:47.585000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (406,405,'본 리피 립밤 - 라즈베리 10ML',7500,'10ml','E','W','E','피마자씨오일, 폴리글리세릴-3비즈왁스, 라놀린, 향료, 비즈왁스, 하이드로제네이티드캐스터오일, [나노] 실리카, 토코페릴아세테이트, 잇꽃씨오일','tbs406.jpg','F','tbs406.jpg',to_timestamp('18/12/30 17:10:47.588000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (407,405,'핑크 그레이프후룻 핸드 크림 30ML',7000,'30ml','E','W','E','정제수, 글리세린, 카프릴릭/카프릭트리글리세라이드, 스위트아몬드오일, 소듐폴리아크릴레이트, 세틸알코올, 펜타에리스리틸디스테아레이트, 페녹시에탄올','tbs407.jpg','F','tbs407.jpg',to_timestamp('18/12/30 17:10:47.590000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (408,405,'스파 오브 더 월드 메디테라니안 씨 솔트 스크럽 350ML',46000,'350ml','E','W','E','에칠헥실팔미테이트, 씨솔트, 소듐클로라이드, 해바라기씨오일, [나노] 실리카, 돌콩오일, 시어버터, 향료, 페녹시에탄올, 헥실신남알, 벤질살리실레이트, 토코페롤','tbs408.jpg','F','tbs408.jpg',to_timestamp('18/12/30 17:10:47.594000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (409,405,'대용량 진저 스캘프 케어 샴프 400ML',17000,'400ml','E','W','E','정제수, 소듐라우레스설페이트, 코카미도프로필베타인, 피록톤올아민, 판테놀, 폴리소르베이트20, 소듐벤조에이트, 프로필렌글라이콜, 소듐클로라이드','tbs409.jpg','F','tbs409.jpg',to_timestamp('18/12/30 17:10:47.597000000','RR/MM/DD HH24:MI:SSXFF'),'E',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (410,405,'화이트 머스크 후레그런스 바디 미스트 100ML',21000,'100ml','E','M','E','에탄올, 정제수, 변성알코올, 향료, 부틸페닐메칠프로피오날, 하이드록시이소헥실3-사이클로헥센카복스알데하이드, t-부틸알코올, 헥실신남알, 리날룰','tbs410.jpg','F','tbs410.jpg',to_timestamp('18/12/30 17:10:47.599000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (510,505,'러브 미 버블 샤워 코롱 - 그레이프 후르츠',14900,'110ml','E','W','E','자몽추출물로 비타민C가 풍부하여 피부를 케어해줍니다.','naturerepublic510.gif','F','naturerepublic510.gif',to_timestamp('18/12/30 17:11:35.592000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (509,505,'블랙빈 안티 헤어로스 샴푸',15000,'300ml','E','W','E','검정콩추출물과 블랙 콤플렉스가 함유되어 두피와 모발 영양 공급에 도움을 줍니다. 탈모 완화 기능성 샴푸입니다. 토탄수 성분이 두피 피지 흡착에 도움을 주어 두피 케어를 돕습니다.','naturerepublic509.gif','F','naturerepublic509.gif',to_timestamp('18/12/30 17:11:35.597000000','RR/MM/DD HH24:MI:SSXFF'),'E',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (508,505,'러브 미 버블 샤워 젤-프레시 알로에',20000,'1l','E','W','E','알로에 5 complex가 함유되어 촉촉하고 건강한 피부로 가꾸는데 도움을 줍니다.','naturerepublic508.gif','F','naturerepublic508.gif',to_timestamp('18/12/30 17:11:35.600000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (507,505,'[2018] 컬러 앤 네이처 네일 케어 매트 탑 코트',2500,'8ml','E','W','E','특이사항 없습니다.','naturerepublic507.gif','F','naturerepublic507.gif',to_timestamp('18/12/30 17:11:35.602000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (506,505,'샤인 블라썸 블러셔 01 핑크 블라썸',6900,'10g','E','W','E','특이사항 없습니다.','naturerepublic506.gif','F','naturerepublic506.gif',to_timestamp('18/12/30 17:11:35.604000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (505,505,'보테니컬 스키니 아이브로우 코팅카라 03 로지빈스',7500,'3.5g','E','W','E','특이사항 없습니다.','naturerepublic505.gif','F','naturerepublic505.gif',to_timestamp('18/12/30 17:11:35.606000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (504,505,'프로방스 인텐시브 앰플 파운데이션 SPF30 PA+++',22000,'30ml','E','W','E','3Effect Ampoule Complex 및 앰플 성분을 약 66% 함유하고 정제수 대신 미네랄 워터를 사용하여 보습, 퍼밍, 영양 케어의 스킨 케어 효과를 부여 합니다.','naturerepublic504.gif','F','naturerepublic504.gif',to_timestamp('18/12/30 17:11:35.608000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (503,505,'포레스트 가든 미셀라 클렌징 오일 인 워터_카모마일',14000,'250ml','E','W','E','미셀라 성분이 메이크업 잔여물과 노폐물만을 닦아내어주고 약산성 클렌저가 수분 보호막 손상 없이 수분 막을 형성하여 유수분 밸러스를 맞추어 줍니다.','naturerepublic503.gif','F','naturerepublic503.gif',to_timestamp('18/12/30 17:11:35.611000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (502,505,'그린더마 마일드 키즈 선 쿠션 SPF50+ PA++++',23000,'12ml','K','W','E','프로폴리스추출물는 천연 유리 성분으로 촉촉하고 건강한 피부로 가꿔줍니다. 센텔라아시아티카 성분은 병풀 유래 추출물로 마데카소사이드, 아시아티코사이드, 마데카식애씨드, 아시아틱애씨드가 모두 담겨 피부를 보호하고 피부 고민 부위 케어에 도움을 줍니다.','naturerepublic502.gif','F','naturerepublic502.gif',to_timestamp('18/12/30 17:11:35.614000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (501,505,'더 착한 마음 히알루론산 워터 토너',18000,'400ml','E','W','E','히알루론산이 피부에 수분을 공급합니다. pH 5~6의 약산성으로 피부 pH 밸런스 케어에 도움이 됩니다. 자연 유래 에센셜 오일과 같은 마일드한 성분으로 민감한 피부에도 편안하게 사용할 수 있습니다.','naturerepublic501.gif','F','naturerepublic501.gif',to_timestamp('18/12/30 17:11:35.617000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (300,304,'윤조에센스',90000,'60ml','A','a','E','사용 중 붉은 반점, 부어오름, 자극등의 트러블이상이 있는 경우 사용을 중지하시고 피부과 전문의에게 상담하십시오.','deltail_300.png',null,'product300.png',to_timestamp('18/12/30 01:28:07.452000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (301,304,'탄력크림',105000,'75ml','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_301.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (302,304,'쉬어 래스팅 파운데이션 SPF25 PA++',58000,'30ml','A','M','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_302.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (303,304,'아이브로우 퍼펙터',20000,'0.3g','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_303.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (304,304,'에센셜 립세럼 스틱_ 남자친구 송혜교 립스틱 3g',40000,'3g','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_304.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (305,304,'래디언스 블러셔',60000,'10g','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_305.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (306,304,'퍼펙팅쿠션 SPF50+/PA+++',65000,'15g','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_306.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (307,304,'릴랙싱 UV 프로텍터',40000,'50ml','E','M','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_307.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (308,304,'매화지향 향수 스프레이',40000,'15ml','A','W','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_308.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'M',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (309,304,'리프레싱클렌징폼',30000,'150ml','E','M','E','글리세린, 미리스틱애씨드, 정제수, 스테아릭애씨드, 포타슘하이드록사이드, 피이지-32, 실리카, 글리세릴스테아레이트, 코 카미도프로필베타인, 피이지-100스테아레이트, 인삼가루, 호두껍질가루, 소듐메칠코코일타우레이트, 디소듐이디티에이, 소듐벤조에이트, 향료','detail.png',null,'product_309.png',to_timestamp('18/12/30 02:40:27.135000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1001,1005,'라이스 데일리 브라이트닝 스크럽 폼',10000,'150ml','E','W','C','강원 청정 철원 오대 쌀을 백국균을 발효하여 더욱 강력해진 라이스 데일리 브라이트닝 라인','detail1001.jpg','F','item1001.jpg',to_timestamp('18/12/30 17:38:27.540000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1002,1005,'허니 밀 촉촉 클렌징폼',8000,'150ml','E','W','D','새하얀 밀처럼 말끔, 쫀쫀 꿀처럼 촉촉! 내 피부를 생각한 순한 클렌징 라인','detail1002.jpg','F','item1002.jpg',to_timestamp('18/12/30 17:38:27.543000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1003,1005,'에그 화이트 퍼펙트 포어 클렌징 워터',12000,'300ml','E','W','C','깐 달걀 피부 변신! 피부 노폐물은 없애고 모공 고민 잠재우는 모공 전문 클렌징','detail1003.jpg','F','item1003.jpg',to_timestamp('18/12/30 17:38:27.546000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1004,1005,'선플라워 에어리 선스틱 SPF50+PA++++',15000,'20g','E','W','C','선플라워 씨드의 건강함을 담은 강력 선 차단!','detail1004.jpg','F','item1004.jpg',to_timestamp('18/12/30 17:38:27.551000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1005,1005,'알로에 쿨링 선 클리어 스틱SPF50+PA+++',13000,'20g','E','W','C','넘치는 수분감, 산뜻한 마무리! 언제 어디서나 내 맘대로 골라 쓰는 알로에 선케어','detail1005.jpg','F','item1005.jpg',to_timestamp('18/12/30 17:38:27.553000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1006,1005,'알로에 워터리 쿨링 선크림',25000,'200g','E','W','C','더위에 지친 피부를 건강하게 지켜줄 알로에 쿠링 선라인!','detail1006.jpg','F','item1006.jpg',to_timestamp('18/12/30 17:38:27.557000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1007,1005,'수분베리 프레시 앰플',24000,'60ml','E','W','C','풍부한 수분을 머금은 레드 베이베리의 농축 수분 에너지로 쫀쫀하고 촉촉하게 마무리되는 고수분 앰플','detail1007.jpg','F','item1007.jpg',to_timestamp('18/12/30 17:38:27.560000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1008,1005,'로열허니 프로폴리스 인리치 에센스',30000,'50ml','E','W','C','더욱 진하게 숙성된 순수 프로폴리스가 채워주는 더 강해진 탄탄 피부 보습','detail1008.jpg','F','item1008.jpg',to_timestamp('18/12/30 17:38:27.564000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1009,1005,'로열허니 에센셜 아이 크림',10000,'150ml','E','W','C','꿀찬 보습으로 여왕의 피부처럼 촉촉하게 빛나는 보습 라인','detail1009.jpg','F','item1009.jpg',to_timestamp('18/12/30 17:38:27.567000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (1010,1005,'수분포드 바운스 아이 크림',28000,'30g','E','W','C','바다 속 그린캐비어가 피부 속 꽉찬 수분으로!','detail1010.jpg','F','item1010.jpg',to_timestamp('18/12/30 17:38:27.570000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);

/* 기초케어 1*/
insert into items(NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO)
values(801,805,'비자 트러블 로션',13000,'100ml','E','W','E','스킨 사용 후 적당량을 덜어 얼굴 전체에 부드럽게 펴 발라주어 편안한 피부 상태로 케어해줍니다.','innisfree801.png','F','innisfree801.png',systimestamp,'E',1);

/*선케어 2*/
insert into items(NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO)
values(802,805,'데일리 UV 프로텍션 로션 포 패밀리',24000,'150ml','E','W','E','선인장줄기추출물이 함유되어 촉촉한 수분감과 뛰어난 보습 효과를 선사합니다.','innisfree802.png','F','innisfree802.png',systimestamp,'E',2);

Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (803,805,'비자 트러블 훼이셜 폼 ',8000,'150ml','E','W','E','손에 적당량의 내용물을 취하여 충분히 거품을 낸 후 마사지하듯 문지른 다음 깨끗이 씻어냅니다.','innisfree803.png','F','innisfree803.png',to_timestamp('18/12/30 16:58:52.589000000','RR/MM/DD HH24:MI:SSXFF'),'E',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (804,805,'미네랄 수분 피팅 베이스 ',12000,'40ml','E','W','E','메이크업 제품 사용 전, 부드럽게 피부에 도포해주면 생녹차수의 풍부한 수분감으로 촉촉한 수분광 피부 완성.','innisfree804.png','F','innisfree804.png',to_timestamp('18/12/30 16:58:52.590000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (805,805,'퍼펙트 9 리페어 아이크림 ',42000,'30g','E','W','E','제주 영주초 콤플렉스의 9가지 유효 성분으로 노화 징후 케어는 물론 주름 개선 & 미백까지 케어하는 안티에이징 아이크림.','innisfree805.png','F','innisfree805.png',to_timestamp('18/12/30 16:58:52.591000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (806,805,'마이 립밤',10000,'15g','E','W','E','특이사항 없습니다.','innisfree806.png','F','innisfree806.png',to_timestamp('18/12/30 16:58:52.594000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (807,805,'그린 네일',5000,'7ml','E','W','E','특이사항 없습니다.','innisfree807.png','F','innisfree807.png',to_timestamp('18/12/30 16:58:52.596000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (808,805,'커피 버블 바디 스크럽 ',18000,'250ml','E','W','E','커피박에서 추출해 낸 커피 오일과 슈가 알갱이가 각질을 매끈하게 케어하고 부드러운 거품이 피부를 매끈하게 마무리 해주는 바디 스크럽.','innisfree808.png','F','innisfree808.png',to_timestamp('18/12/30 16:58:52.598000000','RR/MM/DD HH24:MI:SSXFF'),'B',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (809,805,'마이 헤어 레시피 리프레싱 비니거 트리트먼트',12000,'150ml','K','W','E','제주 소나무, 삼나무, 편백나무의 성분이 두피 스트레스를 완화시켜 건강한 두피로 가꿔줍니다.','innisfree809.png','F','innisfree809.png',to_timestamp('18/12/30 16:58:52.601000000','RR/MM/DD HH24:MI:SSXFF'),'B',9);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (810,805,'마이 퍼퓸 스틱 뮤직',9000,'2.3g','E','W','E','파우치나 클러치에 넣어도 부담스럽지 않은 2.3g 미니 스틱 향수로 언제 어디서나 간편하게 다양한 향을 즐길 수 있습니다.','innisfree810.png','F','innisfree810.png',to_timestamp('18/12/30 16:58:52.603000000','RR/MM/DD HH24:MI:SSXFF'),'B',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (901,905,'6세대 갈색병 리페어 에센스',155000,'50ml','E','W','E','히알루론산을 함유한 나이트 리페어 세럼의 수분자석 효과로 하루종일 촉촉한 피부로 가꿔주고, 잔주름과 깊은 주름이 크게 줄어듭니다.','itemwarn901.jpg','F','item901.jpg',to_timestamp('19/01/02 10:47:13.921000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (902,905,'크레센트 화이트 UV 프로텍터',62000,'30ml','E','W','E','포뮬러의 부드럽고 가벼운 질감은 바르기 쉬울 뿐 만 아니라, 피부를 화장하기 최적의 상태로 만들어줍니다.','itemwarn902.jpg','F','item902.jpg',to_timestamp('19/01/02 10:47:13.926000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (903,905,'퍼펙틀리 클린 멀티 액션 폼 클렌저/퓨리파잉 마스크',38000,'150ml','E','W','E','풍부한 거품이 빠르게 생성되어, 모공 속 불순물과 피부 표면의 칙칙한 각질을 부드럽게 제거해주는 클렌저.','itemwarn903.jpg','F','item903.jpg',to_timestamp('19/01/02 10:47:13.951000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (904,905,'더블 웨어 파운데이션',69000,'30ml','E','W','E','가까이서 보아도 자신 있게, 결점 없이 완벽한 피부를 연출해줍니다.뛰어난 커버력과 오랜 지속력, 편안한 사용감으로 사랑받아 온 에스티 로더의 베스트 셀러 리퀴드 파운데이션입니다.','itemwarn904.jpg','F','item904.jpg',to_timestamp('19/01/02 10:47:13.960000000','RR/MM/DD HH24:MI:SSXFF'),'M',4);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (905,905,'퓨어 칼라 엔비 디파이닝 아이섀도우',34000,'1.8g','E','W','E','선명한 발색과 촉촉한 밀착력의 엔비 아이섀도우. 펄, 매트, 벨벳 등 다채로운 텍스처로 더욱 새로워진 엔비 싱글 아이섀도우를 만나보세요. 부드러운 누드톤부터 강렬한 칼라까지, 24가지 색상으로 다양하고 풍부한 아이 메이크업을 연출할 수 있습니다.','itemwarn905.jpg','F','item905.jpg',to_timestamp('19/01/02 10:47:13.966000000','RR/MM/DD HH24:MI:SSXFF'),'M',5);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (906,905,'퓨어 컬러 엔비 페인트-온 리퀴드 립',41000,'7ml','E','W','E','보이는 컬러 그대로, 강렬한 페인트 발색','itemwarn906.jpg','F','item906.jpg',to_timestamp('19/01/02 10:47:13.974000000','RR/MM/DD HH24:MI:SSXFF'),'M',6);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (907,905,'퓨어컬러 네일 락카',27000,'9ml','E','W','E','유리알처럼 빛나는 광택과 선명하고 다양한 컬러로 사랑받는 에스티 로더의 네일 락카를 만나보세요.','itemwarn907.jpg','T','item907.jpg',to_timestamp('19/01/02 10:47:13.980000000','RR/MM/DD HH24:MI:SSXFF'),'M',7);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (908,905,'플레져 바디 로션',69000,'250ml','E','W','E','커팅 되지 않은 크리스탈의 투명함과 우아한 심플함을 즐기는 여성을 위한 바디로션입니다.','itemwarn908.jpg','F','item908.jpg',to_timestamp('19/01/02 10:47:13.987000000','RR/MM/DD HH24:MI:SSXFF'),'E',8);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (909,905,'모던 뮤즈 EDP',90000,'30ml','E','W','E','우아한 스파클링 재스민의 플로럴 향과, 독창적이고 관능적인 우디 향이 어우러진 모던 뮤즈만의 특별한 향을 경험해보세요. ','itemwarn909.jpg','F','item909.jpg',to_timestamp('19/01/02 10:47:13.996000000','RR/MM/DD HH24:MI:SSXFF'),'E',10);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (701,705,'셀 에센스',60000,'150ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_701.jpg','F','hera_701.jpg',to_timestamp('18/12/30 17:08:28.853000000','RR/MM/DD HH24:MI:SSXFF'),'B',1);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (702,705,'선 메이트 엑설런스 SPF50+ PA++++',45000,'40ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_702.jpg','F','hera_702.jpg',to_timestamp('18/12/30 17:08:28.856000000','RR/MM/DD HH24:MI:SSXFF'),'B',2);
Insert into ITEMS (NO,USER_NO,TITLE,PRICE,VOLUME,AGE,GENDER,SKIN,CONTENT,DETAIL_IMG,TYPE,IMG,REGDATE,FIRST,SECOND_NO) values (703,705,'화이트 프로그램 딥 클렌징 폼',32000,'200ml','E','W','E','정제수, 프로판디올, 나이아신아마이드, 글리세린, 글리세레스-26,부틸렌글라이콜, 서양톱풀추출물, 트리에칠헥사노인, 스쿠알란, 디메치콘, 피이지-60글리세릴이소스테아레이트, 글리세릴스테아레이트, 세테아릴알코올, 피이지-20글리세릴이소스테아레이트','hera_detail_703.jpg','F','hera_703.jpg',to_timestamp('18/12/30 17:08:28.858000000','RR/MM/DD HH24:MI:SSXFF'),'B',3);
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
Insert into PROBLEMS (NO,TITLE,REGDATE) values (1,'알레르기(아토피 등)',to_timestamp('18/12/31 16:23:06.783000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMS (NO,TITLE,REGDATE) values (2,'안티에이징',to_timestamp('18/12/31 16:23:06.788000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into PROBLEMS (NO,TITLE,REGDATE) values (3,'트러블',to_timestamp('18/12/31 16:23:06.794000000','RR/MM/DD HH24:MI:SSXFF'));
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
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (803,to_timestamp('18/12/30 16:58:52.690000000','RR/MM/DD HH24:MI:SSXFF'),806,801,'강추강추 !');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (901,to_timestamp('18/12/30 17:07:04.241000000','RR/MM/DD HH24:MI:SSXFF'),904,902,'저도 향수 뭘 살지 고민하고 있었는데 이걸로 사야겠네요');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (902,to_timestamp('18/12/30 17:07:04.245000000','RR/MM/DD HH24:MI:SSXFF'),902,903,'더블웨어 진짜 이번기회에 한번 사봐야겟네요');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (801,to_timestamp('18/12/30 16:58:52.686000000','RR/MM/DD HH24:MI:SSXFF'),804,801,'또 사고 싶어요 !');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (802,to_timestamp('18/12/30 16:58:52.688000000','RR/MM/DD HH24:MI:SSXFF'),802,804,'괜찮은 것 같아요.');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (903,to_timestamp('18/12/30 17:07:04.247000000','RR/MM/DD HH24:MI:SSXFF'),903,901,'여자친구한테 사주면 좋아할것같네요 선물로 해줘야겠어요 ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (701,to_timestamp('18/12/30 17:09:35.135000000','RR/MM/DD HH24:MI:SSXFF'),701,702,'리뷰넘넘 좋아요 ~');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (702,to_timestamp('18/12/30 17:09:35.137000000','RR/MM/DD HH24:MI:SSXFF'),701,703,'저도 같은 생각 입니다 !!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (703,to_timestamp('18/12/30 17:09:35.139000000','RR/MM/DD HH24:MI:SSXFF'),701,704,'이런 리뷰 정말 좋은걸요 ~~! :)');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (704,to_timestamp('18/12/30 17:09:35.142000000','RR/MM/DD HH24:MI:SSXFF'),702,701,'리뷰 너무 좋아요 >~< !!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (705,to_timestamp('18/12/30 17:09:35.144000000','RR/MM/DD HH24:MI:SSXFF'),702,703,'아니 이것은 황금 리뷰네요 ~');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (706,to_timestamp('18/12/30 17:09:35.147000000','RR/MM/DD HH24:MI:SSXFF'),702,704,'허허 리뷰 대단하군요 ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (707,to_timestamp('18/12/30 17:09:35.150000000','RR/MM/DD HH24:MI:SSXFF'),703,702,'이런 리뷰는 헤라한테 좋은 내용이군요 ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (708,to_timestamp('18/12/30 17:09:35.152000000','RR/MM/DD HH24:MI:SSXFF'),703,701,'이것이 필요하다고 말하면 어떻게 정의 할 수 있죠??');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (709,to_timestamp('18/12/30 17:09:35.154000000','RR/MM/DD HH24:MI:SSXFF'),703,704,'강요하는 느낌의 리뷰네요 ;;;');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (401,to_timestamp('18/12/30 17:10:47.668000000','RR/MM/DD HH24:MI:SSXFF'),404,401,'엇 저도 이제품 써보고 싶네요');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (402,to_timestamp('18/12/30 17:10:47.669000000','RR/MM/DD HH24:MI:SSXFF'),406,402,'이 립밤 발림성 좋나요?');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (403,to_timestamp('18/12/30 17:10:47.671000000','RR/MM/DD HH24:MI:SSXFF'),410,404,'미스트는 보통 오래가지 않지 않나요?');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (501,to_timestamp('18/12/30 17:11:35.708000000','RR/MM/DD HH24:MI:SSXFF'),504,501,'이번 신상 색상 괜찮네요!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (502,to_timestamp('18/12/30 17:11:35.710000000','RR/MM/DD HH24:MI:SSXFF'),502,504,'저도 요즘 고민이에요 ㅠ');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (503,to_timestamp('18/12/30 17:11:35.712000000','RR/MM/DD HH24:MI:SSXFF'),506,501,'클렌징은 미셀라 클렌징 오일 인 워터_카모마일 추천해요!!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (300,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),300,300,'오 그래요?? 좋은가 보군');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (301,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),301,300,'역시는 역시군요');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (302,to_timestamp('18/12/30 03:40:21.621000000','RR/MM/DD HH24:MI:SSXFF'),302,300,'많은도움받았습니다.~!!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1001,to_timestamp('18/12/30 17:42:43.270000000','RR/MM/DD HH24:MI:SSXFF'),1001,1001,'오호! 꽤 좋구만 추천!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1002,to_timestamp('18/12/30 17:42:43.272000000','RR/MM/DD HH24:MI:SSXFF'),1002,1002,'내 피부가 꿀 피부가 됨!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1003,to_timestamp('18/12/30 17:42:43.274000000','RR/MM/DD HH24:MI:SSXFF'),1003,1003,'매혹적인 향기.. 지림');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1004,to_timestamp('18/12/30 17:42:43.278000000','RR/MM/DD HH24:MI:SSXFF'),1003,1001,'데이트때 뿌려야징!');
Insert into REPLIES (NO,REGDATE,REVIEW_NO,USER_NO,CONTENT) values (1008,to_timestamp('18/12/30 17:42:43.281000000','RR/MM/DD HH24:MI:SSXFF'),1007,1001,'윗분.. 개그.. ㅋ');
REM INSERTING into REVIEWCONTENTS
SET DEFINE OFF;
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (803,to_timestamp('18/12/30 16:58:52.680000000','RR/MM/DD HH24:MI:SSXFF'),'review803.jpg','거품이 아주 몽글몽글 잘 나와서 정말 좋아요.',803,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (804,to_timestamp('18/12/30 16:58:52.683000000','RR/MM/DD HH24:MI:SSXFF'),'review804.jpg','지인에게 추천해주고 싶은 아이템이에요 :)',804,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (805,to_timestamp('18/12/30 16:58:52.684000000','RR/MM/DD HH24:MI:SSXFF'),'review805.jpg','수분광 피부 완성 ~~',804,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (901,to_timestamp('18/12/30 17:06:42.036000000','RR/MM/DD HH24:MI:SSXFF'),'review901.jpg','밤에 듬뿍 바르고 잤더니 다음날 조금 촉촉해졌어요..그동안 피부가 너무 건조해서 뭘 발라도 푸석했는데.. 조금 나아진걸 느껴요. 샘플도 넣어주셨는데 여름에 밖에 수정용으로 들고다니기 좋을것 같애요~',901,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (902,to_timestamp('18/12/30 17:06:42.039000000','RR/MM/DD HH24:MI:SSXFF'),'review902.jpg','좋다는 말은 많이 들었는데 맨날 고민만 하다가 결국 샀어요ㅋ요즘 베이스는 계속 더블웨어로 하고 있답니다~',904,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (801,to_timestamp('18/12/30 16:58:52.677000000','RR/MM/DD HH24:MI:SSXFF'),'review801.jpg','한번 더 사고 싶어요 !',801,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (802,to_timestamp('18/12/30 16:58:52.678000000','RR/MM/DD HH24:MI:SSXFF'),'review802.jpg','자외선차단에 아주 효과적이에요 !',802,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (903,to_timestamp('18/12/30 17:06:42.042000000','RR/MM/DD HH24:MI:SSXFF'),'review903.jpg','컨트로버셜 사고...집에 오면서 너어무 이쁜 레드컬러예요! 그라데이션하니깐 핑크빛이 밑색으로 보이더라구요',906,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (904,to_timestamp('18/12/30 17:06:42.043000000','RR/MM/DD HH24:MI:SSXFF'),'review9032.jpg','웜한 피부라서 안어울릴까 하지만 또 요런게 피부 형광등 켜주거든요! 거기다 어플리케이터로 올려도 얇게 올라가고 발림성이 진짜 좋아요! 오일이 가득한듯이 올라가는데 시간이 지나면 마치 거기가 자기 자리였던듯 입술에 ? 밀착되요! 레드립 좋아하시면 적극추천합니다!!',906,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (905,to_timestamp('18/12/30 17:06:42.047000000','RR/MM/DD HH24:MI:SSXFF'),'review904.jpg','쓰던거 다 써서 다시 재구매했어요 향이 질리지도않고 너무 좋아요 이거 다 쓰면 또 재구매할 정도로 향 너무 좋습니다.',909,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (701,to_timestamp('18/12/30 17:09:08.645000000','RR/MM/DD HH24:MI:SSXFF'),'review701.jpg','우울한 기분이 확 날라가는 느낌으로 발색도 예쁘고 색감을 보는 순간부터 기분이 좋네요. 2중으로 되어 있구요... 향도 진하지 않고 네일 가격으로 좀 있지만 발림이랑 솔 상태는 무척 좋아요. 다양한 칼라가 더 많이 나왔으면 좋겠어요.',707,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (702,to_timestamp('18/12/30 17:09:08.648000000','RR/MM/DD HH24:MI:SSXFF'),'review702.jpg','너무 작은 상자에 담겨져서 왔구요... 안에는 종이포장으로 돌돌 말려서 왔는데 환경보호를 위해서 종이포장인 듯 하네요. 색은 생각보다 더 짱짱한 색으로 예쁘네요. 어머니 드리려고 구입했는데 저도 같이 바르려구요. 비싸지만 잘 발리고 금방 말라요',707,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (703,to_timestamp('18/12/30 17:09:08.650000000','RR/MM/DD HH24:MI:SSXFF'),'review703.jpg','로제휘기에 핸드크림 같을거라고 예상했는데 생각보다 향이 고급지지도않고 너무 무난해요.',708,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (704,to_timestamp('18/12/30 17:09:08.652000000','RR/MM/DD HH24:MI:SSXFF'),'review704.jpg','향도 좋고 바를때 느낌도 좋습니다ㆍ 생각보다 향이 오래가지는 않는것 같구요? 가격이 착하지 않습니다?',708,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (705,to_timestamp('18/12/30 17:09:08.654000000','RR/MM/DD HH24:MI:SSXFF'),'review705.jpg','무펄의 맑은 느낌으로 예쁘게 발색되고, 바르면 뽀얗게 수채화 느낌으로 물든듯 표현되어 넘 예뻐요~',709,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (706,to_timestamp('18/12/30 17:09:08.657000000','RR/MM/DD HH24:MI:SSXFF'),'review706.jpg','배송은빠른편은아니지만색상이랑은아주맘에들어요~~앞으로도자주온라인쇼핑구매하고싶네요~^^',709,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (707,to_timestamp('18/12/30 17:09:08.659000000','RR/MM/DD HH24:MI:SSXFF'),'review707.jpg','이제좀있으면 추석도 있고해서 구성이.좋아서 선물용으로 구매했습니다 여자친구가 헤라향수를 잘사용합니다 쥬얼리박스가 패키지 구성이라서 주고 받는기쁨이 두배일꺼같아요 이미사용중인데 향수는 쟁여놔도 장식용으로도 좋으니 좋은 선물하겠습니다 용기디자인도 보라보라 해서 예쁘고 향도 고급져요 훌륭한상품.헤라 칭찬합니다',710,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (708,to_timestamp('18/12/30 17:09:08.662000000','RR/MM/DD HH24:MI:SSXFF'),'review708.jpg','기획세트로 구매해서 소용량까지 있어요. 향은 무거운듯 달달한 향이에요. 선물용으로 딱 좋아서 다시 포장해서 선물 줄려고 샀어요. 가격이 좀 후덜덜해서 세일인 지금 사면 좋을거같아요. 잔향은 오래가지는 않을거같지만 향은 정말 맘에 들어요.',710,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (401,to_timestamp('18/12/30 17:10:47.659000000','RR/MM/DD HH24:MI:SSXFF'),'review401.jpg','이만한 향 이만한 촉감 절대 못찾아요',407,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (402,to_timestamp('18/12/30 17:10:47.660000000','RR/MM/DD HH24:MI:SSXFF'),'review402.jpg','스크럽은 일주일에 한번씩 하면 너무 좋아요. 너무 거칠지도 않고 사용할 때마다 기분이 좋아요',408,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (403,to_timestamp('18/12/30 17:10:47.662000000','RR/MM/DD HH24:MI:SSXFF'),'review403.jpg','두피 각질 케어에 이만한게 없어용',409,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (404,to_timestamp('18/12/30 17:10:47.664000000','RR/MM/DD HH24:MI:SSXFF'),'review404.jpg','아버지도 같이 쓰는데 너무너무 좋아요',409,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (405,to_timestamp('18/12/30 17:10:47.666000000','RR/MM/DD HH24:MI:SSXFF'),'review405.jpg','샤워 후 뿌리면 이런 기분 느낄 수 없어요',410,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (501,to_timestamp('18/12/30 17:11:35.697000000','RR/MM/DD HH24:MI:SSXFF'),'review501.jpg','상큼한 봄날의 감성을 자극해주네요. 상큼한 자몽과 베르가못의 시트러스하고 프레시한 향이 풍성하게 어우러져서 오랫동안 지속되는 싱그럽고 상큼한 느낌이예요 :D',501,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (502,to_timestamp('18/12/30 17:11:35.699000000','RR/MM/DD HH24:MI:SSXFF'),'review502.jpg','건조한 날씨 더 휑해지는 가르마, 이름만 들어도 눈물나는게... 스트레스를 많이 받다보니까 왔네요 ㅠ 이번에 추천 받은 제품이라서 어느 정도 기간은 두고 써야겠지만 아직 한 3일차 인데 만족스러워요! 한 번 사용해 보는 것도 추천해요',502,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (503,to_timestamp('18/12/30 17:11:35.701000000','RR/MM/DD HH24:MI:SSXFF'),'review503.jpg','베르가못 시트러스 향이라고 하는데 레몬과 자몽 계열의 톡쏘는 향이에요 너무 좋아요!',503,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (504,to_timestamp('18/12/30 17:11:35.703000000','RR/MM/DD HH24:MI:SSXFF'),'review5032.jpg','거품을 만들어보니 풍성하게 나오고 냄새도 상큼한 레몬라임향 비슷해서 너무 좋았어요!',503,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (505,to_timestamp('18/12/30 17:11:35.705000000','RR/MM/DD HH24:MI:SSXFF'),'review504.jpg','2018 신상 제품 발라봤어요. 뭉침없이 잘 발라기도 하고 발색이 좋아서 셀프네일하기 정말 편해요. 도전해보세요^^*!',504,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (300,to_timestamp('18/12/30 03:43:20.823000000','RR/MM/DD HH24:MI:SSXFF'),'review_300.png','보이시나요?',301,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (301,to_timestamp('18/12/30 03:43:24.044000000','RR/MM/DD HH24:MI:SSXFF'),'review_301.png','이겁니다하하하',301,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (302,to_timestamp('18/12/30 03:44:52.466000000','RR/MM/DD HH24:MI:SSXFF'),'review_302.png','어??요 죽이죠?',302,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (303,to_timestamp('18/12/30 03:44:54.542000000','RR/MM/DD HH24:MI:SSXFF'),'review_303.png','ㅋㅋㅋㅋㅋㅋ 이런식으로 사용했지요',303,1);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (304,to_timestamp('18/12/30 03:44:59.329000000','RR/MM/DD HH24:MI:SSXFF'),'review_304.png','이미지 리뷰가 좋더라구요 확실하게 알려주고 ',303,2);
Insert into REVIEWCONTENTS (NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ) values (305,to_timestamp('18/12/30 03:45:01.729000000','RR/MM/DD HH24:MI:SSXFF'),'review_305.png','ㅋㅋㅋㅋㅋㅋ 하 좋습니다.',304,1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1001, systimestamp,'review1001.jpg','아주 깨끗한 느낌이 들어요 앞으로 이것으로만 세수할거에요111.',1001, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1002, systimestamp,'review1002.jpg','아주 깨끗한 느낌이 들어요 앞으로 이것으로만 세수할거에요222.',1001, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1003, systimestamp,'review1003.jpg','피부 좋은 사람한테 꿀피부 라고 그러잖아요. 그게 바로 접니다 ㅎㅎ111.',1002, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1004, systimestamp,'review1004.jpg','피부 좋은 사람한테 꿀피부 라고 그러잖아요. 그게 바로 접니다 ㅎㅎ222.',1002, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1005, systimestamp,'review1005.jpg','제품의 하얀색 처럼 제 피부도 하얗게 되었습니다. 앙 개꿀띠!111.',1003, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1006, systimestamp,'review1006.jpg','제품의 하얀색 처럼 제 피부도 하얗게 되었습니다. 앙 개꿀띠!222.',1003, 2);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1007, systimestamp,'review1007.jpg','자외선을 완전 차단하네요!!! 정말 좋은 제품입니다.111',1004, 1);

INSERT INTO REVIEWCONTENTS(NO,REGDATE,IMG,CONTENT,REVIEW_NO,SEQ)
VALUES(1008, systimestamp,'review1008.jpg','자외선을 완전 차단하네요!!! 정말 좋은 제품입니다.222',1004, 2);


REM INSERTING into REVIEWS
SET DEFINE OFF;
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (803,803,'피부가 맑아졌어요.',to_timestamp('18/12/30 16:58:52.655000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,802,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (804,804,'메이크업 시작하기 전에 사용하면 좋아요.',to_timestamp('18/12/30 16:58:52.656000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,801,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (805,805,'눈가에 주름 안녕 !',to_timestamp('18/12/30 16:58:52.659000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,804,'T','몇일 사용해보니까 눈가에 주름이 확실히 줄었어요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (806,806,'사용 3일차',to_timestamp('18/12/30 16:58:52.663000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,803,'T','사용한지 3일정도 지났는데 입술에서 생기가 나요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (807,807,'색상이 무난하네요.',to_timestamp('18/12/30 16:58:52.665000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,802,'T','자주 사용할 것 같아요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (808,808,'각질제거에 꼭 필요한 아이템!',to_timestamp('18/12/30 16:58:52.667000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,801,'T','각질 때문에 고민이였는데 이 제품을 사용 한 후에 고민이 사라졌어요 ~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (809,809,'머리의 생기가 생겼어요 !',to_timestamp('18/12/30 16:58:52.670000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,804,'T','주변 지인이 추천해줘서 사용해봤는데 굿굿 !');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (810,810,'휴대성이 좋아요 ~',to_timestamp('18/12/30 16:58:52.674000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,803,'T','향이 은은해서 좋고 휴대성도 좋고 ~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (901,901,'몇년만에 다시 갈색병으로 돌아왔어요.',to_timestamp('18/12/30 17:05:34.940000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,904,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (902,904,'더블웨어 역시 좋아요.',to_timestamp('18/12/30 17:05:34.943000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,902,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (801,801,'또 사용하고 싶어요 !!!',to_timestamp('18/12/30 16:58:52.651000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,804,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (802,802,'자외선 차단에 효과적이에요.',to_timestamp('18/12/30 16:58:52.652000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,803,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (903,906,'색이 너무 이뻐요',to_timestamp('18/12/30 17:05:34.946000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,902,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (904,909,'에스티로더 향수 계절별로 다 써보고 있네요',to_timestamp('18/12/30 17:05:34.948000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,903,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (905,902,'에스티로더 선크림 후기',to_timestamp('18/12/30 17:05:34.950000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,901,'T','유분기가 많은지 바르고 난 후 얼굴이 번질번질거려요. ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (906,903,'부들부들해요',to_timestamp('18/12/30 17:05:34.952000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,903,'T','추천으로 구매했는데 거품도 부드럽게 잘 씻기네요 세안후 당기지 않아서 좋아요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (907,905,'은은해요',to_timestamp('18/12/30 17:05:34.954000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,904,'T','은은합니다 반짝반짝하진 않지만 수수하게 보이는데 제격이네요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (908,908,'향기가 너무 좋아요',to_timestamp('18/12/30 17:05:34.956000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,901,'T','여자친구한테 선물했는데 너무 좋아하네요 제가 맡았을 때는 겨울보다는 봄여름에 더 좋을 것 같네요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (909,904,'더블웨어 그냥 그러네요',to_timestamp('18/12/30 17:05:34.959000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,902,'T','생각보다 별로입니다. 조금 뜨는느낌이 들어요 8시간 지속 이런건 아닌것같아요 좀 많이 매트합니다');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (910,909,'너무 가볍네요 ',to_timestamp('18/12/30 17:05:34.961000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,904,'T','싸하면서 많이 무겁지 않아 겨울에는 별로,,너무 기대 이하입니다. ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (701,701,'셀 에센스 진짜 좋습니다 !!',to_timestamp('18/12/30 17:08:55.985000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,701,'T','훨씬 스킨 로션 흡수가 잘 되는것 같아요 역시 믿고 쓰는 헤라!! 용기도 넘 고급스럽게 예쁘고 같이 오는 화장솜도 피부타입에 따라 앞뒤가 달라 실용적이예요~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (702,702,'선 메이트 엑설런스 좋네요~',to_timestamp('18/12/30 17:08:55.988000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,702,'T','자외선 차단뿐 아니라 일상 생활속 블루 라이트 필터링 기능으로 피부를 한번더 보호해 준다는 헤라 썬메이트 엑설런트 크림ㅎ 톤업에 프라이머 기능두 있어 기초 화장후 꼼꼼하게 발라주니 한듯 안한듯 은은하면서도 화사해 보이는 광채피부로 만들어 주네요 ^^ 매우 강추~~');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (703,703,'화이트 프로그램 딥 클렌징 폼 진짜 좋습니다 :) ',to_timestamp('18/12/30 17:08:55.990000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,703,'T','꾸준히 쓰면 피부톤이 밝아져요 미백효과가 좋아요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (704,704,'선물했는데 바이탈 리프팅 에센셜 베이스 좋습니다 !!',to_timestamp('18/12/30 17:08:55.992000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,704,'T','아내가 부드러운질감이 맘에 듭니다 산뜻하게 표현된다고 하네요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (705,705,'플래쉬-온 아이 세럼 그닥이네요;;',to_timestamp('18/12/30 17:08:55.994000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,701,'T','신제품이라 리뷰없이 광고만 보고 샀는데요 눈밑 마사지하는 부분과 아이크림 나오는 부분이 같은곳이라서 불편해요 좀만 누르고 크림이 나오기도 하고 뚜껑 열때도 살짝 미리 나오고 마사지 하는 부분이 조금 넓었으면 좋겟어요 추후 상품디자인이 개선되었음 합니다');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (706,706,' 립 젤크러쉬 별로네요 :( ',to_timestamp('18/12/30 17:08:55.997000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,702,'T','햅번 코랄이랑 메리지 핑크랑 색이 완전 같아요 두 개 샀는데 난감 그리고 케이스가 너무 크고 케이스에 색상이 적혀 있어서 동시에 메리지랑 햅번 꺼내서 보고 황당. 색이 같은데 본체엔 색상이 안적혀서 어떤게 메리지인지 햇반코랄인지 구분이 안감');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (707,707,'네일 에나멜 컬러 좋습니다 !!',to_timestamp('18/12/30 17:08:55.999000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,703,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (708,708,'얼반 로즈 퍼퓸드 바디 로션 좋네요~',to_timestamp('18/12/30 17:08:56.001000000','RR/MM/DD HH24:MI:SSXFF'),'T',3,704,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (709,709,'아주아주 페이스 디자이닝 블러셔 많이쓸꺼에요',to_timestamp('18/12/30 17:08:56.003000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,701,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (710,710,'익셉셔널 오 드 퍼퓸 무난하지만 좋네요',to_timestamp('18/12/30 17:08:56.005000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,702,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (401,401,'새로운 도전! 무난!',to_timestamp('18/12/30 17:10:47.638000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,401,'T','브리티쉬 로즈 라인 바디버터를 써보고 향이 너무 좋아서 시도해 보았는데 보통이네요. 색상이 분홍이 아니라...쩜쩜');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (402,402,'항상쓰는 it item',to_timestamp('18/12/30 17:10:47.640000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,402,'T','로션타입의 선크림을 매우 선호하는데 이만한 게 없어요. 5점으로도 모자란 저의 아이템!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (403,403,'트러블이 고민이시라면',to_timestamp('18/12/30 17:10:47.643000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,403,'T','가끔 나는 성인 여드름이 고민일 때 쓰기 좋은 데일리 아이템은 아니지만!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (404,404,'남자 사람들을 위한',to_timestamp('18/12/30 17:10:47.645000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,404,'T','우리집 남자사람들을 위해서 사 놓았는데 향도 좋고 훨씬 멀끔해보이네요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (405,405,'눈가 주름이 걱정될 나이',to_timestamp('18/12/30 17:10:47.647000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,401,'T','그런 나이란 없어요 젊었을 때부터 더바디샵으로 관리해야해요');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (406,406,'건조한 겨울에 딱',to_timestamp('18/12/30 17:10:47.649000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,402,'T','겨울이라 그런지 입술이 바짝 바짝 마르는데 속상하네요 이거 덕에 겨울을 무사히 ...');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (407,407,'겨울에 부드럽게 언제나 쓰는 핸드크림',to_timestamp('18/12/30 17:10:47.651000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,403,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (408,408,'사우나 대신 스크럽',to_timestamp('18/12/30 17:10:47.652000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,404,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (409,409,'아버지를 위한',to_timestamp('18/12/30 17:10:47.654000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,402,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (410,410,'땀냄새 관리',to_timestamp('18/12/30 17:10:47.656000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,401,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (501,510,'은은하고 기분 좋은 향이 최고에요',to_timestamp('18/12/30 17:11:35.670000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,501,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (502,509,'탈모.. 이번엔 이 녀석 잡을 거예요',to_timestamp('18/12/30 17:11:35.672000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,502,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (503,508,'1+1 향도 좋고 가격도 좋고',to_timestamp('18/12/30 17:11:35.676000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (504,507,'2018 네일 신상 셀프 체험',to_timestamp('18/12/30 17:11:35.678000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,503,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (505,506,'이번엔 핑쿠핑쿠하게',to_timestamp('18/12/30 17:11:35.681000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,501,'T','피부톤에 비슷하고 자연스러운 색상을 원해서 도전해봤어요!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (506,505,'짙은 눈화장으로',to_timestamp('18/12/30 17:11:35.685000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,503,'T','연말에 모임이나 놀러가면 자연스러운 화장을 좋아해서 이 제품을 써봤어요 좋은 거 같아요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (507,504,'피부에 생기를',to_timestamp('18/12/30 17:11:35.687000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'T','피부에 신경을 많이 쓰다보니 광채피부, 뭐 보습 이런 부분 신경이 가더라구요 좋은 제품 같아요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (508,503,'연말에 파티하고 후에!',to_timestamp('18/12/30 17:11:35.690000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,501,'T','연말에 파티하고 화장이 짙은데 클렌징 하는데 되게 좋은 거 같아요!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (509,502,'조카들에게 선물했어요',to_timestamp('18/12/30 17:11:35.693000000','RR/MM/DD HH24:MI:SSXFF'),'T',5,502,'T','조카들에게 선물로 줬는데 되게 좋아했어요. 초등학생 얘들에게 줬어요. 자극적인 제품은 피했어요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (510,501,'역시 토너는 네이처',to_timestamp('18/12/30 17:11:35.695000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,504,'T','매번 같은 브랜드를 계속 쓰게 되는 이유가 있네요 제품 역시 추천해요!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (300,300,'와우 이거 물건이다',to_timestamp('18/12/30 03:04:43.144000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,300,'T','처음 사용해 봤는데 제피부에 정말 잘맞네요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (301,301,'그냥 보통이네요',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,300,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (302,302,'발림이 완전좋아요',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,301,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (303,303,'벌써 3개째 사용 중입니다. 잇 아이템',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,302,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (304,304,'저한테는 안맞는거같아요..',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,302,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (305,305,'화사하니 좋네요 ~!!강추입니다.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,303,'T','이거 정말 좋은데 가격이.. 비싼게 조금 흠이에요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (306,306,'엄마가 참좋아해요',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'T',4,301,'T','어머니한테 선물했는데 정말 좋아하십니다. ㅎㅎ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (307,307,'선크림이 필요하구나 역시는 역시네요',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,300,'T','아 완전 제 소중한 피부에 딱 맞는거같아?Gㅎ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (308,308,'은은한 향기가 나쁘지않네요.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,303,'T','평소에 향수를 즐겨쓰는 편은 아니지만 이건 좋네요 ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (309,309,'싸구려비누만 쓰다고 완전 신세계입니다.',to_timestamp('18/12/30 03:11:17.738000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,300,'T','저는 그냥 데톨비누로 세안하던 남잔데요.. 와 이거로 세안하니깐 정말 좋네요..');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1001,1001,'쌀뜨물에 세수하듯이',to_timestamp('18/12/30 17:40:06.249000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1001,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1002,1002,'피부에서 꿀이..',to_timestamp('18/12/30 17:40:06.252000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1002,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1003,1003,'색도 하얀것이',to_timestamp('18/12/30 17:40:06.256000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1003,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1004,1004,'자외선이 싫어서..',to_timestamp('18/12/30 17:40:06.258000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1004,'I',null);
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1005,1005,'알로에의 시원함',to_timestamp('18/12/30 17:40:06.260000000','RR/MM/DD HH24:MI:SSXFF'),'F',3,1001,'T','역시 알로에는 자외선 차단 효과가 탁월하죠! 하지만, 용량이 너무 적어서 아쉽네요. ㅠ');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1006,1006,'파워 알로에!!',to_timestamp('18/12/30 17:40:06.265000000','RR/MM/DD HH24:MI:SSXFF'),'F',5,1002,'T','자외선을 완전 차단하네요!!! 정말 좋은 제품입니다. 알로에의 촉촉함도 한 몫 하고 용량도 많네요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1007,1007,'자꾸 수분이 부족해서..',to_timestamp('18/12/30 17:40:06.266000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1003,'T','수분크림을 샀는데 이제 얼굴에서 수분이 마르질 않습니다. 개꿀띠!!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1008,1008,'로열허니라서 사봤는데',to_timestamp('18/12/30 17:40:06.270000000','RR/MM/DD HH24:MI:SSXFF'),'F',1,1004,'T','전혀 로열하지 않네요. 사지 마세요. 구려요.');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1009,1009,'눈가에 뭐가 자꾸 나서',to_timestamp('18/12/30 17:40:06.273000000','RR/MM/DD HH24:MI:SSXFF'),'F',4,1001,'T','이 제품을 써봤는데 눈가에 잡티가 다 제거 되었습니다. 앙 개꿀!');
Insert into REVIEWS (NO,ITEM_NO,TITLE,REGDATE,GIFT,SCORE,USER_NO,TYPE,CONTENT) values (1010,1010,'은은한 포도향이 좋아요.',to_timestamp('18/12/30 17:40:06.277000000','RR/MM/DD HH24:MI:SSXFF'),'F',2,1002,'T','근대 용량이 적고 지속성이 떨어지네요. 아쉽습니다.');
REM INSERTING into SECONDS
SET DEFINE OFF;
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (1,'스킨케어','B',to_timestamp('18/12/31 16:23:18.941000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (2,'선케어','B',to_timestamp('18/12/31 16:23:18.949000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (3,'클렌징','B',to_timestamp('18/12/31 16:23:18.955000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (4,'베이스','M',to_timestamp('18/12/31 16:23:18.960000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (5,'아이','M',to_timestamp('18/12/31 16:23:18.967000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (6,'립&치크','M',to_timestamp('18/12/31 16:23:18.973000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (7,'네일','M',to_timestamp('18/12/31 16:23:18.979000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (8,'바디케어','E',to_timestamp('18/12/31 16:23:18.984000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (9,'헤어케어','E',to_timestamp('18/12/31 16:23:18.990000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SECONDS (NO,TITLE,TYPE,REGDATE) values (10,'향수','E',to_timestamp('18/12/31 16:23:18.995000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (803,'test803','1111','유인나','W',to_date('82/06/05','RR/MM/DD'),'D','U',null,null,null,null,'inna.jpg',null,null,to_timestamp('18/12/30 16:58:49.239000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (804,'test804','1111','신혜선','W',to_date('89/08/31','RR/MM/DD'),'C','U',null,null,null,null,'heasun.jpg',null,null,to_timestamp('18/12/30 16:58:49.241000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (805,'test805','1111',null,null,null,null,'C','(주)이니스프리','이니스프리','080-380-0114','https://www.innisfree.com/','innisfree.jpg',null,null,to_timestamp('18/12/30 16:58:49.244000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (901,'eunwoo','1111','차은우','M',to_date('97/03/30','RR/MM/DD'),'O','U',null,null,null,null,'eunwoo.jpg',null,null,to_timestamp('18/12/30 17:00:52.393000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (902,'juhyun','1111','배주현','W',to_date('91/03/29','RR/MM/DD'),'N','U',null,null,null,null,'juhyun.jpg',null,null,to_timestamp('18/12/30 17:00:52.396000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (801,'test801','1111','조보아','W',to_date('91/08/22','RR/MM/DD'),'O','U',null,null,null,null,'joboa.jpg',null,null,to_timestamp('18/12/30 16:58:49.234000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (802,'test802','1111','한예리','M',to_date('84/12/23','RR/MM/DD'),'N','U',null,null,null,null,'yeri.jpg',null,null,to_timestamp('18/12/30 16:58:49.237000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (903,'ryeonwon','1111','정려원','W',to_date('81/01/21','RR/MM/DD'),'D','U',null,null,null,null,'ryeowon.jpg',null,null,to_timestamp('18/12/30 17:00:52.399000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (904,'jungah','1111','염정아','W',to_date('72/07/28','RR/MM/DD'),'C','U',null,null,null,null,'jungah.jpg',null,null,to_timestamp('18/12/30 17:00:52.401000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (905,'ESTEELAUDER','1111',null,null,null,null,'C','이엘씨에이한국(유)','에스티로더','02-3440-2522','https://www.esteelauder.co.kr','esteelauder.png',null,null,to_timestamp('18/12/30 17:00:52.404000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (701,'test701','1111','권수연','W',to_date('94/05/13','RR/MM/DD'),'D','U',null,null,null,null,null,null,null,to_timestamp('18/12/30 17:08:06.450000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (702,'test702','1111','장원영','W',to_date('04/08/31','RR/MM/DD'),'N','U',null,null,null,null,'profile_702.jpg',null,null,to_timestamp('18/12/30 17:08:06.454000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (703,'test703','1111','서현진','W',to_date('85/02/27','RR/MM/DD'),'O','U',null,null,null,null,'profile_703.jpg',null,null,to_timestamp('18/12/30 17:08:06.456000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (704,'test704','1111','최수종','M',to_date('62/12/18','RR/MM/DD'),'C','U',null,null,null,null,'profile_704.jpg',null,null,to_timestamp('18/12/30 17:08:06.458000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (705,'test705','1111',null,null,null,null,'C','(주)뷰티헤라','헤라','080-023-5454','https://www.hera.com/kr/ko/','hera.jpg',null,null,to_timestamp('18/12/30 17:08:06.460000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (401,'dylan','1111','Dylan','M',to_date('91/09/17','RR/MM/DD'),'D','U',null,null,null,null,'dylan.png',null,null,to_timestamp('18/12/30 17:10:44.905000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (402,'felly','1111','Felicia','W',to_date('64/10/20','RR/MM/DD'),'N','U',null,null,null,null,'felly.png',null,null,to_timestamp('18/12/30 17:10:44.909000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (403,'clara','1111','Clara','W',to_date('59/10/18','RR/MM/DD'),'O','U',null,null,null,null,'clara.png',null,null,to_timestamp('18/12/30 17:10:44.912000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (404,'ai','1111','Ai','W',to_date('84/02/08','RR/MM/DD'),'C','U',null,null,null,null,'ai.png',null,null,to_timestamp('18/12/30 17:10:44.915000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (405,'THEBODYSHOP','1111',null,null,null,null,'C','(주)비에스케이코퍼레이션','더바디샵','080-759-7700','https://www.thebodyshop.co.kr/','thebodyshop.jpg',null,null,to_timestamp('18/12/30 17:10:44.917000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (501,'qhsk','1111','보나','W',to_date('95/08/19','RR/MM/DD'),'O','U',null,null,null,null,'qhsk.jpg',null,null,to_timestamp('18/12/30 17:11:33.151000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (502,'gusqls','1111','현빈','M',to_date('82/09/25','RR/MM/DD'),'N','U',null,null,null,null,'gusqls.jpg',null,null,to_timestamp('18/12/30 17:11:33.154000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (503,'tkfkd','1111','김사랑','W',to_date('78/01/12','RR/MM/DD'),'D','U',null,null,null,null,'tkfkd.jpg',null,null,to_timestamp('18/12/30 17:11:33.157000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (504,'tjdfud','1111','김성령','W',to_date('67/02/08','RR/MM/DD'),'C','U',null,null,null,null,'tjdfud.jpg',null,null,to_timestamp('18/12/30 17:11:33.159000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (505,'NATUREREPUBLIC','1111',null,null,null,null,'C','(주)네이처리퍼블릭','네이처리퍼블릭','080-890-6000','https://www.naturerepublic.com/','naturerepublic.jpg',null,null,to_timestamp('18/12/30 17:11:33.162000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (302,'test302','1111','이윤지','W',to_date('84/01/22','RR/MM/DD'),'D','U',null,null,null,null,'profile_302.png',null,null,to_timestamp('18/12/30 01:07:22.963000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (300,'test300','1111','노승현','M',to_date('91/07/25','RR/MM/DD'),'C','U',null,null,null,null,'profile_300.png',null,null,to_timestamp('18/12/30 00:29:12.622000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (301,'test301','1111','송혜교','W',to_date('81/05/30','RR/MM/DD'),'N','U',null,null,null,null,'profile_301.png',null,null,to_timestamp('18/12/30 01:07:22.952000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (303,'test303','1111','손나은','W',to_date('04/05/10','RR/MM/DD'),'O','U',null,null,null,null,'profile_303.png',null,null,to_timestamp('18/12/30 01:07:22.967000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (304,'test304','1111',null,null,null,null,'C','아모레퍼시픽','설화수',null,null,'profile_304.png','buisnessImg.png','106-85-12345',to_timestamp('18/12/30 01:08:38.639000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1001,'test1001','1111','김병윤','M',to_date('90/09/13','RR/MM/DD'),'N','U',null,null,null,null,'1001.jpg',null,null,to_timestamp('18/12/30 17:36:25.991000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1002,'test1002','1111','하정우','M',to_date('80/11/12','RR/MM/DD'),'O','U',null,null,null,null,'1002.jpg',null,null,to_timestamp('18/12/30 17:36:25.997000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1003,'test1003','1111','한예슬','W',to_date('71/11/12','RR/MM/DD'),'O','U',null,null,null,null,'1003.jpg',null,null,to_timestamp('18/12/30 17:36:26.001000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1004,'test1004','1111','조보아','W',to_date('69/07/12','RR/MM/DD'),'C','U',null,null,null,null,'1004.jpg',null,null,to_timestamp('18/12/30 17:36:26.007000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into USERS (NO,ID,PWD,NAME,GENDER,BIRTH,SKIN,TYPE,COMPANY,BRAND,TEL,LINK,IMG,BUISNESS_IMG,BUISNESS_NUM,REGDATE) values (1005,'skinfood','1111',null,null,null,null,'C','(주)스킨푸드','스킨푸드','02-597-4191','http://www.theskinfood.com','skinfood.jpg',null,'214-09-21233',to_timestamp('18/12/30 17:38:05.877000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into WARNS
SET DEFINE OFF;
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (1,'디부틸하이드록시톨루엔','탈모,피부 과민반응,알러지유발',to_timestamp('18/12/31 16:23:06.671000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (2,'미네랄오일','여드름 유발,독소배출 방해,세포발육 방해,피부 노화',to_timestamp('18/12/31 16:23:06.678000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (3,'부틸하이드록시아니솔','유전자 이상,알러지,암 유발',to_timestamp('18/12/31 16:23:06.684000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (4,'소르빅애씨드','피부점막 자극(알러지성분 유발)',to_timestamp('18/12/31 16:23:06.690000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (5,'부틸메톡시디벤조일메탄','활성산소 생성, DNA 손상',to_timestamp('18/12/31 16:23:06.696000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (6,'벤조페논-3','호흡기, 소화기장애, 알러지 유발',to_timestamp('18/12/31 16:23:06.701000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (7,'이미다졸리디닐우레아','맥박수 증가,포름알데히드 방출,피부 염증 유발',to_timestamp('18/12/31 16:23:06.707000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (8,'0-사이멘-5올','강한자극,부종, 여드름,두드러기 유발',to_timestamp('18/12/31 16:23:06.713000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (9,'이소프로필알코올','두통,홍조,어지러움,구토 유발',to_timestamp('18/12/31 16:23:06.719000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (10,'소듐라우릴설페이트','백내장,피부건조,암 유발',to_timestamp('18/12/31 16:23:06.725000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (11,'향료','향을 유발하는 성분을 통칭하여 향료로 표기하여 실체를 알수없음',to_timestamp('18/12/31 16:23:06.730000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (13,'트리에탄올아민','안구질환,모발,피부건조 유발. 독성물질 변모',to_timestamp('18/12/31 16:23:06.736000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (14,'트리이소프로판올아민','과도한 피지제거로 피부 건조 유발',to_timestamp('18/12/31 16:23:06.741000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (15,'트리클로산','면역력, 수정능력 저하 원인의 내분비 장애물질',to_timestamp('18/12/31 16:23:06.746000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (16,'파라벤','접촉성피부염, 알러지, 기미, 주름의 원인. 내분비 장애물',to_timestamp('18/12/31 16:23:06.752000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (17,'페녹시에탄올','대표적인 방부제로 체내 흡수 시 마취작용 및 자극유발',to_timestamp('18/12/31 16:23:06.758000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (18,'폴리에틸렌글라이콜','간장,신장 장애,알러지 유발',to_timestamp('18/12/31 16:23:06.763000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (19,'합성착색료','식품에서 사용해도 위험성이 없다고 할 수 없음',to_timestamp('18/12/31 16:23:06.770000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (20,'호르몬류','의약품에 가까운 물질로써 여자아이의 성조숙증 유발',to_timestamp('18/12/31 16:23:06.777000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into WARNS (NO,TITLE,CONTENT,REGDATE) values (12,'타몰','구토, 설사, 두통, 이명 유발. 피부자극이 강함.',to_timestamp('18/12/31 16:49:13.979000000','RR/MM/DD HH24:MI:SSXFF'));
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
