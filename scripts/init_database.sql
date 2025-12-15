Database name: DataWarehouse
Schemas: bronze, silver, gold

Running the entire script will drop the entire database.
*/


IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO
-- Create the DataWarehouse DB 
USE master;

USE DataWarehouse;
GO

--Create SCHEMAS
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
