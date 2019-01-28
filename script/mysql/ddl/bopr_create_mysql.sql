
DROP TABLE TN_BATCH_EXECUT_PARAMTR ;


DROP TABLE TN_BATCH_DLBRT_ATCH_FILE ;



DROP TABLE TN_BATCH_ATCH_FILE ;



DROP TABLE TN_BATCH_BEAN ;



DROP TABLE TN_NTFCINFO ;



DROP TABLE TN_SCHDUL_RESULT ;



DROP TABLE TN_JOB_DLBRT_RESULT ;



DROP TABLE TN_SMSRECPTN ;



DROP TABLE TC_CMMNDETAILCODE ;



DROP TABLE TC_CMMNCODE ;



DROP TABLE TC_CMMNCLCODE ;



DROP TABLE TE_BOPRSEQ ;



DROP TABLE TN_STPLATINFO ;



DROP TABLE TN_ROLES_HIERARCHY ;



DROP TABLE TN_AUTHORROLERELATE ;


DROP TABLE TN_ROLEINFO ;


DROP TABLE TN_AUTHORINFO ;


DROP TABLE TN_EMPLYRSCRTYESTBS ;



DROP TABLE TN_FILEDETAIL ;



DROP TABLE TN_FILE ;






DROP TABLE TN_USERS ;



DROP TABLE TN_KNWLDG_CMT ;



DROP TABLE TN_SETUP ;



DROP TABLE TN_BATCH_EXECUT ;



DROP TABLE TN_BATCH_PARAMTR ;



DROP TABLE TN_REHNDN ;



DROP TABLE TH_SCHDUL ;



DROP TABLE TN_SCHDUL ;



DROP TABLE TN_SCHDUL_PARAMTR ;



DROP TABLE TN_NTCN ;



DROP TABLE TN_NTCN_RECPTN ;



DROP TABLE TN_KNWLDG ;



DROP TABLE TN_SMS ;



DROP TABLE TN_ISSUE ;



DROP TABLE TN_ISSUE_CMT ;



DROP TABLE TN_FTP_INTRLCK ;



DROP TABLE TN_EMAIL_INTRLCK ;



DROP TABLE TN_BATCH_DLBRT_RESULT ;



DROP TABLE TN_BATCH_DLBRT ;



DROP TABLE TN_JOB_DLBRT ;



DROP TABLE TH_BATCH ;



DROP TABLE TN_BATCH ;




CREATE TABLE TC_CMMNCLCODE
(
	CL_CODE               CHAR(3)  NOT NULL ,
	CL_CODE_NM            VARCHAR(60)  NULL ,
	CL_CODE_DC            VARCHAR(200)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL
	
);



ALTER TABLE TC_CMMNCLCODE
	ADD  PRIMARY KEY (CL_CODE);



CREATE TABLE TC_CMMNCODE
(
	CODE_ID               VARCHAR(6)  NOT NULL ,
	CL_CODE               CHAR(3)  NOT NULL ,
	CODE_ID_NM            VARCHAR(60)  NULL ,
	CODE_ID_DC            VARCHAR(200)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL 
);



ALTER TABLE TC_CMMNCODE
	ADD  PRIMARY KEY (CODE_ID);



CREATE TABLE TC_CMMNDETAILCODE
(
	CODE_ID               VARCHAR(6)  NOT NULL ,
	CODE                  VARCHAR(15)  NOT NULL ,
	CODE_NM               VARCHAR(60)  NULL ,
	CODE_DC               VARCHAR(200)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL 
);



ALTER TABLE TC_CMMNDETAILCODE
	ADD  PRIMARY KEY (CODE_ID,CODE);



CREATE TABLE TE_BOPRSEQ
(
	TABLE_NAME            VARCHAR(20)  NOT NULL ,
	NEXT_ID               DECIMAL(30,0)  NULL 
);



ALTER TABLE TE_BOPRSEQ
	ADD  PRIMARY KEY (TABLE_NAME);



CREATE TABLE TH_BATCH
(
	BATCH_NO              VARCHAR(20)  NOT NULL ,
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	BATCH_NM              VARCHAR(100)  NULL ,
	BATCH_DC              VARCHAR(1000)  NULL ,
	JOB_DLBRT_NO          VARCHAR(20)  NULL,
	ONLINE_EXECUT_AT      CHAR(1)  NULL ,
	DELETE_AT             CHAR(1)  NULL ,
	JOB_SE_CODE           CHAR(6)  NULL 
);



ALTER TABLE TH_BATCH
	ADD  PRIMARY KEY (BATCH_NO,BATCH_ID);



CREATE TABLE TH_SCHDUL
(
	SCHDUL_NM             VARCHAR(255)  NULL ,
	EXECUT_CYCLE          VARCHAR(2)  NULL ,
	EXECUT_SCHDUL_DE      CHAR(20)  NULL ,
	SCHDUL_REGIST_PNTTM   DATETIME  NOT NULL ,
	SCHDUL_NO             VARCHAR(20)  NOT NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	EXECUT_SCHDUL_HOUR    CHAR(2)  NULL ,
	EXECUT_SCHDUL_MNT     CHAR(2)  NULL ,
	EXECUT_SCHDUL_SECND   CHAR(2)  NULL ,
	PARAMTR               VARCHAR(250)  NULL ,
	PARAMTRIN             VARCHAR(255)  NULL ,
	PARAMTROUT            VARCHAR(255)  NULL 
);



ALTER TABLE TH_SCHDUL
	ADD  PRIMARY KEY (SCHDUL_REGIST_PNTTM,SCHDUL_NO,BATCH_ID);



CREATE TABLE TN_AUTHORINFO
(
	AUTHOR_CODE           VARCHAR(30)  NOT NULL ,
	AUTHOR_NM             VARCHAR(50)  NULL ,
	AUTHOR_DC             VARCHAR(100)  NULL ,
	AUTHOR_CREAT_DE       DATETIME  NULL 
);



ALTER TABLE TN_AUTHORINFO
	ADD  PRIMARY KEY (AUTHOR_CODE);



CREATE TABLE TN_AUTHORROLERELATE
(
	ROLE_CODE             VARCHAR(50)  NOT NULL ,
	AUTHOR_CODE           VARCHAR(30)  NOT NULL ,
	CREAT_DT              DATETIME  NULL 
);



ALTER TABLE TN_AUTHORROLERELATE
	ADD  PRIMARY KEY (ROLE_CODE,AUTHOR_CODE);



CREATE TABLE TN_BATCH
(
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	BATCH_NM              VARCHAR(100)  NULL ,
	BATCH_DC              VARCHAR(1000)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	JOB_DLBRT_NO          VARCHAR(20)  NULL ,
	DELETE_AT             CHAR(1)  NULL ,
	ONLINE_EXECUT_AT      CHAR(1)  NULL ,
	JOB_SE_CODE           CHAR(6)  NULL 
);



ALTER TABLE TN_BATCH
	ADD  PRIMARY KEY (BATCH_ID);



CREATE TABLE TN_BATCH_ATCH_FILE
(
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	ATCH_FILE_ID          VARCHAR(20)  NOT NULL ,
	BATCH_FILE_NM         VARCHAR(50)  NULL ,
	WDTB_PATH             VARCHAR(100)  NULL ,
	ATCH_SE_CODE          CHAR(1)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL 
);



ALTER TABLE TN_BATCH_ATCH_FILE
	ADD  PRIMARY KEY (BATCH_ID, ATCH_FILE_ID);


	
CREATE TABLE TN_BATCH_BEAN
(
	BEAN_ID               VARCHAR(255)  NOT NULL ,
	BATCH_ID              VARCHAR(20)  NOT NULL 
);


ALTER TABLE TN_BATCH_BEAN
	ADD  PRIMARY KEY (BEAN_ID, BATCH_ID);
	

CREATE TABLE TN_BATCH_DLBRT
(
	BATCH_DLBRT_NO        VARCHAR(20)  NOT NULL ,
	BATCH_NM              VARCHAR(100)  NULL ,
	BATCH_DC              VARCHAR(1000)  NULL ,
	BATCH_SETUP_ATCH_FILE_ID  VARCHAR(20)  NULL ,
	BATCH_ATCH_FILE_ID    VARCHAR(20)  NULL ,
	BATCH_WDTB_PATH       VARCHAR(100)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	BATCH_ID              VARCHAR(20)  NULL ,
	JOB_DLBRT_NO          VARCHAR(20)  NOT NULL ,
	BATCH_SETUP_WDTB_PATH  VARCHAR(100)  NULL ,
	TEST_AT               CHAR(1)  NULL ,
	WDTB_AT               CHAR(1)  NULL ,
	PROCESS_SE_CODE       CHAR(3)  NULL 
);



ALTER TABLE TN_BATCH_DLBRT
	ADD  PRIMARY KEY (JOB_DLBRT_NO,BATCH_DLBRT_NO);



CREATE TABLE TN_BATCH_DLBRT_ATCH_FILE
(
	BATCH_DLBRT_NO        VARCHAR(20)  NOT NULL ,
	ATCH_FILE_ID          CHAR(20)  NOT NULL ,
	ATCH_SE_CODE          CHAR(1)  NULL ,
	WDTB_PATH             VARCHAR(100)  NULL ,
	PROCESS_SE_CODE       CHAR(3)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	JOB_DLBRT_NO          VARCHAR(20)  NOT NULL 
);



ALTER TABLE TN_BATCH_DLBRT_ATCH_FILE
	ADD  PRIMARY KEY (BATCH_DLBRT_NO,ATCH_FILE_ID,JOB_DLBRT_NO);



CREATE TABLE TN_BATCH_DLBRT_RESULT
(
	BATCH_DLBRT_RESULT_NO  VARCHAR(20)  NOT NULL ,
	BATCH_DLBRT_RESULT_CODE  CHAR(2)  NULL ,
	BATCH_DLBRT_CN        VARCHAR(1000)  NULL ,
	BATCH_DLBRT_AT        CHAR(1)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	BATCH_DLBRT_NO        VARCHAR(20)  NOT NULL ,
	BATCH_WDTB_AT         CHAR(1)  NULL ,
	JOB_DLBRT_NO          VARCHAR(20)  NOT NULL 
);



ALTER TABLE TN_BATCH_DLBRT_RESULT
	ADD  PRIMARY KEY (JOB_DLBRT_NO,BATCH_DLBRT_NO,BATCH_DLBRT_RESULT_NO);



CREATE TABLE TN_BATCH_EXECUT
(
	BATCH_EXECUT_NO       VARCHAR(20)  NOT NULL ,
	EXECUT_MTHD_CODE      CHAR(2)  NULL ,
	EXECUT_TIME           VARCHAR(14)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	JOB_INSTANCE_ID       VARCHAR(20)  NULL ,
	BATCH_ID              VARCHAR(20)  NOT NULL,
	JOB_EXECUTION_ID      VARCHAR(20)  NULL
);



ALTER TABLE TN_BATCH_EXECUT
	ADD  PRIMARY KEY (BATCH_EXECUT_NO,BATCH_ID);

	
	
CREATE TABLE TN_BATCH_EXECUT_PARAMTR
(
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	PARAMTR_NM            VARCHAR(255)  NULL ,
	PARAMTR               VARCHAR(255)  NULL ,
	BATCH_EXECUT_NO       VARCHAR(20)  NOT NULL 
);



ALTER TABLE TN_BATCH_EXECUT_PARAMTR
	ADD  PRIMARY KEY (BATCH_EXECUT_NO,BATCH_ID,PARAMTR_NM);

	
	
CREATE TABLE TN_BATCH_PARAMTR
(
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	PARAMTR_NM            VARCHAR(200)  NULL 
);

ALTER TABLE TN_BATCH_PARAMTR
	ADD  PRIMARY KEY (BATCH_ID,PARAMTR_NM);


CREATE TABLE TN_KNWLDG_CMT
(
	ANSWER_NO             VARCHAR(20)  NOT NULL ,
	NTT_ID                VARCHAR(20)  NULL ,
	WRTER_ID              VARCHAR(20)  NULL ,
	WRTER_NM              VARCHAR(56)  NULL ,
	ANSWER                VARCHAR(200)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	PASSWORD              VARCHAR(200)  NULL ,
	CMT_KNWLDG_EVL		  VARCHAR(2)	NULL,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL 
);



ALTER TABLE TN_KNWLDG_CMT
	ADD  PRIMARY KEY (ANSWER_NO);



CREATE TABLE TN_EMAIL_INTRLCK
(
	EMAIL_INTRLCK_NO      VARCHAR(20)  NOT NULL ,
	EMAIL_INTRLCK_NM      VARCHAR(100)  NULL ,
	EMAIL_ADRES           VARCHAR(50)  NULL ,
	IP_INFO               VARCHAR(23)  NULL ,
	USER_ID               VARCHAR(20)  NULL ,
	PASSWORD              VARCHAR(200)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL 
);



ALTER TABLE TN_EMAIL_INTRLCK
	ADD  PRIMARY KEY (EMAIL_INTRLCK_NO);



CREATE TABLE TN_EMPLYRSCRTYESTBS
(
	SCRTY_DTRMN_TRGET_ID  VARCHAR(20)  NOT NULL ,
	AUTHOR_CODE           VARCHAR(30)  NULL ,
	MBER_TY_CODE          VARCHAR(15)  NULL 
);



ALTER TABLE TN_EMPLYRSCRTYESTBS
	ADD  PRIMARY KEY (SCRTY_DTRMN_TRGET_ID);



CREATE TABLE TN_FILE
(
	ATCH_FILE_ID          VARCHAR(20)  NOT NULL ,
	CREAT_DT              DATETIME  NULL ,
	USE_AT                CHAR(1)  NULL 
);



ALTER TABLE TN_FILE
	ADD  PRIMARY KEY (ATCH_FILE_ID);



CREATE TABLE TN_FILEDETAIL
(
	ATCH_FILE_ID          VARCHAR(20)  NOT NULL ,
	FILE_SN               DECIMAL(10,0)  NOT NULL ,
	FILE_SIZE             DECIMAL(8,0)  NULL ,
	FILE_CN               MEDIUMTEXT  NULL ,
	FILE_EXTSN            VARCHAR(20)  NULL ,
	ORIGNL_FILE_NM        VARCHAR(255)  NULL ,
	STRE_FILE_NM          VARCHAR(255)  NULL ,
	FILE_STRE_COURS       VARCHAR(2000)  NULL 
);



ALTER TABLE TN_FILEDETAIL
	ADD  PRIMARY KEY (ATCH_FILE_ID,FILE_SN);



CREATE TABLE TN_FTP_INTRLCK
(
	FTP_INTRLCK_NO        VARCHAR(20)  NOT NULL ,
	FTP_INTRLCK_NM        VARCHAR(100)  NULL ,
	FTP_ADRES             VARCHAR(100)  NULL ,
	USER_ID               VARCHAR(20)  NULL ,
	PASSWORD              VARCHAR(200)  NULL ,
	BATCH_WDTB_PATH       VARCHAR(100)  NULL ,
	CFG_WDTB_PATH         VARCHAR(100)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	PROCESS_SE_CODE       CHAR(3)  NULL 
);



ALTER TABLE TN_FTP_INTRLCK
	ADD  PRIMARY KEY (FTP_INTRLCK_NO);



CREATE TABLE TN_ISSUE
(
	ISSUE_NO              VARCHAR(20)  NOT NULL ,
	ISSUE_SJ              VARCHAR(50)  NULL ,
	ISSUE_CN              VARCHAR(1000)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	ATCH_FILE_ID          CHAR(20)  NULL ,
	ISSUE_STTUS_CODE      CHAR(2)  NULL ,
	ISSUE_OCCRRNC_DE      DATETIME  NULL ,
	ISSUE_LV_CODE         CHAR(2)  NULL ,
	ISSUE_TY_CODE         CHAR(2)  NULL ,
	OTHBC_AT			  CHAR(1) NULL
	
);



ALTER TABLE TN_ISSUE
	ADD  PRIMARY KEY (ISSUE_NO);



	CREATE TABLE TN_ISSUE_CMT
(
	ANSWER_NO             VARCHAR(20)  NOT NULL ,
	ISSUE_STTUS_CODE      CHAR(2)  NOT NULL ,
	ANSWER_CN             VARCHAR(1000)  NULL ,
	ANSWER_REGISTER_ID    VARCHAR(20)  NULL ,
	ANSWER_REGIST_PNTTM   DATETIME  NULL 
);



ALTER TABLE TN_ISSUE_CMT
	ADD  PRIMARY KEY (ANSWER_NO, ISSUE_STTUS_CODE);


	
CREATE TABLE TN_JOB_DLBRT
(
	JOB_DLBRT_NO          VARCHAR(20)  NOT NULL ,
	JOB_SE_CODE           CHAR(6)  NULL ,
	JOB_DLBRT_NM          VARCHAR(50)  NOT NULL ,
	JOB_DLBRT_CN          VARCHAR(1000)  NULL ,
	REMARK                VARCHAR(2500)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	ATCH_FILE_ID          CHAR(20)  NULL 
);



ALTER TABLE TN_JOB_DLBRT
	ADD  PRIMARY KEY (JOB_DLBRT_NO);



CREATE TABLE TN_JOB_DLBRT_RESULT
(
	JOB_DLBRT_RESULT_NO   VARCHAR(20)  NOT NULL ,
	JOB_DLBRT_RESULT_CODE  CHAR(2)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	JOB_DLBRT_NO          VARCHAR(20)  NOT NULL ,
	JOB_DLBRT_CN          VARCHAR(1000)  NULL 
);



ALTER TABLE TN_JOB_DLBRT_RESULT
	ADD  PRIMARY KEY (JOB_DLBRT_NO,JOB_DLBRT_RESULT_NO);



CREATE TABLE TN_KNWLDG
(
	KNWLDG_NO             VARCHAR(20)  NOT NULL ,
	KNWLDG_NM             VARCHAR(60)  NULL ,
	KNWLDG_CN             VARCHAR(2500)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	ATCH_FILE_ID          CHAR(20)  NULL ,
	OTHBC_AT              CHAR(1)  NULL ,
	KNWLDG_TY_CODE        VARCHAR(3)  NULL ,
	DSUSE_DE              VARCHAR(10)  NULL ,
	DSUSE_ENNC            CHAR(1)  NULL ,
	RDCNT                 DECIMAL(10,0)  NULL 
);



ALTER TABLE TN_KNWLDG
	ADD  PRIMARY KEY (KNWLDG_NO);



CREATE TABLE TN_NTCN
(
	NTCN_NO               VARCHAR(20)  NOT NULL ,
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	SCHDUL_NO              VARCHAR(20)  NOT NULL ,
	NTCN_SJ               VARCHAR(60)  NULL ,
	EVENT_CODE            CHAR(2)  NULL ,
	MSSAGE_NM             VARCHAR(60)  NULL ,
	MSSAGE_DC             VARCHAR(200)  NULL ,
	REMARK                VARCHAR(2500)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	NTCN_CODE             VARCHAR(20)  NULL 
);



ALTER TABLE TN_NTCN
	ADD  PRIMARY KEY (NTCN_NO,BATCH_ID,SCHDUL_NO);

	

CREATE TABLE TN_NTCN_RECPTN
(
	NTCN_NO               VARCHAR(20)  NOT NULL ,
	RECPTN_USER_ID        CHAR(20)  NOT NULL 
);


ALTER TABLE TN_NTCN_RECPTN
	ADD  PRIMARY KEY (NTCN_NO,RECPTN_USER_ID);




CREATE TABLE TN_NTFCINFO (
  NTFC_NO VARCHAR(20) NOT NULL,
  NTFC_SJ VARCHAR(60) NOT NULL,
  NTFC_CN VARCHAR(100) NOT NULL,
  NTFC_TIME CHAR(14) NOT NULL,
  BH_NTFC_INTRVL VARCHAR(20) NOT NULL,
  FRST_REGIST_PNTTM DATETIME NOT NULL,
  LAST_UPDUSR_PNTTM DATETIME NULL,
  FRST_REGISTER_ID VARCHAR(20) NOT NULL,
  LAST_UPDUSR_ID VARCHAR(20) NULL
);




ALTER TABLE TN_NTFCINFO
	ADD  PRIMARY KEY (NTFC_NO);



CREATE TABLE TN_REHNDN
(
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	REHNDN_NO             VARCHAR(20)  NOT NULL ,
	JOB_INSTANCE_ID       VARCHAR(20)  NULL ,
	JOB_EXECUTION_ID      VARCHAR(20)  NULL ,
	REHNDN_RESN           VARCHAR(1000)  NULL ,
	REHNDN_PNTTM          DATETIME  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL 
	 
);



ALTER TABLE TN_REHNDN
	ADD  PRIMARY KEY (REHNDN_NO,BATCH_ID);



CREATE TABLE TN_ROLEINFO
(
	ROLE_CODE             VARCHAR(50)  NOT NULL ,
	ROLE_CREAT_DE         DATETIME  NULL ,
	ROLE_SORT             DECIMAL(10,0)  NULL ,
	ROLE_TY               VARCHAR(80)  NULL ,
	ROLE_DC               VARCHAR(1000)  NULL ,
	ROLE_PTTRN            VARCHAR(300)  NULL ,
	ROLE_NM               VARCHAR(60)  NULL 
);



ALTER TABLE TN_ROLEINFO
	ADD  PRIMARY KEY (ROLE_CODE);



CREATE TABLE TN_ROLES_HIERARCHY
(
	PARNTS_ROLE           VARCHAR(30)  NOT NULL ,
	CHILD_ROLE            VARCHAR(30)  NOT NULL 
);



ALTER TABLE TN_ROLES_HIERARCHY
	ADD  PRIMARY KEY (PARNTS_ROLE,CHILD_ROLE);



CREATE TABLE TN_SCHDUL
(
	SCHDUL_NO             VARCHAR(20)  NOT NULL ,
	SCHDUL_NM             VARCHAR(255)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	EXECUT_CYCLE          VARCHAR(2)  NULL ,
	EXECUT_SCHDUL_DE      CHAR(20)  NULL ,
	EXECUT_SCHDUL_HOUR    CHAR(2)  NULL ,
	EXECUT_SCHDUL_MNT     CHAR(2)  NULL ,
	EXECUT_SCHDUL_SECND   CHAR(2)  NULL ,
	PARAMTR               VARCHAR(250)  NULL ,
	PARAMTRIN             VARCHAR(255)  NULL ,
	PARAMTROUT            VARCHAR(255)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL 
);



ALTER TABLE TN_SCHDUL
	ADD  PRIMARY KEY (SCHDUL_NO,BATCH_ID);


	
CREATE TABLE TN_SCHDUL_PARAMTR
(
	SCHDUL_NO             VARCHAR(20)  NOT NULL ,
	BATCH_ID              VARCHAR(20)  NOT NULL ,
	PARAMTR_NM            VARCHAR(255) NOT NULL ,
	PARAMTR               VARCHAR(255)  NULL 
);


ALTER TABLE TN_SCHDUL_PARAMTR
	ADD  PRIMARY KEY (SCHDUL_NO,BATCH_ID,PARAMTR_NM);




CREATE TABLE TN_SCHDUL_RESULT
(
	SCHDUL_NO             VARCHAR(20)  NOT NULL ,
	SCHDUL_RESULT_NO      VARCHAR(20)  NOT NULL ,
	JOB_EXECUTION_ID      CHAR(18)  NULL ,
	START_TIME            CHAR(14)  NULL ,
	END_TIME              VARCHAR(20)  NULL ,
	PROCESS_RESULT        VARCHAR(20)  NULL ,
	ERROR_CN              VARCHAR(2000)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL 
);



ALTER TABLE TN_SCHDUL_RESULT
	ADD  PRIMARY KEY (SCHDUL_NO,SCHDUL_RESULT_NO);



CREATE TABLE TN_SETUP
(
	USER_ID               VARCHAR(20)  NOT NULL ,
	EXECUT_CYCLE          VARCHAR(2)  NULL ,
	JOB_SE_CODE     	  VARCHAR(200)  NULL ,
	LIST_COUNT            CHAR(18)  NULL ,
	BATCH_STTUS           VARCHAR(20)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL 
);



ALTER TABLE TN_SETUP
	ADD  PRIMARY KEY (USER_ID);



CREATE TABLE TN_SMS
(
	SMS_ID                CHAR(20)  NOT NULL ,
	TRNSMIS_TELNO         VARCHAR(12)  NULL ,
	TRNSMIS_CN            VARCHAR(80)  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL 
);



ALTER TABLE TN_SMS
	ADD  PRIMARY KEY (SMS_ID);



CREATE TABLE TN_SMSRECPTN
(
	SMS_ID                CHAR(20)  NOT NULL ,
	RECPTN_TELNO          VARCHAR(12)  NOT NULL ,
	RESULT_CODE           CHAR(4)  NULL ,
	RESULT_MSSAGE         VARCHAR(4000)  NULL 
);



ALTER TABLE TN_SMSRECPTN
	ADD  PRIMARY KEY (SMS_ID,RECPTN_TELNO);



CREATE TABLE TN_STPLATINFO
(
	USE_STPLAT_ID         CHAR(20)  NOT NULL ,
	USE_STPLAT_NM         VARCHAR(100)  NULL ,
	USE_STPLAT_CN         TEXT  NULL ,
	INFO_PROVD_AGRE_CN    TEXT  NULL ,
	FRST_REGISTER_ID      VARCHAR(20)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(20)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL 
);



ALTER TABLE TN_STPLATINFO
	ADD  PRIMARY KEY (USE_STPLAT_ID);



CREATE TABLE TN_USERS
(
	USER_ID               VARCHAR(20)  NOT NULL ,
	AGRE_AT               CHAR(1)  NULL ,
	JOB_SE_CODE           CHAR(6)  NULL ,
	REGIST_DE             DATETIME  NULL ,
	IMAGE_FILE            VARCHAR(60)  NULL ,
	EMAILS                VARCHAR(50)  NULL ,
	ADRES                 VARCHAR(100)  NULL ,
	MOBLPHON_NO           VARCHAR(15)  NULL ,
	DEPT_ID               VARCHAR(10)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	PASSWORD              VARCHAR(200)  NULL ,
	USER_NM               VARCHAR(60)  NULL 
);



ALTER TABLE TN_USERS
	ADD  PRIMARY KEY (USER_ID);



ALTER TABLE TC_CMMNCODE
	ADD  FOREIGN KEY (CL_CODE) REFERENCES TC_CMMNCLCODE(CL_CODE);



ALTER TABLE TC_CMMNDETAILCODE
	ADD  FOREIGN KEY (CODE_ID) REFERENCES TC_CMMNCODE(CODE_ID);



ALTER TABLE TH_BATCH
	ADD  FOREIGN KEY (BATCH_ID) REFERENCES TN_BATCH(BATCH_ID);



ALTER TABLE TH_SCHDUL
	ADD  FOREIGN KEY (SCHDUL_NO,BATCH_ID) REFERENCES TN_SCHDUL(SCHDUL_NO,BATCH_ID);



ALTER TABLE TN_AUTHORROLERELATE
	ADD  FOREIGN KEY (ROLE_CODE) REFERENCES TN_ROLEINFO(ROLE_CODE) ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE TN_AUTHORROLERELATE
	ADD  FOREIGN KEY (AUTHOR_CODE) REFERENCES TN_AUTHORINFO(AUTHOR_CODE) ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE TN_ROLES_HIERARCHY
 ADD FOREIGN KEY (PARNTS_ROLE) REFERENCES TN_AUTHORINFO(AUTHOR_CODE) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE TN_ROLES_HIERARCHY 
 ADD FOREIGN KEY (CHILD_ROLE) REFERENCES TN_AUTHORINFO(AUTHOR_CODE) ON UPDATE CASCADE ON DELETE CASCADE;


ALTER TABLE TN_BATCH_ATCH_FILE
	ADD  FOREIGN KEY (BATCH_ID) REFERENCES TN_BATCH(BATCH_ID);



ALTER TABLE TN_BATCH_DLBRT
	ADD  FOREIGN KEY (JOB_DLBRT_NO) REFERENCES TN_JOB_DLBRT(JOB_DLBRT_NO);



ALTER TABLE TN_BATCH_DLBRT_ATCH_FILE
	ADD  FOREIGN KEY (JOB_DLBRT_NO,BATCH_DLBRT_NO) REFERENCES TN_BATCH_DLBRT(JOB_DLBRT_NO,BATCH_DLBRT_NO);



ALTER TABLE TN_BATCH_DLBRT_RESULT
	ADD  FOREIGN KEY (JOB_DLBRT_NO,BATCH_DLBRT_NO) REFERENCES TN_BATCH_DLBRT(JOB_DLBRT_NO,BATCH_DLBRT_NO);



ALTER TABLE TN_BATCH_EXECUT
	ADD  FOREIGN KEY (BATCH_ID) REFERENCES TN_BATCH(BATCH_ID);



ALTER TABLE TN_FILEDETAIL
	ADD  FOREIGN KEY (ATCH_FILE_ID) REFERENCES TN_FILE(ATCH_FILE_ID);



ALTER TABLE TN_JOB_DLBRT_RESULT
	ADD  FOREIGN KEY (JOB_DLBRT_NO) REFERENCES TN_JOB_DLBRT(JOB_DLBRT_NO);



ALTER TABLE TN_REHNDN
	ADD  FOREIGN KEY (BATCH_ID) REFERENCES TN_BATCH(BATCH_ID);



ALTER TABLE TN_SCHDUL ADD FOREIGN KEY (BATCH_ID) REFERENCES TN_BATCH(BATCH_ID);


