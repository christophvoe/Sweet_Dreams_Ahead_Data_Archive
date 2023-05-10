Analyses - Disclaimer
===

This folder contains all scripts to be run after the pre-processing.
* Subfolder with scripts of helper functions, and 4 individual scripts which need to be run in the following order:
  * 1. Feature Selection
  * 2/3. Model_buildingFull_data_condition(Lifestyle_condition)
  * 4. Tables_and_Figures|

The output used in this study is analysed and evaluated in the Scripts [Feature Selection](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Feature%20Selection.Rmd) and [Tables and Figures](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Tables_and_Figures.Rmd). The two model building scripts solely produce the estimates and are not used to further evaluate them.

---

| Files/Folders                 | Description   |
| -----------------             | ------------- |
|[Analyses/Functions](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/tree/main/Analyses/Functions) |Folder containing 4 R scripts. These helper function are needed to run the analyses and get the intended evaluation metrics|
|[Analyses/Feature Selection](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Feature%20Selection.Rmd) |R-Markdown-script that needs to be executed after Processing, which performs feature selection and contains final data sets used for model training|
|[Analyses/Model Building - FULL](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Model_building_Full_data_condition.Rmd) |R-Markdown-script to train models in the Full data condition. Object with final evaluation metrics is saved and list with probabilities of NH for each observation across MLs|
|[Analyses/Model Building - LIFE](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Model_building_Lifestyle_condition.Rmd) |R-Markdown-script to train models in the Lifestyle condition. Object with final evaluation metrics is saved and list with probabilities of NH for each observation across MLs|
|[Analyses/Tables and Figures](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Tables_and_Figures.Rmd) |R-Markdown-script that needs to be executed after model training. Final estimates are caluclated and tables, figures and additional resources are created. Includes session_info as it is the last script to be executed|