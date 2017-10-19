require(yuima)##Yuima Package to solve SDEs
m1=setModel(drift="0",diffusion="1",state.var="x",time.var="t",solve.var="x",xinit=1)
#Here model m1 has drift 0, diffusion = 1 becaause dW=dS (Hence drift=coeffof time=0 and diffusion=coeff of state var=1) 
#This is plotted with an initial value of X as 100 
X=simulate(m1) #Simulate the Brownian Motion Model
plot(X,main="Code 1 Video 1") 
#plot the simulation
d1=X@data@original.data##taking only the data out of X, because just X will have a lot of things included
d1##printing the value of d1

grid=setSampling(Terminal=1,n=1000) ##Here, we take 1000 samples with terminal value 1 Hence delta(t) = 1/1000
X=simulate(m1,sampling=grid)##Simulate X with the grid sampling
plot(X,main="Normal Stock SDE Following Brownian Motion")##plot the simulation