# Toy example of Monte Carlo
MCtheta.R = function(m){
  theta = numeric(m) # same as theta = [] with m elements
  for (i in 1:m){
    x = rnorm(2,0,1) #random 2 numbers that follow standard normal distribution N(0,1)
    theta[i] = abs(x[1]-x[2]) # we want to estimate the value of theta by calculating |x_1 - x_2|
  }
  mean_theta = mean(theta)
  s.e.theta = sqrt(sum(theta-mean_theta)^2/(m-1))
  return(s.e.theta) #empirically calculates the standard error(or deviation) of theta
}
MCtheta.R(10000)
#Theoretical value = 0

#Toy example of Bootstrap version by estimating the variance of mid-term or final term
Bootstrap.R = function(m){
  theta = numeric(m)
  x = c(0,95,30,70,80) #assume that you collect your test score and your friends'
  for (j in 1:m){
    i = sample(1:5, 5, replace = TRUE) #resampling data from x
    theta[j] = var(x[i]) * 0.8 # empirically calculate theta, the variance 
  }
  var.theta = var(theta)
  return(var.theta)
}
Bootstrap.R(10000)

#Toy example by estimating the variance of mid-term or final term
MCvar.R = function(n,m){
  theta = numeric(m) #same as theta = [] with m elements
  for (i in 1:m){
    x = rnorm(n,73,sqrt(285)) #replace σ^2 with sample variance = 285
    theta[i] = var(x) * (n-1)/n
  }
  var_theta = var(theta)
  return(var_theta)
}
MCvar.R(300,10000)

#Toy example of Bootstrap version by estimating the variance of mid-term or final term
Bootstrap_var.R = function(m){
  theta = numeric(m)
  x = c(70,45,35,60,85,55,55) #assume that you collect your test score and your friends' but those scores are centered
  for (j in 1:m){
    i = sample(1:7, 7, replace = TRUE) #resampling data from x
    theta[j] = var(x[i]) * 6/7 
  }
  var_theta = var(theta)
  return(var_theta)
}
est_var = Bootstrap_var.R(100000); est_var
sqrt(est_var)