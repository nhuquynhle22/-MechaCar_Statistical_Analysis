# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Summary

In this analysis, we examine a dataset of miles per gallon (MPG) test results for 50 different MechaCar prototypes. This multiple linear regression model explores how well five independent variables predict MPG. The five independent variables are vehicle length, vehicle weight, spoiler angle, ground clearance, and whether or not the vehicle has all-wheel drive.

Our null hypothesis is that there is no relation between the independent variables and MPG.

### Key Questions

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Is the slope of the linear model considered to be zero? Why or why not?

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

![Deliverable 1](https://user-images.githubusercontent.com/89143725/145334647-3bb5a90c-a57c-4cdc-b28c-25b0e0129f97.png)

### Conclusions

Overall, our multiple regression model is somewhat effective at predicting the miles per gallon of MechaCar prototypes. With an r-squared value of 0.7149, our model explains a little over 70% of MPG. However, our intercept value is very low at 5.08e-08, thus statistically significant at even extreme significance levels. This means there are other variables and factors that contribute to the variation in MPG that have not been included in our model. These variables may or may not be within our dataset and may still need to be collected or observed.

The p-value for the model is 5.35e-11, or 0.0000000000535. If we assume a confidence level of 95% and thus a significance level of 0.05, the model's p-value is well below that number. Thus there is sufficient evidence to reject the null hypothesis, and that the slope of our linear model is not zero.

According to our data, at any common significance level, vehicle length and ground clearance are statistically significant. This means that they are unlikely to provide random amounts of variance to the linear model, or said in a way that more closely resembles the way humans speak, that vehicle length and ground clearance have a significant impact on MPG. With a p-value of 0.0776, vehicle weight is only significant at 0.10. With respective p-values of 0.3069 and 0.1852, spoiler angle and AWD are not significant at any common significance level.

## Summary Statistics on Suspension Coils

### Key Question

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). Does the current manufacturing data meet this design specification for all manufacturing lots in total, and each lot individually? Why or why not? 

### Conclusions

Total Summary:
![Total sum](https://user-images.githubusercontent.com/89143725/145334782-f5309a88-3c3c-4779-8f18-9b62263a2f29.png)
In the Total Summary, the variance of the suspension coils is 62.294 which meets the requirements that it cannot exceed 100 pounds per square inch.

Individual Lot Summary:
![Lot sum](https://user-images.githubusercontent.com/89143725/145334785-4c1c8a4b-d8e3-4e7d-8900-0c0acb06579d.png)
In the Individual Lot Summary, Lots 1 and 2, with variances of 0.97959 and 7.46939, respectively, meet the requirement. Lot 3, however, with a variance of 170.28612, fails the requirement drastically. It is about 70% higher than the design specification's 100 PSI variance requirement.


## T-Tests on Suspension Coils

In this exercise, we use R to perform t-tests to determine if all manufacturing lots--and each lot individually--are statistically different from the population mean of 1,500 pounds per square inch.

The null hypothesis for each of these four tests is that the sample mean is not different from the population mean of 1,500 PSI. 

![Lot sum](https://user-images.githubusercontent.com/89143725/145337680-895c1a30-adc3-4724-8a51-b5736eebe1c6.png)
![Total sum](https://user-images.githubusercontent.com/89143725/145337686-45e939ac-2950-415d-872f-b85e41953d28.png)

Analysis Summary: 
- For the T-test of all lots together against the mean PSI of the population, the p-value is 0.06028, at a 0.05 significance level, the mean of 1,498.78 is not statistically different from the population mean of 1500, and we (narrowly) cannot reject the null hypothesis.

- For the T-test of the first lot, the p-value is exactly 1, the sample mean of 1,500 is exactly equal to the population mean, thus we clearly cannot reject the null hypothesis at any significance level.

- For the T-test of the second lot, the p-value is 0.6072, the sample mean of 1,500.2 is not statistically different from the population mean and we cannot reject the null hypothesis at any significance level.

- For the T-test of the third lot, the p-value is 0.04168, at a 0.05 significance level, the mean of 1,496.14 is indeed statistically different from the population mean and we can reject the null hypothesis at a 0.05 significance level.

## Study Design: MechaCar vs Competition
To desing a study on how the MechaCar performs against the competition, we must first know what we need to collect data on MechaCar and its comparable models across several different manufacturers over the past few years. The data includes, the competitor's comparable models, and some other factors that are discussed below:

Metrics  

Collecting data for comparable models across all major manufacturers for past 5 years for the following metrics:
  
- Current Price: Dependent Variable
- Engine Type: Independent Variable
- Resale Value: Independent Variable
- Maintenance Cost: Independent Variable
- MPG (Gasoline Efficiency): Independent Variable

Hypothesis:  

Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.  
Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre.  

Statistical Tests  

A multiple linear regression would be used to determine the factors that have the highest correlation/predictability with the list selling price (dependent variable); which combination has the greatest impact on price.
