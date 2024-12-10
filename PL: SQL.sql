{\rtf1\ansi\ansicpg1252\cocoartf2820
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww34360\viewh19180\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Microsoft Windows [Version 10.0.22621.2134]\
(c) Microsoft Corporation. All rights reserved.\
\
C:\\Windows\\System32>sqlplus sys/oracle@orcle as sysdba\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Apr 4 18:49:37 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
ERROR:\
ORA-12154: TNS:could not resolve the connect identifier specified\
\
\
Enter user-name:\
ERROR:\
ORA-01017: invalid username/password; logon denied\
\
\
Enter user-name:\
ERROR:\
ORA-01017: invalid username/password; logon denied\
\
\
SP2-0157: unable to CONNECT to ORACLE after 3 attempts, exiting SQL*Plus\
\
C:\\Windows\\System32>\
C:\\Windows\\System32>\
C:\\Windows\\System32>\
C:\\Windows\\System32>sql plus\
Exception in thread "main" java.lang.NoClassDefFoundError: org/apache/hc/core5/http/ParseException\
        at java.lang.Class.getDeclaredConstructors0(Native Method)\
        at java.lang.Class.privateGetDeclaredConstructors(Class.java:2671)\
        at java.lang.Class.getConstructor0(Class.java:3075)\
        at java.lang.Class.newInstance(Class.java:412)\
        at oracle.dbtools.raptor.newscriptrunner.CommandRegistry.addListener(CommandRegistry.java:75)\
        at oracle.dbtools.raptor.newscriptrunner.CommandRegistry.addForAllStmtsListener(CommandRegistry.java:649)\
        at oracle.dbtools.commands.NetCommands.registerCommands(NetCommands.java:28)\
        at oracle.dbtools.raptor.scriptrunner.cmdline.SqlCli.initSqlcl(SqlCli.java:196)\
        at oracle.dbtools.raptor.scriptrunner.cmdline.SqlCli.runSqlcl(SqlCli.java:962)\
        at oracle.dbtools.raptor.scriptrunner.cmdline.SqlCli.main(SqlCli.java:369)\
Caused by: java.lang.ClassNotFoundException: org.apache.hc.core5.http.ParseException\
        at java.net.URLClassLoader.findClass(URLClassLoader.java:382)\
        at java.lang.ClassLoader.loadClass(ClassLoader.java:418)\
        at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:355)\
        at java.lang.ClassLoader.loadClass(ClassLoader.java:351)\
        ... 10 more\
\
C:\\Windows\\System32>sqlplus\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Apr 4 18:50:16 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
Enter user-name: sys/oracle as sysdba\
\
Connected to:\
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production\
Version 21.3.0.0.0\
\
SQL> grant alter to c##kofi;\
grant alter to c##kofi\
      *\
ERROR at line 1:\
ORA-01919: role 'ALTER' does not exist\
\
\
SQL> grant alter on c##kofi;\
grant alter on c##kofi\
                     *\
ERROR at line 1:\
ORA-00905: missing keyword\
\
\
SQL> GRANT ALTER ON c##kofi.table_name TO your_user;\
GRANT ALTER ON c##kofi.table_name TO your_user\
                       *\
ERROR at line 1:\
ORA-00942: table or view does not exist\
\
\
SQL> GRANT ALTER ON c##kofi.table_name TO your_user;\
GRANT ALTER ON c##kofi.table_name TO your_user\
                       *\
ERROR at line 1:\
ORA-00942: table or view does not exist\
\
\
SQL> GRANT ALTER ON c##kofi.table_name TO your_user;\
GRANT ALTER ON c##kofi.table_name TO your_user\
                       *\
ERROR at line 1:\
ORA-00942: table or view does not exist\
\
\
SQL> GRANT ALTER ON c##kofi.table_name TO your_user;\
GRANT ALTER ON c##kofi.table_name TO your_user\
                       *\
ERROR at line 1:\
ORA-00942: table or view does not exist\
\
\
SQL> GRANT ALTER ON c##kofi.workers TO SP2-0042: unknown command "G" - rest of line ignored.\
SQL> GRANT ALTER ON c##kofi.workers TO c##kofi;\
\
\
C:\\Windows\\System32>sqlplus\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Thu Apr 4 18:53:08 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
Enter user-name: sys/oracle as sysdba\
\
Connected to:\
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production\
Version 21.3.0.0.0\
\
SQL> GRANT ALTER ON c##kofi.workers TO c##kofi;\
\
Grant succeeded.\
\
SQL> commit\
  2  ;\
\
Commit complete.\
\
SQL> update c##kofi.workers set salary = salary + 13000 where id = 101;\
\
1 row updated.\
\
SQL> update c##kofi.workers set job_role = 'CTO';\
\
2 rows updated.\
\
SQL> update c##kofi.workers set job_role = 'CTO'where id = 101;\
\
1 row updated.\
\
SQL> update c##kofi.workers set job_role = 'HRM'where id = 100;\
\
1 row updated.\
\
SQL> savepoint a\
  2  ;\
\
Savepoint created.\
\
SQL> create synonym emp for   1  savepoint a\
  2*\
SQL>\
\
\
C:\\Windows\\System32>d\
'd' is not recognized as an internal or external command,\
operable program or batch file.\
\
C:\\Windows\\System32>;\
C:\\Windows\\System32>dkcmdkcmkdcmkdmckd\
'dkcmdkcmkdcmkdmckd' is not recognized as an internal or external command,\
operable program or batch file.\
\
C:\\Windows\\System32>sqlplus\
\
SQL*Plus: Release 21.0.0.0.0 - Production on Mon Apr 8 16:46:56 2024\
Version 21.3.0.0.0\
\
Copyright (c) 1982, 2021, Oracle.  All rights reserved.\
\
Enter user-name: sys/oracle as sysdba\
\
Connected to:\
Oracle Database 21c Enterprise Edition Release 21.0.0.0.0 - Production\
Version 21.3.0.0.0\
\
SQL> set procedureput on;\
SP2-0735: unknown SET option beginning "procedurep..."\
SQL> set serveroutput on;\
SQL> edit\
SP2-0107: Nothing to save.\
SQL> wrote file afiedt.buf\
SP2-0734: unknown command beginning "wrote file..." - rest of line ignored.\
SQL> begin\
  2  dbms_output_put_line('hello world');\
  3  end;\
  4  /\
dbms_output_put_line('hello world');\
*\
ERROR at line 2:\
ORA-06550: line 2, column 1:\
PLS-00201: identifier 'DBMS_OUTPUT_PUT_LINE' must be declared\
ORA-06550: line 2, column 1:\
PL/SQL: Statement ignored\
\
\
SQL>  set serveroutput on;\
SQL> BEGIN\
  2     DBMS_OUTPUT.put_line ('Hello World!');\
  3  END;\
  4\
  5\
  6\
  7  /\
Hello World!\
\
PL/SQL procedure successfully completed.\
\
SQL> DECLARE\
  2    l_message VARCHAR2( 255 ) := 'Hello World!';\
  3  BEGIN\
  4    DBMS_OUTPUT.PUT_LINE( l_message );\
  5  END;/\
  6  /\
END;/\
    *\
ERROR at line 5:\
ORA-06550: line 5, column 5:\
PLS-00103: Encountered the symbol "/" The symbol "/" was ignored.\
\
\
SQL> DECLARE\
  2    l_message VARCHAR2( 255 ) := 'Hello World!';\
  3  BEGIN\
  4    DBMS_OUTPUT.PUT_LINE( l_message );\
  5  END;\
  6  /\
Hello World!\
\
PL/SQL procedure successfully completed.\
\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2    l_message VARCHAR2( 255 ) := 'Hello World! fuck u';\
  3  BEGIN\
  4    DBMS_OUTPUT.PUT_LINE( l_message );\
  5* END;\
SQL> //\
Hello World! fuck u\
\
PL/SQL procedure successfully completed.\
\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2        v_result NUMBER;\
  3  BEGIN\
  4     v_result := 1 / 0;\
  5     EXCEPTION\
  6        WHEN ZERO_DIVIDE THEN\
  7           DBMS_OUTPUT.PUT_LINE( SQLERRM );\
  8* END;\
SQL> /\
ORA-01476: divisor is equal to zero\
\
PL/SQL procedure successfully completed.\
\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2        v_result NUMBER;\
  3  BEGIN\
  4     v_result := 1 / 0;\
  5     EXCEPTION\
  6        WHEN ZERO_DIVIDE THEN\
  7           DBMS_OUTPUT.PUT_LINE( SQLERRM );\
  8* END;\
SQL> /\
ORA-01476: divisor is equal to zero\
\
PL/SQL procedure successfully completed.\
\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2        v_result NUMBER;\
  3  BEGIN\
  4     v_result := 1 / 0;\
  5     EXCEPTION\
  6        WHEN ZERO_DIVIDE THEN\
  7           DBMS_OUTPUT.PUT_LINE( SQLERRM );\
  8* END;\
SQL> dsc emp\
SP2-0042: unknown command "dsc emp" - rest of line ignored.\
SQL> dsc emp;\
SP2-0042: unknown command "dsc emp" - rest of line ignored.\
SQL> desc emp;\
 Name                                      Null?    Type\
 ----------------------------------------- -------- ----------------------------\
 ID                                        NOT NULL NUMBER(38)\
 FIRSTNAME                                 NOT NULL VARCHAR2(10)\
 LASTNAME                                  NOT NULL VARCHAR2(10)\
 SALARY                                    NOT NULL FLOAT(126)\
 JOB_ROLE                                           VARCHAR2(10)\
\
SQL> select * from emp;\
\
        ID FIRSTNAME  LASTNAME       SALARY JOB_ROLE\
---------- ---------- ---------- ---------- ----------\
       100 Anna       Green           15000\
       101 John       Doe             68000\
\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2   fn emp.firstname%TYPE;\
  3   ln emp.lastname%TYPE;\
  4  BEGIN\
  5    SELECT\
  6      firstname, lastname\
  7    INTO\
  8      fn, ln\
  9    FROM\
 10      emp\
 11    WHERE\
 12      id = 100;\
 13    DBMS_OUTPUT.PUT_LINE(fn || ':' || ln );\
 14* END;\
 15  /\
Anna:Green\
\
PL/SQL procedure successfully completed.\
\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2   fn emp.firstname%TYPE;\
  3   ln emp.lastname%TYPE;\
  4  sal emp.lastname%TYPE;\
  5  BEGIN\
  6    SELECT\
  7      firstname, lastname, sal\
  8    INTO\
  9      fn, ln, sal\
 10    FROM\
 11      emp\
 12    WHERE\
 13      id = 100;\
 14    DBMS_OUTPUT.PUT_LINE(fn || 'is paid an amount of ' || sal );\
 15* END;\
SQL> /\
Annais paid an amount of\
\
PL/SQL procedure successfully completed.\
\
SQL>\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2   fn emp.firstname%TYPE;\
  3   ln emp.lastname%TYPE;\
  4  sal emp.lastname%TYPE;\
  5  BEGIN\
  6    SELECT\
  7      firstname, lastname, sal\
  8    INTO\
  9      fn, ln, sal\
 10    FROM\
 11      emp\
 12    WHERE\
 13      id = 100;\
 14    DBMS_OUTPUT.PUT_LINE(fn || ' is paid an amount of ' || sal );\
 15* END;\
SQL> /\
Anna is paid an amount of\
\
PL/SQL procedure successfully completed.\
\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2   fn emp.firstname%TYPE;\
  3   ln emp.lastname%TYPE;\
  4  sal emp.salary%TYPE;\
  5  BEGIN\
  6    SELECT\
  7      firstname, lastname, sal\
  8    INTO\
  9      fn, ln, sal\
 10    FROM\
 11      emp\
 12    WHERE\
 13      id = 100;\
 14    DBMS_OUTPUT.PUT_LINE(fn || ' is paid an amount of ' || sal );\
 15* END;\
SQL> /\
Anna is paid an amount of\
\
PL/SQL procedure successfully completed.\
\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2   fn emp.firstname%TYPE;\
  3   ln emp.lastname%TYPE;\
  4  sal emp.salary%TYPE;\
  5  BEGIN\
  6    SELECT\
  7      firstname, lastname, salary\
  8    INTO\
  9      fn, ln, sal\
 10    FROM\
 11      emp\
 12    WHERE\
 13      id = 100;\
 14    DBMS_OUTPUT.PUT_LINE(fn || ' is paid an amount of ' || sal );\
 15* END;\
SQL> /\
Anna is paid an amount of 15000\
\
PL/SQL procedure successfully completed.\
\
SQL> edit\
Wrote file afiedt.buf\
\
  1  DECLARE\
  2   fn emp.firstname%TYPE;\
  3   ln emp.lastname%TYPE;\
  4  sal emp.salary%TYPE;\
  5  BEGIN\
  6    SELECT\
  7      firstname, lastname, salary\
  8    INTO\
  9      fn, ln, sal\
 10    FROM\
 11      emp\
 12    WHERE\
 13      id = 100;\
 14    DBMS_OUTPUT.PUT_LINE(fn || ' is paid an amount of ' || sal );\
 15* END;\
SQL> DECLARE\
  2    l_counter NUMBER := 0;\
  3  BEGIN\
  4    LOOP\
  5      l_counter := l_counter + 1;\
  6      IF l_counter > 3 THEN\
  7        EXIT;\
  8      END IF;\
  9      dbms_output.put_line( 'Inside loop: ' || l_counter )  ;\
 10    END LOOP;\
 11    -- control resumes here after EXIT\
 12    dbms_output.put_line( 'After loop: ' || l_counter );\
 13  END;\
 14  /\
Inside loop: 1\
Inside loop: 2\
Inside loop: 3\
After loop: 4\
\
PL/SQL procedure successfully completed.\
\
SQL> create user williams identified by will_pass\
  2  default tablespace users\
  3  temporary tablespace temp;\
create user williams identified by will_pass\
            *\
ERROR at line 1:\
ORA-65096: invalid common user or role name\
\
\
SQL> create user c##williams identified by will_pass\
  2  default tablespace users\
  3  temporary tablespace temp;\
\
User created.\
\
SQL> ALTER USER c##williams QUOTA unlimited ON users;\
\
User altered.\
\
SQL>}