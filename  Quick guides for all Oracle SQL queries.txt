oracle/oracle as OracleDatabase 

https://localhost:5500/em/login

username:sys
password: oracle


Hostname; 10.211.55.3  

sqlplus ===syscon/oracle as sysdba


------- CONNECT TO THE DIRECT SYSTME
sqlplus sys/oracle@orcle as sysdba
OR
sys/oracle as sysdba

-----SHOW CONTAINER
show con_name

alter pluggable database  ***** open



CREATE NEW TABLE SPACE  "CIRLCLE"
--------------------------------
CREATE SMALLFILE TABLESPACE CIRCLE 
    DATAFILE 
        'C:\APP\ORACLEDATABASE\ORADATA\ORCL\CIRCLE01.DBF' SIZE 5242880 AUTOEXTEND ON NEXT 1048576 MAXSIZE 3221225472 
    BLOCKSIZE 8192 
    DEFAULT NOCOMPRESS 
    ONLINE 
    SEGMENT SPACE MANAGEMENT AUTO 
    EXTENT MANAGEMENT LOCAL AUTOALLOCATE;


MOVE TO CONTAINER to orclpdb
--------------------------------
SQL> alter session set container = orclpdb;




CREATE USER
---------------------------------
-- USER SQL
CREATE USER "student01" IDENTIFIED BY "oracle"  
DEFAULT TABLESPACE "IPMC"
TEMPORARY TABLESPACE "TEMP";

-- QUOTAS
ALTER USER "student01" QUOTA 5M ON "IPMC";

-- ROLES
GRANT "CONNECT" TO "student01" ;

-- SYSTEM PRIVILEGES




CREATE USER "staff01" IDENTIFIED BY "oracle"  
DEFAULT TABLESPACE "IPMC"
TEMPORARY TABLESPACE "TEMP";


ALTER USER "student01" QUOTA 5M ON "IPMC";


GRANT "CONNECT" TO "student01" ;


----mich create user

CREATE USER "C##ipmc01" IDENTIFIED BY "oracle"  
DEFAULT TABLESPACE "IPMC"
TEMPORARY TABLESPACE "TEMP"


GRANT "CONNECT" TO "C##staff01" 
ALTER USER "C##staff01" QUOTA 5M ON "IPMC";



CREATE NEW PDB (CONTAINER)
---------------------------------------------------------------------

 create pluggable database tera_pdb admin user tera_admin identified by oracle file_name_convert=('C:\App\OracleDatabase\oradata\ORCL\pdbseed\','C:\App\OracleDatabase\oradata\ORCL\tera_pdb\');

NOW TO SHOW IT
----------------------------------------
 alter pluggable database tera_pdb open;

ENTER INTO THE CONTAINER
------------------------
 alter session set container = tera_pdb;




CREATE NEW TABLE SPACE  "Tera_ts"
--------------------------------
CREATE  TABLESPACE Tera_ts 
    DATAFILE 
        'C:\App\OracleDatabase\oradata\ORCL\tera_pdb\tera01.dbf' SIZE 5M AUTOEXTEND ON NEXT 1M MAXSIZE 200M UNIFORM SIZE 64K
    EXTENT MANAGEMENT LOCAL ;



CREATE USERS FOR THE DATABASE
--------------------------------------
STAFF
--------------------------------------
CREATE USER STAFF0 IDENTIFIED BY ORACLE DEFAULT TABLESPACE Tera_ts TEMPORARY TABLESPACE TEMP;

STUDENT
--------------------------------------

CREATE USER STUDENT0 IDENTIFIED BY ORACLE DEFAULT TABLESPACE Tera_ts TEMPORARY TABLESPACE TEMP;


GRANT PERMISSION
--------------------------------------
GRANT CONNECT TO STAFF0,STUDENT0;

ALTER THE QUOPTA
----------------------------------

ALTER USER tera_admin QUOTA UNLIMITED ON tera_ts;


ALTER THE QUOTA TO 1M EACH
------------------------------------
alter user staff0 quota 1M on tera_ts;
alter user student0 quota 1M on tera_ts;

CREATE TABLE FOR TERA_ADMIN
------------------------------------
create table tera_admin.student(id integer primary key, firstname varchar(20), lastname varchar(20), email varchar(20));


create table tera_admin.courses(code varchar2(20) primary key, coursetitle varchar2(20));

create table tera_admin.module(module_id integer primary key, module_name varchar2(20));

create table tera_admin.staff(id integer primary key, firstname varchar(20), lastname varchar(20), email varchar(20));

LOGIN IN TO TERA-ADMIN -(after making tns changes)
--------------------------------------

sqlplus tera_admin/oracle@tera_pdb






CREATE NEW TABLE SPACE  "IGP"
--------------------------------
CREATE  TABLESPACE IGP 
    DATAFILE 
        'C:\App\OracleDatabase\oradata\ORCL\orclpdb\IGP01.dbf' SIZE 5M AUTOEXTEND ON NEXT 1M MAXSIZE 200M UNIFORM SIZE 64K
    EXTENT MANAGEMENT LOCAL ;

I ALTERED THE SIZE TO 10M
--------------------------------

ALTER DATABASE DATAFILE 'C:\App\OracleDatabase\oradata\ORCL\orclpdb\IGP01.dbf' RESIZE 10M;





ALTER USER ama QUOTA 1M ON IGP;


CREATE TABLE BUT THE CONTRAINS ALSO HAVE NAMES
-------------------------------------------------------------------
 CREATE TABLE staff (
        id INTEGER  CONSTRAINT staff_id_pk  PRIMARY KEY,
        firstname VARCHAR(20) CONSTRAINT fn_nn NOT NULL,
       lastname VARCHAR(20) CONSTRAINT ln_nn NOT NULL
    );


ALTER TABLESPACE FOR TABLE STAFF
-------------------------------------------------------------------

ALTER TABLE staff
MOVE TABLESPACE IGP;

GRANT CONNECT TO Ama,kofi;


GRANT SELECT, INSERT ON staff TO Ama,kofi;

REVOKE SELECT, INSERT ON staff FROM Ama;

sqlplus kofi/oracle@orclpdb
    kofi/oracle@orclpdb





DESCRIBE ALL DBA USERS 
-------------------------------------------------------------------
 desc dba_users;

 SHOW ALL USERNAME FROM DBA
-------------------------------------------------------------------

 select username from dba_users ;


SHOW ALL TABLESPACE FROM DBA
-------------------------------------------------------------------

select tablespace_name from dba_tablespaces;


DESC TABLES FROM DBA 
-------------------------------------------------------------------

 desc dba_tables;


SHOW ALL TABLE NAMES IN ORDER 
-------------------------------------------------------------------

 select table_name from dba_tables order by table_name;


