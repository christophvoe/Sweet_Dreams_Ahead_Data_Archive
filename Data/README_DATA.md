DATA - Disclaimer
===

*How to obtain the data:*

To obtain access to the data, interested parties must contact the Ziekenhuis Groep Twente directly and obtain clearance for data access. Please contact Kappert, Kilian: k.d.r.kappert@utwente.nl for more information as multiple parties are involved to get data clearance. TO obtain further information about this study, see [here](https://github.com/christophvoe/Sweet_Dreams_Ahead_Data_Archive/blob/main/Data/DIALECT_Study_Protocol.pdf).

* A token and a username will be provided with which you can log in here: https://www.zgt.nl/professionals/medewerkers/. In this way you will get access to the Intranet of the ZGT. * Follow this path: "J:\Twinz Trial\DIALECT\Data 2022\Patients_all_Sources" to access to folder including the data. The resulting folder is organized on a per-patient basis, with each patient having their own individual folder. This is the folder with exactly the patients and file names used in this study.

*Each folder contains:*

* Historical CGM data, stored in a txt file. 
  * Columns needed are: "ID", "Tijd",	"Type_vastlegging",	"Historie_glucose"
* Physical activity data, stored in a csv/xlsx file
  * Each column is needed as the first column denoted the time (every minute from 00:00:00 to 24:00:00) and each other column denotes the specific date
* Food diary, stored in a csv/xlsx file.
  * Columns needed are: "Date", "Energie (kcal)",	"Vet (g)", "Koolhydr (g)" (sometimes the columns are indicated as e.g., "...1", in this case columns "...1", "...7", "...8","...10" are needed)


*Additional file:*

* In the same folder is a single file stored in a .sav file including baseline patient characteristics: See "new_baseline"
* If you download the folder as it is and store it in the "Processing_and_Extraction" folder, exact results will be reproduced.
