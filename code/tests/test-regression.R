source("../functions/regression-functions.R")

library(testthat)

# multiple regression
reg <- lm(mpg ~ disp + hp, data = mtcars)

# summary of 'reg'
regsum <- summary(reg)

# RSS
expect_that(residual_sum_squares(reg), equals(sum(reg$residuals^2)))

# TSS
expect_that(total_sum_squares(reg),equals(sum((mtcars$mpg - mean(mtcars$mpg))^2)))

# RSE
expect_that(residual_std_error(reg), equals(regsum$sigma))

# R2
expect_that(r_squared(reg), equals(regsum$r.squared))

# F-statistic
expect_that(f_statistic(reg), equals(regsum$fstatistic[1]))
