Processing_and_Extraction - Disclaimer
===

This folder contains all 4 scripts to be run before the Analyses folder 
* This includes scripts which need to be run in the following order: 
*1/2/3. CGM_all_patients, Food_all_patients, Steps_all_patients
* 4. Combined data sets

Raw data must be obtained as indicated [here]. The exact data and folder structure used in this study is uploaded in the correponding folder. If this folder is downloaded and saved accordingly to the folder structure indicated in the processing scripts, the exact results can be replicated.

---

| Files/Folders                 | Description   |
| -----------------             | ------------- |
[Processing_and_Extraction](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/tree/main/Processing_and_Extraction)      |Folder containing all 4 scripts to be run before the Analyses folder - This includes scripts which need to be run in the following order: 1/2/3. CGM_all_patients, Food_all_patients, Steps_all_patients, 4. Combined data sets|
|[Processing_and_Extraction/CGM_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Processing_and_Extraction/CGM_all_patients.Rmd) |R-Markdown-script to process the raw CGM data and extract all relevant CGM-features|
|[Processing_and_Extraction/Food_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Processing_and_Extraction/Food_all_patients.Rmd) |R-Markdown-script to process the raw food diaries and extract all relevant dietary-features|
|[Processing_and_Extraction/Steps_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Processing_and_Extraction/Steps_all_patients.Rmd) |R-Markdown-script to process the raw Physical activity data and extract all relevant Physical Activity-features|
|[Processing_and_Extraction/Combined data sets](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Processing_and_Extraction/Combined%20data%20sets.Rmd) |R-Markdown-script to combine data sets from all three feature categories and to load baseline data and extract relevant features. Includes full data set before feature selection|