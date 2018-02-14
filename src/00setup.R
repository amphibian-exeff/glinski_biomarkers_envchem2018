#Install and load supporting libraries.
print(Sys.info()[4])

R.Version()$version.string
library(rmarkdown, quietly = TRUE, warn.conflicts = FALSE)
library(dplyr, quietly = TRUE, warn.conflicts = FALSE)
library(knitr, quietly = TRUE, warn.conflicts = FALSE)
library(ggplot2)
library(reshape2)
library(MASS)
library(fdrtool)
print("list of loaded packages: ")
print((.packages()))

#explanation of lm output
#http://blog.yhat.com/posts/r-lm-summary.html

#The underlying least squares arithmetic of aov and lm is identical. 
#In R, the QR algorithm is used.  The difference between the two is 
#intent of the analysis and the default presentation of the results. 

# regression and aov(1-way anova) can be both used for continuous response variables (body burden)
# anova is generally used for categorical x values (nominal, each category has a coefficient),
  #but should be equivalent to lm for experimental data
# regression/lm is generally used for continuous x values (e.g., time), 
  #but should be equivalent to anova for experimental data

#Determine path directory based on the user machine######
#tom epa windows
if(Sys.info()[4]=="DZ2626UTPURUCKE"){
  dag_root<-path.expand("d:/git/glinski_biomarkers/")
}
if(Sys.info()[4]=="Coiles-MBP"){
  dag_root<-path.expand("~/git/glinski_biomarkers/")
}
print(paste("Root directory location: ", dag_root, sep=""))

dag_csv_in <- paste(dag_root, "csv_in/", sep="")
dag_graphics <- paste(dag_root, "graphics/", sep="")

#check to see if directories are accessible
boo = file.exists(paste(dag_csv_in,"biomarker.csv",sep=""))
print(paste("check to see if R can access files OK: ", boo))

#cleaned up data set, manually reshaped
bb_data <- read.csv(paste(dag_csv_in,"exposure_mixtures2.csv",sep=""))
#View(bb_data)
abundance_peaks <- read.csv(paste(dag_csv_in,"abundance_peaks2.csv",sep=""))
#View(abundance_peaks)

#factors as appropriate
summary(bb_data)
class(bb_data$group)
class(bb_data$met)
bb_data$met <- factor(bb_data$met)
class(bb_data$met)
class(bb_data$tdt)
bb_data$tdt <- factor(bb_data$tdt)
class(bb_data$tdt)
class(bb_data$bif)
bb_data$bif <- factor(bb_data$bif)
class(bb_data$bif)

class(bb_data$pesticide)
levels(bb_data$pesticide)
met <- which(bb_data$pesticide=="met" & bb_data$met==1)
tdt <- which(bb_data$pesticide=="tdt" & bb_data$tdt==1)
bif <- which(bb_data$pesticide=="bif" & bb_data$bif==1)

bb_data.met <- bb_data[met,]
dim(bb_data.met)

bb_data.tdt <- bb_data[tdt,]
dim(bb_data.tdt)

bb_data.bif <- bb_data[bif,]
dim(bb_data.bif)

