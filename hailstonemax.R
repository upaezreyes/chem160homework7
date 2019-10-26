seqlen= c()
seqmax= c()

for (i in 1:1000) {
  n = i 
  counter = 1
  maxval = 1000 
  while (n !=1) {
    cat(n,"\n")
    if (n > maxval) {
     maxval = n 
    }
    if (n%%2==0) {
      n = n/2
    } else {
      n = (n*3)+1 
      counter = counter + 1
    }
  }
  
  seqlen = c(seqlen,counter) 
  seqmax = c(seqmax,maxval)
}

png("seqlen.png")
plot(seqlen)
dev.off()

png("seqmax.png")
plot(seqmax)
dev.off()

