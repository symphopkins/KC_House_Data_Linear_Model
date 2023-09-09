#Question 1
library(readr)
kc_house_data <- read_csv("Documents/Maryville University/DSCI_502/kc_house_data.csv")
View(kc_house_data)

#Question 2
lm_results_1 <- lm(price ~ bedrooms + bathrooms + sqft_living, data = kc_house_data)
summary(lm_results_1)

#Question 3
lm_results_2 <- lm(price ~ (bedrooms + bathrooms + sqft_living)^3, data = kc_house_data)
summary(lm_results_2)

#Question 4
lm_results_3 <- lm(price ~ bedrooms + bathrooms + sqft_living + waterfront + grade, data = kc_house_data)
summary(lm_results_3)

#Question 5
lm_results_4 <- lm(price ~ . -1 -id -date -zipcode -lat -long, data= kc_house_data)
summary(lm_results_4)

#Question 6
lm_results_5 <- lm(price ~ bedrooms + bathrooms + sqft_living + sqft_lot + floors + waterfront + view + condition + grade, data = kc_house_data)
summary(lm_results_5)

new_house <- data.frame(bedrooms = 4,
                        bathrooms = 2,
                        sqft_living = 2560,
                        sqft_lot = 7650,
                        floors = 1.5,
                        waterfront = 1,
                        view = 3,
                        condition = 5,
                        grade = 10)
predict(lm_results_5, newdata = new_house, interval = "predict")












