{\rtf1\ansi\ansicpg1252\cocoartf2820
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Microsoft Windows [Version 10.0.22621.2134]\
(c) Microsoft Corporation. All rights reserved.\
\
C:\\Windows\\System32>sqlplus\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Apr 4 17:20:12 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
Enter user-name: c##ama\
Enter password:\
Last Successful login time: Thu Apr 04 2024 17:09:05 +00:00\
\
Connected to:\
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production\
Version 21.3.0.0.0\
\
SQL> discon\
Disconnected from Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production\
Version 21.3.0.0.0\
SQL> connect c#ama/oracle\
ERROR:\
ORA-01017: invalid username/password; logon denied\
\
\
SQL> connect c##ama/oracle\
Connected.\
SQL> select firstname, salary from c##kofi.workers;\
\
no rows selected\
\
SQL> INSERT INTO c##kofi.workers (id, firstname, lastname, salary) VALUES (100, 'Ann', 'Green', 12000);\
\
1 row created.\
\
SQL> commit;\
\
Commit complete.\
\
SQL> update c##kofi.workers set salary= salary - 50000 where id = 100;\
\
1 row updated.\
\
SQL> select * from c##kofi.workers;\
\
        ID FIRSTNAME  LASTNAME       SALARY\
---------- ---------- ---------- ----------\
       100 Ann        Green          -38000\
       101 John       Doe             55000\
\
SQL> commit;\
\
Commit complete.\
\
SQL> update c##kofi.workers set salary= salary + 50000 where id = 100;\
\
1 row updated.\
\
SQL> commit\
  2  ;\
\
Commit complete.\
\
SQL> COMMIT;\
\
Commit complete.\
\
SQL> TERMINATE USERS BLOCKING THE SESSION (LOCK CONFLICT)\
SP2-0734: unknown command beginning "TERMINATE ..." - rest of line ignored.\
SQL> -------------------------------------------------------------------^Z\
\
SQL> update workers set salary = salary + 13000 where id = 101;\
update workers set salary = salary + 13000 where id = 101\
       *\
ERROR at line 1:\
ORA-00942: table or view does not exist\
\
\
SQL> update c##kofi.workers set salary = salary + 13000 where id = 101;\
\
1 row updated.\
\
SQL> update c##kofi.workers set salary =  15000 where id = 100;\
\
1 row updated.\
\
SQL>\
SQL>\
SQL>\
SQL>\
SQL> commit\
  2  ;\
\
Commit complete.\
\
SQL>}