abundance_peaks <- read.csv(paste(dag_csv_in,"abundance_peaks2.csv",sep=""))
#View(abundance_peaks)

colnames(abundance_peaks)
levels(abundance_peaks$Chemical)
abundance_peaks$Chemical = factor(abundance_peaks$Chemical,
                                   levels(abundance_peaks$Chemical)[c(1,2,4,3,5,6,7)])
levels(abundance_peaks$Chemical)
levels(abundance_peaks$Chemical) <- c("Bif","Met","Tdn","BifMet","BifTdn","MetTdn","BifMetTdn")
levels(abundance_peaks$Chemical)

g <- ggplot(abundance_peaks, aes(Chemical, Rate, fill=Treatment)) + 
  geom_bar(stat="identity", colour="black", position="dodge") +
  theme_bw() +
  labs(x = "Treatment", y="Peak Abundance") +
  scale_fill_discrete(name = "Rate",
                      breaks = c("max_app", "tenth_app"),
                      labels=c("Maximum","1/10th Max")) +
  theme(legend.position="top")
  #guides(fill=guide_legend(title="Rate"))
g

conc_barplot <- paste(dag_graphics,"glinski_biomarkers_fig2.jpg",sep="")
  jpeg(conc_barplot, width = 6, height = 7, units = "in",res=600)
  g
dev.off()
