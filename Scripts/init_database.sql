-- Create brand new database called "Data Warehouse Project".
-- In order to do that, first we have to switch to the "master" database.
-- This is a system database in SQL Server where you can go and create other databases.

USE master; -- Switch to the master database (system) to create your new project database.

-- Check if the "Data Warehouse Project" database exists, then drop and recreate it.
IF EXISTS (SELECT 1 FROM sys. databases WHERE name = 'Data Warehouse Project')
BEGIN
ALTER DATABASE 'Data Warehouse Project' SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE 'Data Warehouse Project';
END;

CREATE DATABASE "Data Warehouse Project";

USE "Data Warehouse Project"; -- Switch to the new database. 

-- Now we can go and start building stuff inside this database.
-- Next step is to start creating the schemas.
-- So what is a schema? Think about it like a folder or a container that helps you to keep things organized.
-- So as we decided in the architecture, we have three layers: bronze, silver, and gold. 
-- And now we're going to create a schema for each layer.

CREATE SCHEMA bronze;
CREATE SCHEMA silver;
GO -- Separate batches when working with multiple SQL statements (if you want to run the silver and gold at once).
CREATE SCHEMA gold;
-- In order to check if the schemas are there, go to the Security folder, and open the Schemas subfolder.

-- Now we have the database and the three layers, and we can start developing each layer individually.
