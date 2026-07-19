-- Loads cleaned tab-separated data into staging table
-- Prerequisite: run clean_data.py first to generate the .txt file
-- Then run 01_create_table.sql before this script

BULK INSERT fraudTrain --or your custom table name
FROM 'C:\Path_to_th_clean_dataset'
WITH (
    FIELDTERMINATOR = '\t',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
)
