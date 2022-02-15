# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Below are the results of MultipleLinear Regression performed on the dataset and by looking at the Pr(>|t|) values for each variable - vehicle_length, ground_clearance (as well as intercept) shows non-random effect

---------------------------------------------------------
Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

--------------------------------------------------------------

### Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is not zero, as the p-value : 5.35e-11 of the dataset is lesser than the significance level(0.05).

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The Linear model predicts mgp of MechaCar effectively, as the R-squared value of the dataset is 0.714, it means Linear model is 71.4% effective.


## Summary Statistics on Suspension Coils

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

* Total Lots - The curent manufacturing data meets the design specification for all manufacturing lots in total as the Variance is 62.29.

* Individual lots - Lot1 and Lot2 meets the requiremnt as variance of Lot1 and Lot2 are 0.98 and 2.73 respectively, but Lot3 has much higher variance of 170.29 which exceeds desgin specification requirements.

## T-Tests on Suspension Coils

### Briefly summarize your interp retation and findings for the t-test results.

* PSI across all manufacturing lots 
    * p-value of all manufacturing lot is 0.06028 and it is above significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis. 
    * Mean of PSI across all manufacturing lots is 1498.78 and it is not statistically different from the population mean of 1,500

* PSI across each manufacturing lots
   	p-value 	Mean 	Findings from P-value 	Findings from Mean
Lot1	1	1500	Do not have sufficient evidence to reject the null hypothesis as it is above significance level	Mean of PSI  manufacturing lot1 is not statistically different from the population mean of 1,500
Lot2	0.6072	1500.2	Do not have sufficient evidence to reject the null hypothesis as it is above significance level	Mean of PSI  manufacturing lot2 is not statistically different from the population mean of 1,500
Lot3 	0.04168	1496.14	As p-value is lower than 0.05 significance level , so we reject the null hypothesis.	The mean of PSI  manufacturing lot3 is slightly different compared to lot1 and lot2, but as there is no big difference so we conclude it is not statistically different from the population mean of 1,500

## Study Design: MechaCar vs Competition

### What metric or metrics are you going to test?
During the pandemic, many people bought family cars like SUV or mini van to travel acrross the country. So I like to perform statistical study on cost of family cars, number of seats,fuel type, Model, Year and miles driven to see which vehical is more affordable for a common man, and this could help MechaCar in attracting buyers to buy family size cars.


### What is the null hypothesis or alternative hypothesis?
* H0 - There is no significant difference in buying,number of family size car in MechaCar and competitor

* Ha - There is a significant difference in buying, number of family size car in MechaCar and competitor

### What statistical test would you use to test the hypothesis? And why?
I could like to test my hypothesis using Multiple Linear Regression as it uses multiple independent variables to determine if there is a significant relationship with the dependent variable. 

### What data is needed to run the statistical test?
 
 We need dataset that contains different family size car models ,number of seats, fuel type, Year of makeand total miles driven.
 