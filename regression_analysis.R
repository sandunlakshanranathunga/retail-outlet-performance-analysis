df <- read.csv("~//Downloads//retail_outlets_clean.csv")
str(df)
summary(df)

# DV: Monthly_Revenue (chosen in Python EDA)
# IV: Marketing_Spend (strongest correlation, r = 0.91, and logically drives revenue via customer acquisition)
model <- lm(Monthly_Revenue ~ Marketing_Spend, data = df)
summary(model)

# Intercept: predicted Monthly_Revenue when Marketing_Spend = 0
# Slope: additional Monthly_Revenue per $1 increase in Marketing_Spend
# R-squared: proportion of variance in Monthly_Revenue explained by Marketing_Spend
# p-value (Pr(>|t|)) on Marketing_Spend: < 0.05 => statistically significant relationship


plot(df$Marketing_Spend, df$Monthly_Revenue,
     main = "Marketing Spend vs Monthly Revenue",
     xlab = "Marketing Spend", ylab = "Monthly Revenue",
     pch = 19, col = "steelblue")
abline(model, col = "red", lwd = 2)

par(mfrow = c(2,2))
plot(model)   # residuals vs fitted, Q-Q, scale-location, residuals vs leverage
par(mfrow = c(1,1))