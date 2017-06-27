library(dplyr)
library(RMySQL)
library(sqldf)
library(data.table)

######Laod and Join Series and data tables##############
NCS1 <-read.csv(url("https://download.bls.gov/pub/time.series/cm/cm.data.0.Current"), sep="\t", header=TRUE)
NCS2 <-read_delim("https://download.bls.gov/pub/time.series/cm/cm.series",  "\t", escape_double=FALSE, trim_ws=TRUE)
NCS3 <-read_delim("https://download.bls.gov/pub/time.series/cm/cm.estimate",  "\t", escape_double=FALSE, trim_ws=TRUE)
NCS4 <-read_delim("https://download.bls.gov/pub/time.series/cm/cm.area",  "\t", escape_double=FALSE, trim_ws=TRUE)
NCS5 <-read_delim("https://download.bls.gov/pub/time.series/cm/cm.datatype",  "\t", escape_double=FALSE, trim_ws=TRUE)
NCS6 <-read_delim("https://download.bls.gov/pub/time.series/cm/cm.occupation",  "\t", escape_double=FALSE, trim_ws=TRUE)
NCS7 <-read_delim("https://download.bls.gov/pub/time.series/cm/cm.owner",  "\t", escape_double=FALSE, trim_ws=TRUE)
NCS8 <-read_delim("https://download.bls.gov/pub/time.series/cm/cm.seasonal",  "\t", escape_double=FALSE, trim_ws=TRUE)
NCS9 <-read_delim("https://download.bls.gov/pub/time.series/cm/cm.subcell",  "\t", escape_double=FALSE, trim_ws=TRUE)

#######Join the tables############
NCSjoin<-left_join(NCS1,NCS2, by="series_id")
NCSjoin<-left_join(NCSjoin,NCS3, by="estimate_code")
NCSjoin<-left_join(NCSjoin,NCS4, by="area_code")
NCSjoin<-left_join(NCSjoin,NCS5, by="datatype_code")
NCSjoin<-left_join(NCSjoin,NCS6, by="occupation_code")
NCSjoin<-left_join(NCSjoin,NCS7, by="owner_code")
NCSjoin<-left_join(NCSjoin,NCS8, by="seasonal")
NCSjoin<-left_join(NCSjoin,NCS9, by="subcell_code")




###use iplots to make parallel coordinates map

