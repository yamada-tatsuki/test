-- テーブル削除
DROP TABLE MS_SYAIN;
DROP TABLE MS_KBN;
DROP TABLE TR_COMMENT;
-- テーブル生成
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

-- シーケンスの生成
create sequence seq_comment increment by 1 start with 1 maxvalue 999999999;
-- データ投入
INSERT INTO MS_SYAIN VALUES('0001','未来 太郎','滋賀県','https://2.bp.blogspot.com/--zsSLoWy2ok/UYDRqauQRfI/AAAAAAAAQ8Y/EXXP5iC9v84/s800/kintarou_kuma.png','1978/08/09','千葉県立保健医療大学','学群共通科目','不動産系','2016/09/01','いかに弱き人といえども、その全力を単一の目的に集中すれば必ずその事を成し得べし。 春日潜庵');
INSERT INTO MS_SYAIN VALUES('0002','現在 二郎','静岡県','https://3.bp.blogspot.com/-pDy8koVTcus/WOdDoUiAAqI/AAAAAAABDk0/nPmD7NNvb0MTXhhepzZ5525nzXFnPo_vQCLcB/s800/foodfighter_ramen.png','1990/03/03','桐蔭学園横浜大学','情報科学類','オフィス・事務','2016/09/01','うわべになにか「徳」のしるしをつけないような素直な「悪」はない。 シェイクスピア');
INSERT INTO MS_SYAIN VALUES('0003','過去 三郎','岩手県','https://1.bp.blogspot.com/-A0VrLySbwz4/Wp9320ZNqgI/AAAAAAABKow/XTjXV6Rp6UYWxUUCfzNojavB_MK57c0MQCLcBGAs/s800/job_syouboushi_orange.png','1977/04/14','共愛学園前橋国際大学','医学類','ビジネス文書検定','2016/09/01','おのれの職分を守り黙々として勤めることは、中傷に対する最上の答えである。 ワシントン');

-- ■以下、理解度確認コーディング1の固定
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
values('2001', '9001', 'BARめぐり');
insert into MS_HOBBY(HOBBY_ID, CATEGORY_ID, HOBBY_NAME)
values('2002', '9002', '信長の野望');
insert into MS_HOBBY(HOBBY_ID, CATEGORY_ID, HOBBY_NAME)
values('2003', '9003', 'コスプレ');
insert into MS_HOBBY(HOBBY_ID, CATEGORY_ID, HOBBY_NAME)
values('2004', '9001', '喫茶店めぐり');
insert into MS_HOBBY(HOBBY_ID, CATEGORY_ID, HOBBY_NAME)
values('2005', '9003', '登山');
DROP TABLE MS_CATEGORY;
CREATE TABLE MS_CATEGORY ( 
	CATEGORY_ID				VARCHAR2(10 CHAR)	NOT NULL,
	CATEGORY_NAME			VARCHAR(32 CHAR),
	CONSTRAINT PK_MS_CATEGORY PRIMARY KEY(CATEGORY_ID) 
);
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9001', 'グルメ');
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9002', 'ゲーム');
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9003', 'アクティブ');
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9004', '旅行');
insert into MS_CATEGORY(CATEGORY_ID, CATEGORY_NAME)
values('9005', '読書');
-- ■コミット
COMMIT;
-- ■確認
select 'MS_SYAIN'		as table_nm , count(*) as cnt from MS_SYAIN union all
select 'MS_SYAIN_HOBBY'	as table_nm , count(*) as cnt from MS_SYAIN_HOBBY union all
select 'MS_HOBBY'		as table_nm , count(*) as cnt from MS_HOBBY union all
select 'MS_CATEGORY'	as table_nm , count(*) as cnt from MS_CATEGORY
;
PAUSE '改行を押すと終了します'
quit;


