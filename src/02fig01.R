#might need to reimport due to level issues
bb_data <- read.csv(paste(dag_csv_in,"exposure_mixtures3.csv",sep=""))

# View(bb_data)

colnames(bb_data)
levels(bb_data$group)
#"bif"       "bifmet"    "bifmettdt" "biftdt"    "met"       "mettdt"    "tdt"
levels(bb_data$group) <- c("Bif","BifMet","BifMetTdn","BifTdn","Met","MetTdn","Tdn")
bb_data$group = factor(bb_data$group,levels(bb_data$group)[c(1,5,7,2,4,6,3)])

levels(bb_data$pesticide)
levels(bb_data$pesticide) <- c("Bif","Met","Tdn")

conc_summary <- bb_data %>% # the names of the new data frame and the data frame to be summarised
  group_by(group,pesticide,rate) %>%   # the grouping variable
  summarise(mean_conc = mean(conc),  # calculates the mean of each group
            sd_conc = sd(conc), # calculates the standard deviation of each group
            n_conc = n(),  # calculates the sample size per group
            se_conc = sd(conc)/sqrt(n())) # calculates the standard error of each group
conc_summary

g <- ggplot(conc_summary, aes(group, mean_conc, fill=pesticide)) + 
  geom_bar(stat="identity", colour="black", position="dodge") +
  facet_wrap(~ rate, scale="free_y", ncol=1) +
  geom_errorbar(aes(ymin=mean_conc, ymax=mean_conc+sd_conc), width=.2, position=position_dodge(.9)) + 
  theme_bw() +
  labs(x = "Treatment", y=expression(paste("Concentration (",mu,"g/g)",sep=""))) +
  guides(fill=guide_legend(title="Chemical"))
g

conc_barplot <- paste(dag_graphics,"glinski_biomarkers_fig1.jpg",sep="")
  jpeg(conc_barplot, width = 6, height = 7, units = "in",res=600)
  g
dev.off()

