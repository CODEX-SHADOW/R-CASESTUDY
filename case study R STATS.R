# Load the "mtcars" dataset
data(mtcars)

# Extract the column containing car mileage (mpg)
mpg <- mtcars$mpg

# Calculate the descriptive statistics for the car mileage, including the mean and standard deviation
mean_mpg <- mean(mpg)
sd_mpg <- sd(mpg)

# Visualize the data using a histogram
hist(mpg)

# Fit different probability distributions
library(stats)

# Fit a normal distribution
fit_norm <- fitdist(mpg, "norm")

# Fit a binomial distribution
fit_binom <- fitdist(mpg, "binom")

# Generate a random sample of car mileage data from the fitted normal distribution
sim_mpg <- rnorm(100, fit_norm$mean, fit_norm$sd)

# Calculate the probability of a car having a mileage of 20 mpg
prob_mpg_20 <- density(fit_norm, 20)

# Print the results
print(mean_mpg)
print(sd_mpg)
print(prob_mpg_20)

