#bifenthrin
#View(bb_data.bif)
summary(bb_data.bif)
lm.bif <- lm(conc ~ met + tdt, data=bb_data.bif)
summary(lm.bif)

lm.bif2 <- lm(conc ~ met + tdt + rate, data=bb_data.bif)
summary(lm.bif2)

lm.bif3 <- lm(conc ~ met + tdt + rate + frog.weight, data=bb_data.bif)
summary(lm.bif3)

lm.bif4 <- lm(conc ~ (met + tdt)^2 + rate + frog.weight, data=bb_data.bif)
summary(lm.bif4)

step.bif4 <- stepAIC(lm.bif4, direction="both", trace=TRUE)
summary(step.bif4)
step.bif4
step.bif4$anova

#metolachlor
summary(bb_data.met)
lm.met <- lm(conc ~ bif + tdt, data=bb_data.met)
summary(lm.met)

lm.met2 <- lm(conc ~ bif + tdt + rate, data=bb_data.met)
summary(lm.met2)

lm.met3 <- lm(conc ~ bif + tdt + rate + frog.weight, data=bb_data.met)
summary(lm.met3)

lm.met4 <- lm(conc ~ (bif + tdt)^2 + rate + frog.weight, data=bb_data.met)
summary(lm.met4)

step.met4 <- stepAIC(lm.met4, direction="both", trace=TRUE)
summary(step.met4)
step.met4
step.met4$anova

#triadimefon (total)
summary(bb_data.tdt)
lm.tdt <- lm(conc ~ bif + met, data=bb_data.tdt)
summary(lm.tdt)

lm.tdt2 <- lm(conc ~ bif + met + rate, data=bb_data.tdt)
summary(lm.tdt2)

lm.tdt3 <- lm(conc ~ bif + met + rate + frog.weight, data=bb_data.tdt)
summary(lm.tdt3)

lm.tdt4 <- lm(conc ~ (bif + met)^2 + rate + frog.weight, data=bb_data.tdt)
summary(lm.tdt4)

step.tdt4 <- stepAIC(lm.tdt4, direction="both", trace=TRUE)
summary(step.tdt4)
step.tdt4
step.tdt4$anova

