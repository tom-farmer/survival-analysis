install.packages(c("survival", "survminer", "ranger"))

library("survival")
library("survminer")
library("tidyverse")

url <- "http://socserv.mcmaster.ca/jfox/Books/Companion/data/Rossi.txt"
rossi <- read.table(url, header=TRUE)

# Kaplain-Meier Fit
km_rossi <- survfit(Surv(week, arrest) ~ 1, data = rossi)
plot(km_rossi, ylim=c(0.7, 1), xlab="Weeks", ylab="Proportion Not Rearrested")

# Filter and fit 
rossi %>%
        filter(fin == "yes") %>%
        survfit(Surv(week, arrest) ~ 1, data = .) %>%
        plot(., ylim=c(0.7, 1), xlab="Weeks", ylab="Proportion Not Rearrested")


# Cox Proportional Model Fit
mod.allison <- coxph(Surv(week, arrest) ~ 
                       fin + age + race + wexp + mar + paro + prio,
                     data = rossi)

mod.allison <- coxph(Surv(week, arrest) ~ fin,
                     data = rossi)
mod.allison


plot(survfit(mod.allison), ylim=c(0.7, 1), xlab="Weeks",
     ylab="Proportion Not Rearrested")


sfit <- survfit(mod.allison, conf.int=0.50)
cumhaz.upper <- -log(sfit$upper)
cumhaz.lower <- -log(sfit$lower)
cumhaz <- sfit$cumhaz # same as -log(sfit$surv)

# Cumulative hazard for CPH fit
plot(cumhaz, xlab="weeks ahead", ylab="cumulative hazard")
lines(cumhaz.lower)
lines(cumhaz.upper)



mod.allison$residuals[4]
rossi[4,]


# Fit and plot random survival forest
library(ranger)

stree <- ranger(Surv(week, arrest) ~ fin + age + race + wexp + mar + paro + prio,
                data = rossi,
                num.trees = 1000,
                importance = "permutation",
                splitrule = "extratrees",
                seed = 43)

death_times = stree$unique.death.times
surv_prob = data.frame(stree$survival)
avg_prob = sapply(surv_prob, mean)

plot(death_times, avg_prob, type = "s")

plot(death_times, avg_prob,
     type = "s",
     ylim = c(0,1),
     col = "red", lwd = 2, bty = "n",
     ylab = "Survival Probability", xlab = "Time in Months",
     main = "Survival Tree Model\nAverage Survival Curve")
 



# Combine them all:
km_rossi$surv
mod.allison
