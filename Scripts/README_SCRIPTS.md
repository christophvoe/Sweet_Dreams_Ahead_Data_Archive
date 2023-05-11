SCRIPTS - Disclaimer
===

This folder contains all scripts to be run after the pre-processing.

Subfolder with  4 scripts of helper functions and a plot as a .png, and 4 individual scripts which need to be run in the following order:

  * 1. Feature Selection
  * 2. Model_building_Full_data_condition
  * 3. Model_building_Lifestyle_condition
  * 4. Tables_and_Figures
  
*NOTE*

All scripts have seed values to be able to reproduce the exact same results. Further instructions are given in the corresponding files.

*INFO*

* The results used in this study are analysed and evaluated in the Scripts [Feature Selection](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Feature%20Selection.Rmd) and [Tables and Figures](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Tables_and_Figures.Rmd). 
* The two model building scripts solely produce the estimates and are not used to further evaluate them. Moreover, as the data is not included in the Archive, the estimates can only be obtained if data clearance is obtained as mentioned [here](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/README_DATA.md).
* To save the estimates and data sets obtained by feature selection an additional empty folders needs to be saved within the SCRIPTS Folder: called "Data". 

---

| Files/Folders                 | Description   |
| -----------------             | ------------- |
|[Scripts/Functions](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/tree/main/Scripts/Functions) |Folder containing 4 R scripts and a .png file with the original results plot used in the report. These helper function are needed to run the analyses and get the intended evaluation metrics|
|[Scripts/Feature Selection](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Feature%20Selection.Rmd) |R-Markdown-script that needs to be executed after Processing, which performs feature selection and contains final data sets used for model training|
|[Scripts/Model Building - FULL](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Model_building_Full_data_condition.Rmd) |R-Markdown-script to train models in the Full data condition. Object with final evaluation metrics is saved and list with probabilities of NH for each observation across MLs|
|[Scripts/Model Building - LIFE](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Model_building_Lifestyle_condition.Rmd) |R-Markdown-script to train models in the Lifestyle condition. Object with final evaluation metrics is saved and list with probabilities of NH for each observation across MLs|
|[Scripts/Tables and Figures](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Scripts/Tables_and_Figures.Rmd) |R-Markdown-script that needs to be executed after model training. Final estimates are caluclated and tables, figures and additional resources are created. Includes session_info as it is the last script to be executed|