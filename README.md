# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Below are the results of multiple linear regression performed on the dataset and by looking at the Pr(>|t|) values for each variable - vehicle_length, ground_clearance (as well as intercept) shows non-random effect

![1](https://user-images.githubusercontent.com/92698873/154154300-f54ea920-35ca-4231-80ad-9ad56026a37b.png)

### Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is not zero, as the p-value is 5.35e-11 of the dataset is lesser than the significance level(0.05).

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The Linear model predicts mgp of MechaCar effectively, as the R-squared value of the dataset is 0.714, which means the Linear model is 71.4% effective.

## Summary Statistics on Suspension Coils

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

* Total Lots - The current manufacturing data meets the design specification for all manufacturing lots in total as the Variance is 62.29.

![2](https://user-images.githubusercontent.com/92698873/154154948-cee74787-19a5-4609-bdea-37ba45a33324.png)

* Individual lots - Lot1 and Lot2 meets the requirement as the variance of Lot1 and Lot2 are 0.98 and 2.73 respectively, but Lot3 has a much higher variance of 170.29 which exceeds design specification requirements.

![3](https://user-images.githubusercontent.com/92698873/154154974-da6b890b-1aa8-4ac2-a873-ede9499de863.png)

## T-Tests on Suspension Coils

### Briefly summarize your interp retation and findings for the t-test results.

* PSI across all manufacturing lots 
    * p-value of all manufacturing lots is 0.06028 and it is above significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis. 
    * Mean of PSI across all manufacturing lots is 1498.78 and it is not statistically different from the population mean of 1,500
![lots](https://user-images.githubusercontent.com/92698873/154158229-7c5b398f-a7a3-48eb-9d7f-490acc558093.png)

* PSI across each manufacturing lots - Below are the findings of each lots -
![lot1](https://user-images.githubusercontent.com/92698873/154158299-2a70ffec-dff2-43d9-b653-198d68664132.png)
![lot2](https://user-images.githubusercontent.com/92698873/154158306-f11c6ff6-7511-4d60-a2eb-f758b7f95854.png)
![lot3](https://user-images.githubusercontent.com/92698873/154158320-0a9e8bce-e1fb-4a72-87f0-2511e172d1f5.png)

![4](https://user-images.githubusercontent.com/92698873/154156441-e1de3a3f-fa8b-45de-a982-93b86b6fec8e.png)

## Study Design: MechaCar vs Competition

### What metric or metrics are you going to test?
During the pandemic, many people bought family cars like SUVs or minivans to travel across the country. So I like to perform a statistical study on the cost of family cars, the number of seats, fuel type, Model, Year, and miles driven to see which vehicle is more affordable for a common man, and this could help MechaCar in attracting buyers to buy family size cars.


### What is the null hypothesis or alternative hypothesis?
* H0 - There is no significant difference in selling of family size car in MechaCar and competitor

* Ha - There is a significant difference in selling of family size car in MechaCar and competitor

### What statistical test would you use to test the hypothesis? And why?
I could like to test my hypothesis using Multiple Linear Regression as it uses multiple independent variables to determine if there is a significant relationship with the dependent variable. 

### What data is needed to run the statistical test?
 
 We need a dataset that contains different family-size car models, the number of seats, fuel type, Year of make, and total miles driven.
