View(bb_data)

g <- ggplot(bb_data, aes(group, conc, fill=pesticide)) + 
  geom_bar(stat="identity", position="dodge") +
  facet_wrap(~ rate, scale="free_y", ncol=1)
g
