Processing_and_Extraction - Disclaimer
===

This folder includes 4 scripts which need to be run in the following order: 

* 1. CGM_all_patients
* 2. Food_all_patients
* 3. Steps_all_patients 
* 4. Combined data sets

* Script 1-3 can be run interchangeably.

*NOTE*

* Raw data must be obtained as indicated [here](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/README_DATA.md). 
* The exact data and folder structure used in this study is uploaded in the corresponding folder. If this folder is downloaded and saved accordingly to the folder structure indicated in the processing scripts, the exact results can be reproduced. 
* This includes making an additional empty folder called "Data_processed" in the Processing_and_Extraction folder to save the processed data. 
* No seed values are needed for these scripts as no data is generated and also no other sampling processes are applied here.

---

| Files/Folders                 | Description   |
| -----------------             | ------------- |
[Processing_and_Extraction](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/tree/main/Data/Processing_and_Extraction)      |Folder containing all 4 scripts to be run before the Scripts folder - This includes scripts which need to be run in the following order: 1/2/3. CGM_all_patients, Food_all_patients, Steps_all_patients, 4. Combined data sets|
|[Processing_and_Extraction/CGM_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/Processing_and_Extraction/CGM_all_patients.Rmd) |R-Markdown-script to process the raw CGM data and extract all relevant CGM-features|
|[Processing_and_Extraction/Food_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/Processing_and_Extraction/Food_all_patients.Rmd) |R-Markdown-script to process the raw food diaries and extract all relevant dietary-features|
|[Processing_and_Extraction/Steps_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/Processing_and_Extraction/Steps_all_patients.Rmd) |R-Markdown-script to process the raw Physical activity data and extract all relevant Physical Activity-features|
|[Processing_and_Extraction/Combined data sets](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/Processing_and_Extraction/Combined%20data%20sets.Rmd) |R-Markdown-script to combine data sets from all three feature categories and to load baseline data and extract relevant features. Includes full data set before feature selection|
