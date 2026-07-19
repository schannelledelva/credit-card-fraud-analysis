-- Creates analytical view selecting only columns used in Power BI
-- Pre-splits trans_date_trans_time into separate date and time columns
-- Connect Power BI to this view, not the raw staging table

CREATE VIEW view_name AS
SELECT 
    CAST(LEFT(trans_date_trans_time, 10) AS DATE)        AS Transaction_date,
    CAST(RIGHT(trans_date_trans_time, 8) AS TIME)        AS Transaction_time,
    merchant,
    category,
    amt,
    city,
    state,
    job,
    is_fraud
FROM fraudTrain -- Or your custom table name
