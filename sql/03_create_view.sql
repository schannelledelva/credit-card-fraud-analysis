-- Creates analytical view selecting only columns used in Power BI
-- Pre-splits trans_date_trans_time into separate date and time columns
-- Connect Power BI to this view, not the raw staging table
CREATE VIEW v_Clean_Fraud_data AS
SELECT
    CAST(TRY_CONVERT(datetime, trans_date_trans_time) AS date) AS Transaction_date,
    CAST(TRY_CONVERT(datetime, trans_date_trans_time) AS time) AS Transaction_time,
    cc_num,
    merchant,
    category,
    amt,
    city,
    state,
    job,
    is_fraud
FROM fraudTrain; -- Or your custom table name
