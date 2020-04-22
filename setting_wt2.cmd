:@echo off
cd /d %~dp0

echo "Œ ŒÀİ’è"
sqlplus -S system/oracle@localhost:1521/XE @10_initialize.sql


echo "ƒf[ƒ^“Š“ü"
sqlplus -S wt2/wt2@localhost:1521/XE @20_create.sql


