# This function should take the "lm" object as input, and the output is the $RSS$. 
residual_sum_squares <- function(lm){
  sum(lm$residuals^2)
}

# This function takes the "lm" object as input, and it returns the $TSS$. 
total_sum_squares <- function(lm){
  sum((lm$residuals+lm$fitted.values - mean(lm$residuals+lm$fitted.values))^2)
}

# This function takes the "lm" object as input, and it returns the $R^2$. 
r_squared <- function(lm){
  1-(sum(lm$residuals^2))/(sum((lm$residuals+lm$fitted.values - mean(lm$residuals+lm$fitted.values))^2))
}

# This function takes the "lm" object as input, and it returns the $F$-statistic.
f_statistic <- function(lm){
(((sum((lm$residuals+lm$fitted.values - mean(lm$residuals+lm$fitted.values))^2)-sum(lm$residuals^2)))/length(lm$coefficients-1))/(sum(lm$residuals^2)/(length(lm$residuals)-length(lm$coefficients)))
}

#This function takes the "lm" object as input, and it returns the $RSE$. 
residual_std_error <- function(lm){
  sqrt(sum(lm$residuals^2)/(length(lm$residuals)-length(lm$coefficients)))
}
