# DSSAT Model Simulation Types #

Three types of DSSAT model are available for use in Dojo and CauseMos. These are:
1.	The **DSSAT sensitivity analysis model** includes user selections for modifying fertilizer amounts, planting dates, and rainfall. 
2.	The **DSSAT climate change model** can be used to modify weather variables to mimic the effects of climate change. The user can select modficiations for temperature, rainfall, and atmospheric CO2 concentrations.
3.	The **DSSAT yield forecasting model** is used to estimate yield and production for the current cropping season.

Each of these model types is described in separate sections below.


## DSSAT Sensitivity model ##

Hypothetical scenarios can be imposed by the general modeler to modify baseline conditions (i.e., current farmer practices) to study "what-if" scenarios or to look at the sensitivity of the system to these variables. In the WM DSSAT Sensitivity model, three input values can be modified to create scenarios:
-	Fertilizer inputs can be modified over a range of valid values by selecting a **“Fertilizer N increase”** option, which allows a user to increase the amount of fertilizer applied to fields above the current farmer practice. This is useful for fertilizer subsidy investigations, for example. Values of fertilizer N increase are limited to a few options between zero (the current farmer practice) and +200 kg[N] above current farmer practice. Additional fertilizer amounts are expressed as kilograms of elemental nitrogen per hectare.
-	Planting dates can be modified by using the **“Planting date offset”** option. Planting dates are simulated in DSSAT using a planting window. On the first day within the planting window for which soil moisture and temperature conditions are within suitable ranges, planting occurs in the model. The planting date "rules" allow planting to occur, within the specified window, after the rains begin. Baseline planting windows were set by the expert modeler, but these can be shifted by the user to explore early or late planting options. Planting date offset values, in days, are limited to a few options between -60 (i.e., 60 days prior to current farmer planting dates) to +60 (i.e., 60 days after current farmer planting dates). 
-	The **“Rainfall multiplier”** option allows a user to increase or decrease the amount of rainfall during a simulation to mimic effects of drought or higher than normal rainfall. User selection options include a range of values between 0.25 (25% of recorded rainfall amounts) through 2.0 (double the recorded rainfall amounts).

## DSSAT Climate Change model ##

Hypothetical climate scenarios can be imposed by the modeler to study the effects of climate change on crop yield and production and to pinpoint hotspots for climate adaptation studies. Three weather input variables can be modified to mimic the effects of climate change: temperature, rainfall, and atmospheric CO<sub>2</sub> levels. These three weather variables affect plant growth processes which often interact in complex ways.
-	Temperatures can be modified by selecting the **“Temperature offset”** option. The value selected will be used to increase (or decrease) maximum and minimum daily temperatures in the model. User selections range from “-1” (1 degree C decrease in temperatures) to “+5” (5 degree C increase in temperatures). Plants grow optimally within a range of temperatures which is dependent on the species. Above or below that optimum range, plant growth is stunted. Temperature also affects the rate of progression of plant development. Depending on the environment and the species, increases (or decreases) in temperature can have a beneficial or a detrimental effect on crop yields.
-	As in the sensitivity model, the **“Rainfall multiplier”** option allows a user to increase or decrease the amount of rainfall during a simulation to mimic effects of drought or higher than normal rainfall. Historical observations of daily rainfall are multiplied by this amount and used as input to the DSSAT model. User selections of the rainfall multiplier range from 0.25 to 2.0. Optimum soil water conditions improve plant growth, with adverse effects occurring for both too much and too little water. 
-	The **“CO2 value”** option is used to set the value of atmospheric CO<sub>2</sub> for the model simulations. CO<sub>2</sub> generally has a fertilization effect on plant growth, to varying degrees for different species. 


## DSSAT Yield Forecast model ## 

The yield forecast model is used to predict the crop growth and development in the current or upcoming season. This model relies on recent weather data, ideally updated through yesterday with observed data. The model will use actual weather data for this season up through the date of the last available weather data. For the remainder of the season, weather data are filled in using recorded data from the last 30 years. This gives 30 possible futures for the upcoming season based on the historical ensemble of weather data. Predicted outcomes are expressed as a distribution of possible values for the coming season.

The only user choice in this model configuration is the forecast date. Forecast dates have been pre-selected at one-week intervals from March 11, 2022 through May 13, 2022. The user should select the date which has most recently occurred. For example, if a user is running a prediction on April 12, the most recent available forecast date is April 8. Weather data will be updated just prior to these forecast dates so the user has access to the most recent weather data available for the simulations. 

Next page:

[DSSAT Model containers](DSSAT_model_containers.md)

[Home](index.md)

