# stevens_project

# Week 3 Assignment

For this assignment I explored the cliff swallow plumage patch dataset using ggplot. My goal was to visualize relationships between specific variables to see if there were differences between groups.

First, I made a boxplot with jittered points comparing forehead patch area between male and female birds. Showing the individual data points displays the spread of the data while the boxplot summarizes the overall distribution. I also ran a Welch two-sample t-test to test whether the mean patch area differed between sexes. The results showed that females had significantly larger patch areas than males.

I also created a scatterplot showing colony size versus patch area to see if birds in larger colonies tend to have different patch sizes. The points appear scattered with no obvious relationship, suggesting there is no strong relationship between colony size and patch area.

## Linear Model Analysis

For the linear modeling portion of the assignment, I tested the hypothesis that as forehead patch area increases, forehead brightness also increases.

I fit a univariate linear regression model using patch area as the predictor and forehead brightness as the response. The results showed a weak negative relationship between patch area and brightness, suggesting that the data does not support the hypothesis.

Diagnostic plots were built using the `check_model()` function to evaluate model assumptions. The residuals were mostly scattered around zero with slight curvature, indicating that the assumption of linearity is mostly satisfied but not perfect.

Finally, I created a scatterplot with a fitted regression line to visualize the relationship between patch area and brightness. The plot shows high variability and no strong linear trend.

