# Causal Inference and Correlation Analysis

## Correlation Heatmap Matrix 

### Explanation

The heatmap in Figure 1.1 below was created to show the correlation of the variables that influence the different KPI's that were created. Correlation measures the statistical relationships, and indicates how strong they are related and if they tend to change eachother. The heatmap was created by using a CSV version of the CSTADS 2021-22 dataset, providing it in Python, converting the categorical columns into numerical using Pandas, and making a heatmap using Pearson. 

[Reminder of KPI's](README.md)

In Figure 1.1, a color scale is provided to indicate the strength and direction of the correlations. Green on the color scale means there is a positive correlation, so as one variable increases the other will increase too. The darker the green, the stronger positive correlation it has. Red on the color scale means there is a negative correlation, so when one increases the other decreases. As well, the darker the red means stonger negative correlation. Also, white means that there is little to no correlation (close to zero). The value of 1 on the heatmap means there is perfect correlation, which is shown on the green diagonal line going from top left to bottom right. This makes sense as it represents the correlation of each variable in the dataset with itself, so it will always be 1.

#### Strong Positive Correlations

With the darker green in Figure 1.1, again it shows the variables that would increase/decrease with eachother. One correlation that was noted was "Will you use in the next 12 mo? (VAP_10)" and the other vaping variables, like VAP_20 and VAP_30, etc. The strength of this correlation makes sense as students who are intending to vape will most likely be engaging in the related activities. Another correlation to note is the "Where do you usually get your vaping device (VAP_50a)" and "Where do you get e-liquid/pods (VAP_50b)". With their dataset names there is already some correlation stated, but the heatmap proves this and shows a strong positive correlation that basically means that students usually get their vaping devices and liquids from the same places. To note, GRADE, out of all the demographic variables, has some correlation with the vaping variables, ranging from 0.13 to 0.23, which does support KPI #1, just not as significantly as expected. 

 #### Weak Correlations

 The closer to white and pure white correlations on the heatmap in Figure 1.1 show the weaker correlations between the variables in the CSTADS dataset. This means that they arent as strongly associated with eachother, such as "GRADE" and "How long lived in Canada (DVRES)" with a correlation of 0.00, showing no correlation whatsoever, which makes sense in logical terms as they do not relate to eachother. The heatmap provides implication that for the majority of correlation between demographics, it is little to none. As well, the negative correlations shown on the heatmap do provide some insight into the demographics, but do not really have anything to do with the KPI's. 
 

### Figure 1.1: Correlation Heatmap Matrix
![2D0E8BCB-9DF4-4C38-A1B8-05B12653E857](https://github.com/user-attachments/assets/09adefeb-ed24-4c4e-92f4-112f08be3467)


## Causal Inference Model

### Explanation

Figure 1.1 of the Correlation Heatmap is important, and does provide insight into correlation between variables, but, it does not prove causation. As well there can also be underlying factors influencing these relationships. This is why it is also important to understand causation by creating a Causal Inference Model (which is provided below in Figure 1.2), and potential confounders. 

Figure 1.2 was created by providing Python with the CSV version of the CSTADS 2021-2022 dataset, converting the categorical columns to numerical, then converting to NumPy array, and fitting it to the ICALiNGAM model to visualize the causal relationships. 

#### Assessment

To start, "SEQID" is shown as an outlier in Figure 1.2, as it is only the student ID number, and not a variable to be factored. The overall potential confounders are shown to be "Province(PROVID)", "GRADE", and "Gender(DVGENDER)", with smaller underlying potential confounders "Rural or Urban (DVURBAN)" and "Race/Ethnicity(DVDESCRIBE)". These potential confounders all have one thing in common, they are all demographics. This proves that demographics do have influence on the vaping variables, which directly support the KPI's. 

### Figure 1.2: Causal Model
![D25F8B6D-D58A-497E-9E01-23CBA7AF90B7](https://github.com/user-attachments/assets/fac38b46-019e-4872-b03a-ddf3b32412e0)

