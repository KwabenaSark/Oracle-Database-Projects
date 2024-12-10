{\rtf1\ansi\ansicpg1252\cocoartf2820
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Microsoft Windows [Version 10.0.22621.2134]\
(c) Microsoft Corporation. All rights reserved.\
\
C:\\Windows\\System32>sqlplus sys/oracle@orcle as sysdba\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Apr 4 16:09:24 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
^C\
C:\\Windows\\System32>sqlplus c##kofi/oracle@orcle as sysdba\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Apr 4 16:09:57 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
ERROR:\
ORA-12154: TNS:could not resolve the connect identifier specified\
\
\
Enter user-name: c##kofi\
Enter password:\
\
Connected to:\
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production\
Version 21.3.0.0.0\
\
SQL> create table workers(id int primary key, firstname varchar2(10) not null, lastname varchar2(10) not null, salary float not null);\
\
Table created.\
\
SQL> Grant  update,insert, select on workers to c##ama;\
\
Grant succeeded.\
\
SQL> update workers set salary +750 where id =100;\
update workers set salary +750 where id =100\
                          *\
ERROR at line 1:\
ORA-00927: missing equal sign\
\
\
SQL> update workers set salary= salary +750 where id =100;\
\
0 rows updated.\
\
SQL> update workers set salary + 1000 where id =101;\
update workers set salary + 1000 where id =101\
                          *\
ERROR at line 1:\
ORA-00927: missing equal sign\
\
\
SQL> update workers set salary=salary + 1000 where id =101;\
\
0 rows updated.\
\
SQL> select firstname, salary from c##kofi.workers;\
\
no rows selected\
\
SQL> rollback;\
\
Rollback complete.\
\
SQL> rollback;\
\
Rollback complete.\
\
SQL> discon\
Disconnected from Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production\
Version 21.3.0.0.0\
SQL> sqlplus\
SP2-0042: unknown command "sqlplus" - rest of line ignored.\
SQL> connect user SP2-0042: unknown command "s" - rest of line ignored.\
SQL> connect user c##kofi/oracle\
SP2-0306: Invalid option.\
Usage: CONN[ECT] [\{logon|/|proxy\} [AS \{SYSDBA|SYSOPER|SYSASM|SYSBACKUP|SYSDG|SYSKM|SYSRAC\}] [edition=value]]\
where <logon> ::= <username>[/<password>][@<connect_identifier>]\
      <proxy> ::= <proxyuser>[<username>][/<password>][@<connect_identifier>]\
SQL> xist\
SP2-0042: unknown command "xist" - rest of line ignored.\
SQL> exit\
\
C:\\Windows\\System32>sqlplus\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Apr 4 17:21:49 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
Enter user-name: c##kofi\
Enter password:\
Last Successful login time: Thu Apr 04 2024 16:11:10 +00:00\
\
Connected to:\
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production\
Version 21.3.0.0.0\
\
SQL> desc workers;\
 Name                                      Null?    Type\
 ----------------------------------------- -------- ----------------------------\
 ID                                        NOT NULL NUMBER(38)\
 FIRSTNAME                                 NOT NULL VARCHAR2(10)\
 LASTNAME                                  NOT NULL VARCHAR2(10)\
 SALARY                                    NOT NULL FLOAT(126)\
\
SQL> select table_name from user_tables;\
\
TABLE_NAME\
--------------------------------------------------------------------------------\
WORKERS\
\
SQL> select firstname, salary from c##kofi.workers;\
\
no rows selected\
\
SQL> select firstname, salary from c##kofi.workers;\
\
FIRSTNAME      SALARY\
---------- ----------\
Ann             12000\
John            55000\
\
SQL> select * from workers;\
\
        ID FIRSTNAME  LASTNAME       SALARY\
---------- ---------- ---------- ----------\
       100 Ann        Green           12000\
       101 John       Doe             55000\
\
SQL>  update c##kofi.workers set salary= salary + 750 where id = 101;\
\
1 row updated.\
\
SQL>  select * from c##kofi.workers;\
\
        ID FIRSTNAME  LASTNAME       SALARY\
---------- ---------- ---------- ----------\
       100 Ann        Green           12000\
       101 John       Doe             55750\
\
SQL>  update c##kofi.workers set salary= salary + 750 where id = 100;\
\
1 row updated.\
\
SQL> select * from c##kofi.workers;\
\
        ID FIRSTNAME  LASTNAME       SALARY\
---------- ---------- ---------- ----------\
       100 Ann        Green          -37250\
       101 John       Doe             55750\
\
SQL>  update c##kofi.workers set firstname = 'Anna' where id = 100;\
 update c##kofi.workers set firstname = 'Anna' where id = 100\
*\
ERROR at line 1:\
ORA-12571: TNS:packet writer failure\
\
\
SQL>  update workers set firstname = 'Anna' where id = 100;\
ERROR:\
ORA-03114: not connected to ORACLE\
\
\
SQL> connect SQL>\
\
\
C:\\Windows\\System32>slqplus\
'slqplus' is not recognized as an internal or external command,\
operable program or batch file.\
\
C:\\Windows\\System32>sqlplus\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Apr 4 18:11:22 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
Enter user-name: Enter password:\
\
C:\\Windows\\System32>sqlplus\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Apr 4 18:11:31 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
Enter user-name: c##kofi\
Enter password:\
Last Successful login time: Thu Apr 04 2024 17:22:04 +00:00\
\
Connected to:\
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production\
Version 21.3.0.0.0\
\
SQL>  update workers set firstname = 'Anna' where id = 100;\
\
1 row updated.\
\
SQL>  update workers set firstname = 'Joe' where id = 101;\
 update workers set firstname = 'Joe' where id = 101\
                    *\
ERROR at line 1:\
ORA-00060: deadlock detected while waiting for resource\
\
\
SQL>  commit\
  2  ;\
\
Commit complete.\
\
SQL> alter table workers add  job_role varchar2(10);\
alter table workers add  job_role varchar2(10)\
*\
ERROR at line 1:\
ORA-14411: The DDL cannot be run concurrently with other DDLs\
\
\
SQL> savepoint A;\
\
Savepoint created.\
\
SQL> alter table c##kofi.workers add  job_role varchar2(10);\
\
Table altered.\
\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>\
SQL>}