#Download Bioconductor Packages (for download other biopackages)
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()

BiocManager::install(c("multtest", "gplots", "LDheatmap", "genetics", "ape", "EMMREML", "scatterplot3d"))
install.packages("readxl" )

library(multtest)
library(gplots)
library(LDheatmap)
library(genetics)
library(ape)
library(EMMREML)
library(compiler) #this library is already installed in R
library("scatterplot3d")
library("bigmemory") 
library("biganalytics")

source("http://zzlab.net/GAPIT/gapit_functions.txt")
source("http://zzlab.net/GAPIT/emma.txt")
source("http://zzlab.net/FarmCPU/FarmCPU_functions.txt")

#set current working directory
#Provide your own working directory
setwd('/home/phanmanhtung/Desktop/R_riceproject')

MyHapmap = read.delim("hapmap.txt", header = FALSE, sep = "\t", dec = ".") # myG file

library(readxl)
pheno = read_excel("DELTA2.xlsx", col_names = TRUE) # myY

Hm2 = as.data.frame(MyHapmap)
pheno2 = as.data.frame(pheno) 

# Before running this line, create a folder named GAPIT_final in your working dir
setwd('/home/phanmanhtung/Desktop/R_riceproject/GAPIT_final')

myGAPIT <- GAPIT(
  Y=pheno2,
  G=Hm2,
  PCA.total=3
)

setwd('/home/phanmanhtung/Desktop/R_riceproject/FARMCPU')

myGAPIT <- GAPIT(
  Y=pheno2,
  G=Hm2,
  PCA.total=3,
  model="FarmCPU"
)

install.packages("dplyr") # packe to create subset of a dataframe
library(dplyr)

# <RTW>	<SHW>	<TTW>	<NCR>	<SHL>	<RTL>	<PUE>
setwd('/home/phanmanhtung/Desktop/R_riceproject/RTW')

sub_pheno = select(pheno2, "<VAR>", "<RTW>") # take only 2 columns for analysis
# select(df1, A, B, E)

myGAPIT <- GAPIT(
  Y=sub_pheno,
  G=Hm2,
  PCA.total=3,
  model="FarmCPU"
)

setwd('/home/phanmanhtung/Desktop/R_riceproject/SHW')

sub_pheno = select(pheno2, "<VAR>", "<SHW>") # take only 2 columns for analysis
# select(df1, A, B, E)

myGAPIT <- GAPIT(
  Y=sub_pheno,
  G=Hm2,
  PCA.total=3,
  model="FarmCPU"
)

setwd('/home/phanmanhtung/Desktop/R_riceproject/TTW')

sub_pheno = select(pheno2, "<VAR>", "<TTW>") # take only 2 columns for analysis
# select(df1, A, B, E)

myGAPIT <- GAPIT(
  Y=sub_pheno,
  G=Hm2,
  PCA.total=3,
  model="FarmCPU"
)

setwd('/home/phanmanhtung/Desktop/R_riceproject/NCR')

sub_pheno = select(pheno2, "<VAR>", "<NCR>") # take only 2 columns for analysis
# select(df1, A, B, E)

myGAPIT <- GAPIT(
  Y=sub_pheno,
  G=Hm2,
  PCA.total=3,
  model="FarmCPU"
)

setwd('/home/phanmanhtung/Desktop/R_riceproject/SHL')

sub_pheno = select(pheno2, "<VAR>", "<SHL>") # take only 2 columns for analysis
# select(df1, A, B, E)

myGAPIT <- GAPIT(
  Y=sub_pheno,
  G=Hm2,
  PCA.total=3,
  model="FarmCPU"
)

setwd('/home/phanmanhtung/Desktop/R_riceproject/RTL')

sub_pheno = select(pheno2, "<VAR>", "<RTL>") # take only 2 columns for analysis
# select(df1, A, B, E)

myGAPIT <- GAPIT(
  Y=sub_pheno,
  G=Hm2,
  PCA.total=3,
  model="FarmCPU"
)

setwd('/home/phanmanhtung/Desktop/R_riceproject/PUE')

sub_pheno = select(pheno2, "<VAR>", "<PUE>") # take only 2 columns for analysis
# select(df1, A, B, E)

myGAPIT <- GAPIT(
  Y=sub_pheno,
  G=Hm2,
  PCA.total=3,
  model="FarmCPU"
)

