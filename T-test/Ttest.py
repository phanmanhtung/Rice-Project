import pandas as pd
from scipy.stats import ttest_ind

# Read the data
df = pd.read_excel('ecosystemfinal.xlsx', index_col='ID')

# Create sub-dataframe
ir = df[df['Ecosyst.'] == "IR"]
mg = df[df['Ecosyst.'] == "MG"]

ttest_sp = ttest_ind(ir['SHW'].values, mg['SHW'].values)
print("T test with SHW\n")
print(ttest_sp)

ttest_sp = ttest_ind(ir['PUE'].values, mg['PUE'].values)
print("T test with PUE\n")
print(ttest_sp)
