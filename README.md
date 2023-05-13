RESEARCH ARCHIVE - Sweet_Dreams_Ahead_Machine_Learning_Models_for_Nocturnal_Hypoglycemia_Prediction_in_Type_2_Diabetes
===

# Study Information

*Background and Aims:* 

Continuous glucose monitoring (CGM) is known to prevent adverse events such as nocturnal hypoglycemia (NH) in diabetes patients. However, due to its high cost, it is not feasible to provide CGM for the majority of Type 2 diabetes (T2D) patients, which implies a need for additional features to CGM that can help predict NH. While lifestyle factors such as diet and activity level are known to be related to T2D prevalence, the extent to which these factors can accurately predict NH has not yet been explored. To address this gap, this study developed predictive models for NH in T2D patients and compared the predictive performance of two feature conditions: one with CGM features included (Full data condition) and one without (Lifestyle condition).

*Methods:* 

Multiple machine learning algorithms were applied to data from 76 patients. Data was obtained from CGM, food diaries, physical activity trackers, and patient characteristics. Population models with multiple sampling and tuning strategies were trained with 10-fold cross-validation on a training set (75%). In  addition, the area under the receiver operating characteristic curve, sensitivity, and specificity were evaluated on a separate test set (25%). For both data conditions, models across each ML algorithm were trained

*Data information:*

 Data for the present study originates from the “Diabetes and Lifestyle Cohort Twente” (DIALECT). DIALECT is an observational cohort study performed in the Ziekenhuis Groep Twente (ZGT) (Netherlands) and is designed to investigate the effect of lifestyle and dietary habits as well as pharmacological treatment on outcomes in patients with T2D. See the [protocol](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/DIALECT_Study_Protocol.pdf) for more information.
 
*Results:*

ROC curve comparison - Full Data Condition and Lifestyle Condition across all ML algorithms.
<p align="center">
  <img src="https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Functions/ROC_compare_folds_rs.png" width="90%">
</p>

Results show for the four tested ML algorithms that the Random Forest model produced the best results across both data conditions.

*Conclusion*

Predictive performance is highest for models including CGM. However, in the absence of CGM, the Lifestyle conditions showed high AUC. These results provide a cost- and time-effective way to identify T2D patients at risk.

---

# Ethics / Privacy / Security

* Due to the sensitive nature of the patient data and in correspondence with the ZGT, raw as well as processed data cannot be made public. Scripts are provided to understand the workflow and can only be reproduced when data is obtained. For that, data access must be obtained in the indicated way, see [here](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/README_DATA.md). Results used in the final report are shown in the [output](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/tree/main/Output) folder.
* For more information about the study, please refer to the local institutional review boards (FETC, Filed number: 22-1863), where this study was registered and accepted. 
* For more information about the study population please refer to the Netherlands Trial Register (NTR5855) or see the [protocol](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/DIALECT_Study_Protocol.pdf).
* The study was performed according to the declaration of Helsinki, and written informed consent was obtained from all patients before participation.

---

# Permission and access

* The archive is accessible on [GitHub](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive) as well as through a ZIP file that can be obtained by contacting the responsible author for this archive, Christoph Völtzke (c.voltzke@students.uu.nl).
* On GitHub .html files are depicted as source code. Therefore, a .pdf version is uploaded as well to ease readability.
* This Archive is licensed under the `apache-2.0` license.
* As no sensitive information is included in this archive, it is publicly available and can be used for further studies to reproduce the results or to use the same pre-processing, feature extraction/selection and model building steps.

---


# ORDER OF SCRIPTS

In order to reproduce the results the scripts must be run in a specific order. Please follow the short description below or follow below depicted the folder structure from top to bottom.

- 1. README - Understand the purpose and data usage
- 2. Requirements - Download necessary packages and dependencies 
- 3. Data/README_DATA - In order to obtain the data
- 4. Data/Pre-Processing - Run all scripts, See README_PRE_PROCESSING for more information, order of scripts and additional steps
- 5. Scripts - Run all scripts, See README_SCRIPTS for more information, order of scripts and additional steps
- 6. Output - OPTIONAL - See results of original study 


*For further clarification: Detailed folder structure including a short description.*

To reproduce follow from top to bottom.
---

| Files/Folders                 | Description   |
| -----------------             | ------------- |
|[README](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/README.md)      | This is the general README file including the information and purpose of this study. Also it includes´study-, ethics-, and access information|
|[Requirements](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/tree/main/Requirements) | This folder includes an R-Markdown-script including the dependencies used and a compiled .html and .pdf version|
|[Data](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/tree/main/Data) | This folder includes a README_DATA file on how to obtain the data, the study  protocol for the used population as a .pdf file and a Folder with the pre-processing and feature extraction steps|
|[Data/README_DATA](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/README_DATA.md) | File with exact details on how to obtain the data and how to store them to reproduce the results|
|[Data/DIALECT_Study_Protocol](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/DIALECT_Study_Protocol.pdf) | Study Protocol of population investigated in this study|
|[Data/Processing_and_Extraction](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/tree/main/Data/Processing_and_Extraction) | This folder contains all scripts to be run before the Scripts folder - This includes a "README_PRE_PROCESSING" scripts for an overview and 4 scripts which need to be run in the following order: 1/2/3. CGM_all_patients, Food_all_patients, Steps_all_patients, 4. Combined data sets|
|[Data/Processing_and_Extraction/README_PRE_PROCESSING](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/Processing_and_Extraction/README_PRE_PROCESSING.md) | File with exact information on how to process the raw data and additional steps needed for storage|
|[Data/Processing_and_Extraction/CGM_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/Processing_and_Extraction/CGM_all_patients.Rmd) | R-Markdown-script to process the raw CGM data and extract all relevant CGM-features|
|[Data/Processing_and_Extraction/Food_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/Processing_and_Extraction/Food_all_patients.Rmd) | R-Markdown-script to process the raw food diaries and extract all relevant dietary-features|
|[Data/Processing_and_Extraction/Steps_all_patients](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/Processing_and_Extraction/Steps_all_patients.Rmd) | R-Markdown-script to process the raw Physical activity data and extract all relevant Physical Activity-features|
|[Data/Processing_and_Extraction/Combined data sets](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/Processing_and_Extraction/Combined%20data%20sets.Rmd) | R-Markdown-script to combine data sets from all three feature categories and to load baseline data and extract relevant features. Includes processed data set before feature selection|
|[Scripts](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/tree/main/Scripts)      | This folder contains all scripts to be run after the pre-processing. This includes: 1 "README_SCRIPTS" file including information on how to run the scripts, 1 folder with scripts of helper functions, and 4 individual scripts which need to be run in the following order:  1. Feature Selection,  2/3. Model_building_Full_data_condition(Lifestyle_condition), 4. Tables_and_Figures|
|[Scripts/README_SCRIPTS](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/README_SCRIPTS.md) | File with exact information on how to obtain the results used in the final report|
|[Scripts/Functions](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/tree/main/Scripts/Functions) | Folder containing 4 .R files and a .png file with the original results plot used in the report. These helper functions are needed to run the scripts and get the intended evaluation metrics|
|[Scripts/Feature Selection](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Feature%20Selection.Rmd) | R-Markdown-script that needs to be executed after Pre-Processing, which performs feature selection and contains final data sets used for model training|
|[Scripts/Model Building - FULL](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Model_building_Full_data_condition.Rmd) | R-Markdown-script to train models in the Full data condition. Object with final evaluation metrics is saved and list with probabilities in test set across MLs|
|[Scripts/Model Building - LIFE](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Model_building_Lifestyle_condition.Rmd) | R-Markdown-script to train models in the Lifestyle condition. Object with final evaluation metrics is saved and list with probabilities in test set across MLs|
|[Scripts/Tables and Figures](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Tables_and_Figures.Rmd) | R-Markdown-script that needs to be executed after model training. Final estimates are calculated and tables, figures and additional resources are created.|
|[Output](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/tree/main/Output)      | This folder contains a README_OUTPUT file indicating which results are displayed and two .html and  two .pdf files displaying the results. The .html/.pdf files contain the same information about the files 1. Feature Selection, 2. Tables_and_Figures|
|[Output/README_OUTPUT](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Output/README_OUTPUT.md)      | File indicating which results are reproduced and how to obtain these results|
|[Output/Feature Selection](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Output/Feature-Selection.pdf)      | One .html and one .pdf file. Including exact results of feature selection approach used in report. Both versions are included as only raw html code is displayed on GitHub.|
|[Output/Tables_and_Figures](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Output/Tables_and_Figures.pdf)      | One .html and one .pdf file. Including all tables and figures used in report. Here, final estimates are evaluated. Both versions are included as only raw html code is displayed on GitHub.|
---------

For any help with the files or questions on how to obtain access to the data, please contact Christoph Völtzke (c.voltzke@students.uu.nl).

---
License
---
The repository is licensed under the `apache-2.0` license.
