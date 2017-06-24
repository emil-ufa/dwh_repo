create user STG identified by STG;

grant select any table on STG;
grant create session to STG;
grant create table to STG;

create bigfile tablespace tbs_STG_T
    datafile 'C:\ORACLE\APP\EMIL\ORADATA\INFO\tbs_STG_T.DBF' size 1M reuse
    autoextend on next 1M maxsize 500M;
create bigfile tablespace tbs_STG_I
    datafile 'C:\ORACLE\APP\EMIL\ORADATA\INFO\tbs_STG_I.DBF' size 1M reuse
    autoextend on next 1M maxsize 500M;

alter user STG quota unlimited on tbs_STG_T;
alter user STG quota unlimited on tbs_STG_I;
