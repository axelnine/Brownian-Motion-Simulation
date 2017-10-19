require(yuima)##Yuima Package Required
m1=setModel(drift="mu*s",diffusion="sigma*s",state.var="s",time.var="t",solve.var="s",xinit=100)
#Here model m1 has drift mu*s, diffusion = sigma*s  
#This is plotted with an initial value of X as 100 
X=simulate(m1,true.param=list(mu=0.1,sigma=0.2))
plot(X,main="Geometric Brownian Motion for SDE 131036")
##plot the simulation
