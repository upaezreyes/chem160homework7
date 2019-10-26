# calculating population using the Ricker Model
pop = 100
pop.hist = c()
r = 0.05
k = 1000

for (i in 1:110) {
  pop.hist[i] = pop
  delta.pop = pop*exp(r*(1-pop/k))
  pop = pop + delta.pop
}

plot(pop.hist)