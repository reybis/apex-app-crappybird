CREATE TABLE USR
  (
    ID_USR                  NUMBER NOT NULL ,
    USR_EMAIL               VARCHAR2 (100) NOT NULL ,
    USR_PWD                 VARCHAR2 (500) NOT NULL ,
    USR_FIRSTNAME           VARCHAR2 (100) NOT NULL ,
    USR_LASTNAME            VARCHAR2 (100) NOT NULL ,
    TWITTER_NAME            VARCHAR2 (100) ,
    TWITTER_ID              NUMBER ,
    TWITTER_PROFILE_PIC_URL VARCHAR2 (200) ,
    SHOW_ACC_PUBLIC         NUMBER (3) DEFAULT 1 NOT NULL ,
    ACC_ACTIVE              NUMBER (3) DEFAULT 0 NOT NULL ,
    USR_HIGHSCORE           NUMBER
  ) ;
CREATE UNIQUE INDEX UK_USR_USR_EMAIL ON USR
  (
    USR_EMAIL ASC
  )
  ;
CREATE UNIQUE INDEX UK_USR_TWITTER_NAME ON USR
  (
    TWITTER_NAME ASC
  )
  ;
  CREATE INDEX I_USR_SHOW_ACC_PUBLIC ON USR
    ( SHOW_ACC_PUBLIC ASC
    ) ;
  ALTER TABLE USR ADD CONSTRAINT PK_USR PRIMARY KEY ( ID_USR ) ;