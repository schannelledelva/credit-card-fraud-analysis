# Dataset Source

**Name:** Credit Card Transactions Fraud Detection Dataset  
**Author:** Kartik Shenoy  
**Source:** https://www.kaggle.com/datasets/kartik2112/fraud-detection?resource=download 
**License:** Open Database License (ODbL)  

## Description
Simulated credit card transaction dataset covering January 2019 – June 2020.
Contains 1,296,675 transactions across legitimate and fraudulent purchases.

## How to use
Download fraudTrain.csv from the link above, then run the scripts in this order:
1. python/clean_data.py
2. sql/01_create_table.sql
3. sql/02_bulk_insert.sql
4. sql/03_create_view.sql
