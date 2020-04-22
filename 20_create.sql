-- �e�[�u���폜
DROP TABLE MS_SYAIN;
DROP TABLE MS_KBN;
DROP TABLE TR_COMMENT;
-- �e�[�u������
CREATE TABLE MS_SYAIN (
	SYAINID						VARCHAR2(10)	NOT NULL,
	SYAINNAME					VARCHAR2(30),
	SYUSINTTDFKN				VARCHAR2(512),
	IMAGEFILENAME				VARCHAR2(512),
	TANJYOYMD					VARCHAR2(30),
	DAIGAKUNAME					VARCHAR2(128),
	SENKOKAMOKU					VARCHAR2(128),
	SYUTOKUSIKAKU				VARCHAR2(4000),
	NYUSYAYMD					VARCHAR2(30),
	FREECOMMENT					VARCHAR2(4000),
	CONSTRAINT PK_MS_SYAIN PRIMARY KEY(SYAINID)
)
;

--CREATE TABLE MS_KBN (
--	KBN_CD			CHAR(5 CHAR)	NOT NULL
--,	KBN				CHAR(1 CHAR)	NOT NULL
--,	KBN_VALUE		VARCHAR2(64 CHAR)
--,	HYOJI_REC		NUMBER(2)
--,	TOROKU_DATE		DATE
--,	TOROKU_PROGRAM	VARCHAR2(64 CHAR)
--,	KOSHIN_DATE		DATE
--,	KOSHIN_PROGRAM	VARCHAR2(64 CHAR)
--)
--;
--ALTER TABLE MS_KBN ADD CONSTRAINT PK_MS_KBN PRIMARY KEY (KBN_CD, KBN)
--;

-- �V�[�P���X�̐���
create sequence seq_comment increment by 1 start with 1 maxvalue 999999999;
-- �f�[�^����
INSERT INTO MS_SYAIN VALUES('0001','���� ���Y','���ꌧ','https://2.bp.blogspot.com/--zsSLoWy2ok/UYDRqauQRfI/AAAAAAAAQ8Y/EXXP5iC9v84/s800/kintarou_kuma.png','1978/08/09','��t�����ی���Ñ�w','�w�Q���ʉȖ�','�s���Y�n','2016/09/01','�����Ɏカ�l�Ƃ����ǂ��A���̑S�͂�P��̖ړI�ɏW������ΕK�����̎��𐬂����ׂ��B �t������');
INSERT INTO MS_SYAIN VALUES('0002','���� ��Y','�É���','https://3.bp.blogspot.com/-pDy8koVTcus/WOdDoUiAAqI/AAAAAAABDk0/nPmD7NNvb0MTXhhepzZ5525nzXFnPo_vQCLcB/s800/foodfighter_ramen.png','1990/03/03','�ˈ��w�����l��w','���Ȋw��','�I�t�B�X�E����','2016/09/01','����ׂɂȂɂ��u���v�̂��邵�����Ȃ��悤�ȑf���ȁu���v�͂Ȃ��B �V�F�C�N�X�s�A');
INSERT INTO MS_SYAIN VALUES('0003','�ߋ� �O�Y','��茧','https://1.bp.blogspot.com/-A0VrLySbwz4/Wp9320ZNqgI/AAAAAAABKow/XTjXV6Rp6UYWxUUCfzNojavB_MK57c0MQCLcBGAs/s800/job_syouboushi_orange.png','1977/04/14','�����w���O�����ۑ�w','��w��','�r�W�l�X��������','2016/09/01','���̂�̐E�������فX�Ƃ��ċ΂߂邱�Ƃ́A�����ɑ΂���ŏ�̓����ł���B ���V���g��');

-- ���ȉ��A����x�m�F�R�[�f�B���O1�̌Œ�
DROP TABLE MS_SYAIN_HOBBY;
CREATE TABLE MS_SYAIN_HOBBY ( 
	SYAINID					VARCHAR2(10 CHAR)		NOT NULL,
	HOBBY_ID				VARCHAR2(10 CHAR)		NOT NULL,
	CONSTRAINT PK_MS_SYAIN_HOBBY PRIMARY KEY(SYAINID, HOBBY_ID)
);
insert into MS_SYAIN_HOBBY(SYAINID, HOBBY_ID)
values('0001', '2001');
insert into MS_SYAIN_HOBBY(SYAINID, HOBBY_ID)
values('0001', '2002');
insert into MS_SYAIN_HOBBY(SYAINID, HOBBY_ID)
values('0001', '2003');
insert into MS_SYAIN_HOBBY(SYAINID, HOBBY_ID)
values('0001', '2004');
insert into MS_SYAIN_HOBBY(SYAINID, HOBBY_ID)
values('0002', '2002');
insert into MS_SYAIN_HOBBY(SYAINID, HOBBY_ID)
values('0002', '2005');
DROP TABLE MS_HOBBY;
CREATE TABLE MS_HOBBY ( 
	HOBBY_ID				VARCHAR2(10 CHAR)	NOT NULL,
	CATEGORY_ID				VARCHAR(32 CHAR),
	HOBBY_NAME				VARCHAR(32 CHAR),
	CONSTRAINT PK_MS_HOBBY PRIMARY KEY(HOBBY_ID) 
);
insert into MS_HOBBY(HOBBY_ID, CATEGORY_ID, HOBBY_NAME)
values('2001', '9001', 'BAR�߂���');
insert into MS_HOBBY(HOBBY_ID, CATEGORY_ID, HOBBY_NAME)
values('2002', '9002', '�M���̖�]');
insert into MS_HOBBY(HOBBY_ID, CATEGORY_ID, HOBBY_NAME)
values('2003', '9003', '�R�X�v��');
insert into MS_HOBBY(HOBBY_ID, CATEGORY_ID, HOBBY_NAME)
values('2004', '9001', '�i���X�߂���');
insert into MS_HOBBY(HOBBY_ID, CATEGORY_ID, HOBBY_NAME)
values('2005', '9003', '�o�R');
DROP TABLE MS_CATEGORY;
CREATE TABLE MS_CATEGORY ( 
	CATEGORY_ID				VARCHAR2(10 CHAR)	NOT NULL,
	CATEGORY_NAME			VARCHAR(32 CHAR),
	CONSTRAINT PK_MS_CATEGORY PRIMARY KEY(CATEGORY_ID) 
);
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9001', '�O����');
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9002', '�Q�[��');
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9003', '�A�N�e�B�u');
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9004', '���s');
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9005', '�Ǐ�');
-- ���R�~�b�g
COMMIT;
-- ���m�F
select 'MS_SYAIN'		as table_nm , count(*) as cnt from MS_SYAIN union all
select 'MS_SYAIN_HOBBY'	as table_nm , count(*) as cnt from MS_SYAIN_HOBBY union all
select 'MS_HOBBY'		as table_nm , count(*) as cnt from MS_HOBBY union all
select 'MS_CATEGORY'	as table_nm , count(*) as cnt from MS_CATEGORY
;
PAUSE '���s�������ƏI�����܂�'
quit;


