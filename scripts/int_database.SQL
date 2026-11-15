/*

Create Database and Schemas

Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
within the database: 'bronze', 'silver', and 'gold'.

WARNING:
Running this script will drop the entire 'DataWarehouse' database if it exists.
All data in the database will be permanently deleted. Proceed with caution
and ensure you have proper backups before running this script.

*/

--MY SQL PROJECT OF DATA WAREHOUSE 
--STEP 1 CREATE NEW DATABASE 
USE MASTER;
go

--drop and recreate the 'DataWarehouse'database 
if exists (select 1 from sys.databases where name = 'datawarehouse')
begin 
   alter database datawarehouse set single_user with rollback immediate;
   drop database datawarehouse;
   end;
   go

--create 'datawarehouse' database 
CREATE DATABASE DataWarehouse;
go

use datawarehouse;
go

--create schema
create schema bronze;
go
create schema silver;
go
create schema gold;
