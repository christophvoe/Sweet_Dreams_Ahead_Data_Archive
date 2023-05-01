DATA ARCHIVE - Sweet_Dreams_Ahead_Master_thesis_Code_ONLY
===

*Background and Aims:* Continuous glucose monitoring (CGM) is known to prevent adverse events such as nocturnal hypoglycemia (NH) in diabetes patients. However, due to its high cost, it is not feasible to provide CGM for the majority of Type 2 diabetes (T2D) patients, which implies a need for additional features to CGM that can help predict NH. While lifestyle factors such as diet and activity level are known to be related to T2D prevalence, the extent to which these factors can accurately predict NH has not yet been explored. To address this gap, this study developed predictive models for NH in T2D patients and compared the predictive performance of two feature conditions: one with CGM features included (Full data condition) and one without (Lifestyle condition)

---
*Study Information:*
Data for the present study originates from the “Diabetes and Lifestyle Cohort Twente” (DIALECT). DIALECT is an observational cohort study performed in the Ziekenhuis Groep Twente (Netherlands) and is designed to investigate the effect of lifestyle and dietary habits as well as pharmacological treatment on outcomes in patients with T2D. The study included adult male and female patients with T2D (N=76) who were monitored with a CGM system, a physical activity tracker, and kept dietary entries for up to 14 days.

---

Due to the sensitive nature of the patient data, it cannot be made public. For more information about the study, please refer to the local institutional review boards (FERB, Filed number: 22-1863) and the Netherlands Trial Register (NTR5855). The study was performed according to the declaration of Helsinki, and written informed consent was obtained from all patients before participation.

---
*How to obtain the data:*

To obtain access to the data, interested parties must contact the Ziekenhuis Groep Twente directly and obtain clearance for data access. The data is stored as part of the DIALECT study and is organized on a per-patient basis, with each patient having their own individual folder. 

*The folder contains:*
* Historical CGM data, stored in a txt file
* Physical activity data, stored in a csv file
* Food diary, stored in a csv file.

*Additional folder:*
* Baseline patient characteristics and medication information, stored in a sav file.

*Monitoring:*
* Blood glucose measurements were taken every 15 minutes using the Abbott FreeStyle Libre
* Physical activity (amount of steps) was measured every minute using a non-invasive Fitbit wristband
* Food diary were conducted by patients including details of the time, type, and quantity of food intake.

If you obtained the data in the indicated way, data needs to be stored according to the information provided in the scripts. If the data is successfully stored all analyses can be reproduced.

---

*Process:* First, data processing, feature extraction, and feature selection have been applied. 
Second, multiple ML algorithms have been trained and optimized for two subsets of features with one including (Full data condition) and one excluding CGM (Lifestyle condition) to build population models.
Third, the predictive performance between ML algorithms and also between the two data conditions have been compared. 
Last, the results have been critically evaluated to assess their impact on the existing literature and their contribution to the diabetes management of T2D patients.

---

For clarification some information about the corresponding scripts is provided.

---

| Files/Folders                 | Description   |
| -----------------             | ------------- |
|[Processing_and_Extraction](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/tree/main/Processing_and_Extraction)      |Folder containing all 4 scripts to be run before the Analyses folder - This includes scripts which need to be run in the following order: 1/2/3. CGM_all_patients, Food_all_patients, Steps_all_patients, 4. Combined data sets|
|[Processing_and_Extraction/CGM_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Processing_and_Extraction/CGM_all_patients.Rmd) |R-Markdown-script to process the raw CGM data and extract all relevant CGM-features|
|[Processing_and_Extraction/Food_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Processing_and_Extraction/Food_all_patients.Rmd) |R-Markdown-script to process the raw food diaries and extract all relevant dietary-features|
|[Processing_and_Extraction/Steps_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Processing_and_Extraction/Steps_all_patients.Rmd) |R-Markdown-script to process the raw Physical activity data and extract all relevant Physical Activity-features|
|[Processing_and_Extraction/Combined data sets](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Processing_and_Extraction/Combined%20data%20sets.Rmd) |R-Markdown-script to combine data sets from all three feature categories and to load baseline data and extract relevant features. Includes full data set before feature selection|
|[Analyses](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/tree/main/Analyses)      |Folder containing all scripts to be run after the pre-processing - This includes: Subfolder with scripts of helper functions, and 4 individual scripts which need to be run in the following order: 1. Feature Selection, 2/3. Model_buildingFull_data_condition(Lifestyle_condition), 4. Tables_and_Figures|
|[Analyses/Functions](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/tree/main/Analyses/Functions) |Folder containing 4 R scripts. These helper function are needed to run the analyses and get the intended evaluation metrics|
|[Analyses/Feature Selection](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Feature%20Selection.Rmd) |R-Markdown-script that needs to be executed after Processing, which performs feature selection and contains final data sets used for model training|
|[Analyses/Model Building - FULL](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Model_building_Full_data_condition.Rmd) |R-Markdown-script to train models in the Full data condition. Object with final evaluation metrics is saved and list with probabilities of NH for each observation across MLs|
|[Analyses/Model Building - LIFE](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Model_building_Lifestyle_condition.Rmd) |R-Markdown-script to train models in the Lifestyle condition. Object with final evaluation metrics is saved and list with probabilities of NH for each observation across MLs|
|[Analyses/Tables and Figures](https://github.com/christophvoe/Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes/blob/main/Analyses/Tables_and_Figures.Rmd) |R-Markdown-script that needs to be executed after model training. Final estimates are caluclated and tables, figures and additional resources are created. Includes session_info as it is the last script to be executed|
---------


For any help with the files or questions about contact persons to obtain access to the data, please contact Christoph Völtzke (voeltzke.christoph@gmail.com). 

---
License
---
The repository is licensed under the `apache-2.0` license.