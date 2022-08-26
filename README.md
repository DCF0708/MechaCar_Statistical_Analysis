# MechaCar_Statistical_Analysis
**This project demonstrates skills relating to Advanced Statistics and Predictive Machine Learning Multiple Linear Regression.**
**Tech**: Rstudio (R), dplyr

##Use Case:
*"AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called for the review of production data to gather insights that may help the manufacturing team."*
</br> 

## Linear Regression to Predict MPG
The dataset contains MPG test results for 50 prototype MechaCars. These prototypes underwent production using multiple design specifications, resulting in the intended variance of attributes across the population. Within the scope of the Predictive Machine Learning algorithm deployed in this exercise, the specs of each prototype (ex: vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance) get separated as features (variables) with the intent of finding the answers to the following questions:

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?** (see fig. 1)

The following variables returned a p-value less than .05, indicative of a non-random amount of variance:
* **Vehicle Length**: p-value = 2.6e<sup>-12</sup>
* **Ground Clearance**: p-value = 5.21e<sup>-8</sup>

**Is the slope of the linear model considered to be zero? Why or why not?**
- The p-value of the model is significantly less than .05 (5.35e<sup>-11</sup>), low enough to reject the null hypothesis; confirming that the linear model has a slope.  

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
- The high r<sup>2</sup> value and the statistically significant p-value of the model (indicated below in fig. 1) confirm the linear model's effectiveness in identifying causes of variance within the model.
</br>
</br>
fig. 1
![fig. 1](/pictures/1.png)

## Summary Statistics on Suspension Coils
The design specifications for MechaCar suspension coils dictate that pressure variance between suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![](/pictures/2.png)
![](/pictures/3.png)


The average variance of the population is 62.3 psi as a whole, which falls within manufacturer specs. Manufacturing lot 1 has the lowest average delta at 0.98 psi.
Manufacturing lot 2 has an acceptable variance at 7.47 psi.
Manufacturing lot 3 has a variance value of 170.29 psi. Lot 3 accounts for a majority of the rise in average variance value and is considered out of specification by the manufacturer.

## T-Tests on Suspension Coils
Perform t-tests to determine if the manufacturing lots as a group and each manufacturing lot individually are statistically different from the population mean of 1,500 pounds per square inch.

![](./pictures/4.png)
Test 1: with p-value of .06 **the population average is statistically similar to 1500 psi**. 
Lot 1: with p-value of 1 **the Lot 1 average is statistically similar to 1500 psi**.
Lot 2: with p-value of .6 **the Lot 2 average is statistically similar to 1500 psi**.
Lot 3: with p-value of .04 the population is **not** statisitcally similar 1500 psi.

## Study Design: MechaCar vs Competition
What metric or metrics are you going to test?


The main categories of comparison between MechaCar and the competition should be customer focused:
* Dealership pricing
* Number of Features/Functionalities
* MPG Comparison
* Mech. Spec. Comparison


What is the null hypothesis or alternative hypothesis?

* MechaCar does not differ from the competition in these categories in a statistically significant way. 

What statistical test(s)would you use to test the hypothesis? And why?


* Perform linear regression on the following data, conducting t-tests wherever necessary to prove statistical significance:
- Dealership pricing across the competing market.
- Comparision of data on the mechanical specifications/quality of life features on competing models. 
- Compare and contrast MPG data from competing models.
