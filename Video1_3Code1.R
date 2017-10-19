##131036 Prem Shah
require(yuima) #yuima package required
m1=setModel(drift="mu*s",diffusion="sigma*s",state.var="s",time.var="t",solve.var="s",xinit=100) 
#model set as in previous code
simnum=100	#variable fornumber of simulations to be carried out in pdf
dist=c(0.31,0.52,0.6,0.7,0.95,0.98) #the percentages of pdf
newsim=function(i){simulate(m1,true.param=list(mu=0.1,sigma=0.2))@data@original.data} 
#function made for the 100 simualtions to be executed
newsim(1)	#example first simulation
sim=sapply(1:simnum,function(x)newsim(x)) #simulation carried out 100 times
m2=t(sim)	#transpose carried out see video 5th minute for more
m2 #display m2
apply(m2,2,mean) #m2 is function 2 means on columns(1 is on rows and 1,2 is both) third is the fnction to be carried out
tile=sapply(1:100,function(x)quantile(m2[,x], dist))
tile
