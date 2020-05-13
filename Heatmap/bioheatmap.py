import seaborn as sns; sns.set(color_codes=True)
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# read the data with pandas
delta = pd.read_excel("finalDELTA.xlsx")

# Preprocessing
delta.rename(columns={"<RLT>":"<RTL>", "<TRAIT>":"<VARIETIES>"}, inplace=True)
delta.set_index(["<VARIETIES>"], inplace=True)
delta.fillna(method="ffill", inplace=True)

print(delta.head())

# Heatmap with hierarchical clustering / method='average' (default)
g1 = sns.clustermap(delta, metric="correlation", figsize = (10,7), cmap=sns.color_palette("coolwarm"))

# method = 'ward'
g2 = sns.clustermap(delta, metric="euclidean", method="ward" , figsize = (10,7), cmap=sns.color_palette("coolwarm"))

# Corrchart
g3 = plt.figure() 
matrix = np.triu(delta.corr())
sns.heatmap(delta.corr(), fmt="g", mask=matrix,cmap =sns.color_palette("coolwarm"), vmin=-1, vmax =1)

# Save figures to png
g1.savefig("29-1-2020_ricegroup_python_heatmap", bbox_inches='tight')
g2.savefig("29-1-2020_ricegroup_python_heatmap(1)", bbox_inches='tight')
g3.savefig("29-1-2019_ricegroup_python_corrchart", bbox_inches='tight')


