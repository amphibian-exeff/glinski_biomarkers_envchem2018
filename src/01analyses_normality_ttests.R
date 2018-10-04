View(bb_data.bif)
summary(bb_data.bif)


#bifenthrin
#single
bif_single_tenth_n <- intersect(which(bb_data.bif$group=="bif"), which(bb_data.bif$rate=="1/10th Max"))
bif_single_tenth <- bb_data.bif[bif_single_tenth_n,]$conc
bif_single_max_n <- intersect(which(bb_data.bif$group=="bif"), which(bb_data.bif$rate=="Maximum"))
bif_single_max <- bb_data.bif[bif_single_max_n,]$conc
shapiro.test(bif_single_tenth) #reject
shapiro.test(bif_single_max) #dont reject

#double_a
bif_double_a_tenth_n <- intersect(which(bb_data.bif$group=="bifmet"), which(bb_data.bif$rate=="1/10th Max"))
bif_double_a_tenth <- bb_data.bif[bif_double_a_tenth_n,]$conc
bif_double_a_max_n <- intersect(which(bb_data.bif$group=="bifmet"), which(bb_data.bif$rate=="Maximum"))
bif_double_a_max <- bb_data.bif[bif_double_a_max_n,]$conc
shapiro.test(bif_double_a_tenth) #dont reject
shapiro.test(bif_double_a_max) #dont reject

#double_b
bif_double_b_tenth_n <- intersect(which(bb_data.bif$group=="biftdt"), which(bb_data.bif$rate=="1/10th Max"))
bif_double_b_tenth <- bb_data.bif[bif_double_b_tenth_n,]$conc
bif_double_b_max_n <- intersect(which(bb_data.bif$group=="biftdt"), which(bb_data.bif$rate=="Maximum"))
bif_double_b_max <- bb_data.bif[bif_double_b_max_n,]$conc
shapiro.test(bif_double_b_tenth) #dont reject
shapiro.test(bif_double_b_max) #dont reject

#triple
bif_triple_tenth_n <- intersect(which(bb_data.bif$group=="bifmettdt"), which(bb_data.bif$rate=="1/10th Max"))
bif_triple_tenth <- bb_data.bif[bif_triple_tenth_n,]$conc
bif_triple_max_n <- intersect(which(bb_data.bif$group=="bifmettdt"), which(bb_data.bif$rate=="Maximum"))
bif_triple_max <- bb_data.bif[bif_triple_max_n,]$conc
shapiro.test(bif_triple_tenth) #dont reject
shapiro.test(bif_triple_max) #dont reject

### Bonferroni correction of 0.05/3 since 3 tests for each single treatment!!!!
# bifenthrin summary - 5 of the 6 tests showed no difference between single and the various combinations
t.test(bif_single_tenth, bif_double_a_tenth) #no difference
t.test(bif_single_max, bif_double_a_max) # no difference
t.test(bif_single_tenth, bif_double_b_tenth) # no difference
t.test(bif_single_max, bif_double_b_max) # difference
t.test(bif_single_tenth, bif_triple_tenth) # no difference
t.test(bif_single_max, bif_triple_max) # no difference



#metolachlor
#single
met_single_tenth_n <- intersect(which(bb_data.met$group=="met"), which(bb_data.met$rate=="1/10th Max"))
met_single_tenth <- bb_data.met[met_single_tenth_n,]$conc
met_single_max_n <- intersect(which(bb_data.met$group=="met"), which(bb_data.met$rate=="Maximum"))
met_single_max <- bb_data.met[met_single_max_n,]$conc
shapiro.test(met_single_tenth) #reject
shapiro.test(met_single_max) #dont reject

#double_a
met_double_a_tenth_n <- intersect(which(bb_data.met$group=="bifmet"), which(bb_data.met$rate=="1/10th Max"))
met_double_a_tenth <- bb_data.met[met_double_a_tenth_n,]$conc
met_double_a_max_n <- intersect(which(bb_data.met$group=="bifmet"), which(bb_data.met$rate=="Maximum"))
met_double_a_max <- bb_data.met[met_double_a_max_n,]$conc
shapiro.test(met_double_a_tenth) #dont reject
shapiro.test(met_double_a_max) #dont reject

#double_b
met_double_b_tenth_n <- intersect(which(bb_data.met$group=="mettdt"), which(bb_data.met$rate=="1/10th Max"))
met_double_b_tenth <- bb_data.met[met_double_b_tenth_n,]$conc
met_double_b_max_n <- intersect(which(bb_data.met$group=="mettdt"), which(bb_data.met$rate=="Maximum"))
met_double_b_max <- bb_data.met[met_double_b_max_n,]$conc
shapiro.test(met_double_b_tenth) #dont reject
shapiro.test(met_double_b_max) #dont reject

#triple
met_triple_tenth_n <- intersect(which(bb_data.met$group=="bifmettdt"), which(bb_data.met$rate=="1/10th Max"))
met_triple_tenth <- bb_data.met[met_triple_tenth_n,]$conc
met_triple_max_n <- intersect(which(bb_data.met$group=="bifmettdt"), which(bb_data.met$rate=="Maximum"))
met_triple_max <- bb_data.met[met_triple_max_n,]$conc
shapiro.test(met_triple_tenth) #reject
shapiro.test(met_triple_max) #dont reject

### Bonferroni correction of 0.05/3 since 3 tests for each single treatment!!!!
# metolachlor summary - 5 of the 6 tests showed no difference between single and the various combinations
t.test(met_single_tenth, met_double_a_tenth) # no difference
t.test(met_single_max, met_double_a_max) # no difference
t.test(met_single_tenth, met_double_b_tenth) # no difference
t.test(met_single_max, met_double_b_max) # no difference
t.test(met_single_tenth, met_triple_tenth) # difference
t.test(met_single_max, met_triple_max) # no difference


#triadimenon
#single
tdt_single_tenth_n <- intersect(which(bb_data.tdt$group=="tdt"), which(bb_data.tdt$rate=="1/10th Max"))
tdt_single_tenth <- bb_data.tdt[tdt_single_tenth_n,]$conc
tdt_single_max_n <- intersect(which(bb_data.tdt$group=="tdt"), which(bb_data.tdt$rate=="Maximum"))
tdt_single_max <- bb_data.tdt[tdt_single_max_n,]$conc
shapiro.test(tdt_single_tenth) #dont reject
shapiro.test(tdt_single_max) #dont reject

#double_a
tdt_double_a_tenth_n <- intersect(which(bb_data.tdt$group=="biftdt"), which(bb_data.tdt$rate=="1/10th Max"))
tdt_double_a_tenth <- bb_data.tdt[tdt_double_a_tenth_n,]$conc
tdt_double_a_max_n <- intersect(which(bb_data.tdt$group=="biftdt"), which(bb_data.tdt$rate=="Maximum"))
tdt_double_a_max <- bb_data.tdt[tdt_double_a_max_n,]$conc
shapiro.test(tdt_double_a_tenth) #dont reject
shapiro.test(tdt_double_a_max) #dont reject

#double_b
tdt_double_b_tenth_n <- intersect(which(bb_data.tdt$group=="mettdt"), which(bb_data.tdt$rate=="1/10th Max"))
tdt_double_b_tenth <- bb_data.tdt[tdt_double_b_tenth_n,]$conc
tdt_double_b_max_n <- intersect(which(bb_data.tdt$group=="mettdt"), which(bb_data.tdt$rate=="Maximum"))
tdt_double_b_max <- bb_data.tdt[tdt_double_b_max_n,]$conc
shapiro.test(tdt_double_b_tenth) #dont reject
shapiro.test(tdt_double_b_max) #dont reject

#triple
tdt_triple_tenth_n <- intersect(which(bb_data.tdt$group=="bifmettdt"), which(bb_data.tdt$rate=="1/10th Max"))
tdt_triple_tenth <- bb_data.tdt[tdt_triple_tenth_n,]$conc
tdt_triple_max_n <- intersect(which(bb_data.tdt$group=="bifmettdt"), which(bb_data.tdt$rate=="Maximum"))
tdt_triple_max <- bb_data.tdt[tdt_triple_max_n,]$conc
shapiro.test(tdt_triple_tenth) #dont reject
shapiro.test(tdt_triple_max) #dont reject

### Bonferroni correction of 0.05/3 since 3 tests for each single treatment!!!!
# tdtolachlor summary - 5 of the 6 tests showed no difference between single and the various combinations
t.test(tdt_single_tenth, tdt_double_a_tenth) # no difference
t.test(tdt_single_max, tdt_double_a_max) # no difference
t.test(tdt_single_tenth, tdt_double_b_tenth) # no difference
t.test(tdt_single_max, tdt_double_b_max) # no difference
t.test(tdt_single_tenth, tdt_triple_tenth) # no difference
t.test(tdt_single_max, tdt_triple_max) # no difference
