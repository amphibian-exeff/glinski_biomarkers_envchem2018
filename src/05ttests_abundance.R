library(dplyr)

dim(control_data)
dim(bif_data)
n <- length(rownames(bif_data))

bif_pvalues <- numeric(n)
bif_t <- numeric(n)
for(i in 1:n){
  ith_test <- t.test(control_data[i,], bif_data[i,])
  bif_pvalues[i] <- ith_test$p.value
  bif_t[i] <- ith_test$statistic
  if(i %% 1000 == 0){print(paste(i,"/",n))}
}
bif_sigs <- length(bif_pvalues[which(bif_pvalues < 0.05)])
print(paste(bif_sigs,"/",n))
#plot p values
pts = seq(range(bif_pvalues)[1],range(bif_pvalues)[2],length=100)
plot(density(bif_pvalues))
plot(density(bif_t))

# plot t statistics
pts = seq(range(bif_pvalues)[1],range(bif_pvalues)[2],length=100)
plot(pts,dt(pts,df=8),col='red',type='l')
lines(density(bif_t))