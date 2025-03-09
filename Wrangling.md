# Wrangling Activities

## Overview of documented wrangling activities

Through my own struggles as well as the help of Professor David Mattie, the CTSADS dataset was cleaned and filtered to allow for easy use and proper visualization creation in Tableau desktop. The first step was to narrow down to a single dataset, being the Canadian Student Tobacco, Alcohol, and Drugs Survey (CSTADS) from 2021-2022. Following Prof. David Matties creation of the CTSADS intermediate hyper file, I then ran the file back through Tableau prep to continue cleaning and filtering, and fix any inconsistencies. 

### List of wrangling activities
* Renamed fields to be easily readible by viewer
* Changed 'Province' to a geological location
* Changed 'Grade' to a dimension so that the grade numbers would not be averaged
* Renamed values in 'VAP_050a', 'VAP_050b', and 'VAP_060' from numbers to their descriptions based on the CSTADS 2021-22 user guide
* Kept all 60,000 plus rows to allow for proper data analyzation
* Changed SEQID from measure to dimension to keep numbers seperate instead of averaged. Also used measuring by count for visualizations
