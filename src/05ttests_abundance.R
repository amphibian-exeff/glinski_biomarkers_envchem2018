dim(control_data)
dim(bif_data)
n <- length(rownames(bif_data))

bif_pvalues <- numeric(n)
bif_t <- numeric(n)
for(i in 1:n){
  ith_test <- t.test(control_data[i,], bif_data[i,])
  bif_pvalues[i] <- ith_test$p.value
  bif_t[i] <- ith_test$statistic
  if(i %% 100 == 0){print(paste(i,"/",n))}
}
#plot p values
pts = seq(range(bif_pvalues)[1],range(bif_pvalues)[2],length=100)
lines(density(bif_pvalues))

# plot t statistics
pts = seq(range(bif_pvalues)[1],range(bif_pvalues)[2],length=100)
plot(pts,dt(pts,df=8),col='red',type='l')
lines(density(bif_t))