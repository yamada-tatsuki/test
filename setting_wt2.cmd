:@echo off
cd /d %~dp0

echo "権限設定"
sqlplus -S system/oracle@localhost:1521/XE @10_initialize.sql


echo "データ投入"
sqlplus -S wt2/wt2@localhost:1521/XE @20_create.sql


