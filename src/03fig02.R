abundance_peaks <- read.csv(paste(dag_csv_in,"abundance_peaks.csv",sep=""))
#View(abundance_peaks)

colnames(abundance_peaks)
levels(abundance_peaks$Treatment)
abundance_peaks$Treatment = factor(abundance_peaks$Treatment,
                                   levels(abundance_peaks$Treatment)[c(1,2,4,3,5,6,7)])
levels(abundance_peaks$Treatment)
levels(abundance_peaks$Treatment) <- c("Bif","Met","Tdn","BifMet","BifTdn","MetTdn","BifMetTdn")
