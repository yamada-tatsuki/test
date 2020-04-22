alter session set cursor_sharing='SIMILAR';
alter session set NLS_DATE_FORMAT='YYYY-MM-DD HH24:MI:SS';
ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;
ALTER USER webapp IDENTIFIED BY webapp;
ALTER USER system IDENTIFIED BY oracle;
/* スキーマ（ユーザ）作成。スキーマ名wt2,パスワードwt2 */
create user wt2 identified by wt2;
/* ユーザのデフォルト表領域を設定 */
alter  user wt2 default tablespace USERS;
/* ユーザの一時表領域を設定 */
alter  user wt2 temporary tablespace TEMP;
/* ユーザのデフォルト表領域の利用制限を無制限に設定 */
alter user wt2 quota UNLIMITED on USERS;
/* ユーザにシステム権限を設定 */
grant ALTER SYSTEM to wt2;
grant ALTER SESSION to wt2;
grant CREATE MATERIALIZED VIEW to wt2;
grant CREATE PROCEDURE to wt2;
grant CREATE SEQUENCE to wt2;
grant CREATE SESSION to wt2;
grant CREATE SYNONYM to wt2;
grant CREATE TABLE to wt2;
grant CREATE TRIGGER to wt2;
grant CREATE VIEW to wt2;
grant EXECUTE ANY PROCEDURE to wt2;
grant SELECT ANY DICTIONARY to wt2;
grant SELECT ANY TABLE to wt2;
quit;
