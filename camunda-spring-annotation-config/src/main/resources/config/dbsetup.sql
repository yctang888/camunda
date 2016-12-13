CREATE TABLESPACE "DEMO_DATA_TS" DATAFILE 'C:\oraclexe\app\oracle\oradata\XE\DEMO.DBF' SIZE 209715200 AUTOEXTEND ON NEXT 209715200 MAXSIZE 32767M LOGGING ONLINE PERMANENT BLOCKSIZE 8192 EXTENT MANAGEMENT LOCAL AUTOALLOCATE DEFAULT NOCOMPRESS SEGMENT SPACE MANAGEMENT AUTO;
 
CREATE TABLESPACE "DEMO_INDEX_TS" DATAFILE 'C:\oraclexe\app\oracle\oradata\XE\DEMO_INDEX.DBF' SIZE 209715200 AUTOEXTEND ON NEXT 209715200 MAXSIZE 32767M LOGGING ONLINE PERMANENT BLOCKSIZE 8192 EXTENT MANAGEMENT LOCAL AUTOALLOCATE DEFAULT NOCOMPRESS SEGMENT SPACE MANAGEMENT AUTO;
 
CREATE USER demo IDENTIFIED BY demo 
DEFAULT TABLESPACE "DEMO_DATA_TS"
TEMPORARY TABLESPACE "TEMP";
 
-- QUOTAS
ALTER USER demo QUOTA UNLIMITED ON DEMO_DATA_TS;
ALTER USER demo QUOTA UNLIMITED ON DEMO_INDEX_TS;
 
-- SYSTEM PRIVILEGES
GRANT CREATE SEQUENCE TO demo ;
GRANT CREATE TABLE TO demo ;
GRANT CREATE SYNONYM TO demo ;
GRANT CREATE VIEW TO demo ;
GRANT CREATE TYPE TO demo ;
GRANT CREATE SESSION TO demo ;
