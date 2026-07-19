# clean_data.py
# Cleans raw fraudTrain.csv for SQL Server ingestion
# Problem: embedded commas in text fields caused delimiter collision
# Solution: read in chunks, export as tab-separated (.txt)
# Dataset: https://www.kaggle.com/datasets/kartik2112/fraud-detection?resource=download

import pandas as pd

input_path = r"fraudTrain.csv"       # update path as needed
output_path = r"fraudTrain_CLEAN_FULL.txt" #Path to the clean dataset, update as needed

print("Loading dataset in chunks to avoid memory overflow...")
chunks = []
for chunk in pd.read_csv(input_path, chunksize=100000, low_memory=False):
    chunks.append(chunk)

df = pd.concat(chunks, ignore_index=True)
print(f"Total rows loaded: {len(df)}")

df.to_csv(output_path, sep="\t", index=False)
print(f"Clean file saved: {output_path}")
