create user DDS identified by DDS;

grant create session to DDS;
grant create table to DDS;

create bigfile tablespace tbs_DDS_T
    datafile 'C:\ORACLE\APP\EMIL\ORADATA\INFO\tbs_DDS_T.DBF' size 1M reuse
    autoextend on next 1M maxsize 500M;
create bigfile tablespace tbs_DDS_I
    datafile 'C:\ORACLE\APP\EMIL\ORADATA\INFO\tbs_DDS_I.DBF' size 1M reuse
    autoextend on next 1M maxsize 500M;

alter user DDS quota unlimited on tbs_DDS_T;
alter user DDS quota unlimited on tbs_DDS_I;
