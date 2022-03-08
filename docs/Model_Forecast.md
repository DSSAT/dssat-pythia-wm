# DSSAT Forecast model

Go to <<[Home page](index.md)>>

Go to section home: <<[DSSAT Model simulation types](Model_types.md)>>

- Go to subsection <<[DSSAT sensitivity analysis model](Model_sensitivity.md)>>

- Go to subsection <<[DSSAT climate change model](Model_climate_change.md)>>

Go to next page: <<[DSSAT Input Data](Input_data.md)>>

---

The DSSAT forecast model is used to predict the crop growth and development in the current or upcoming season. This model relies on recent weather data, ideally updated through yesterday with observed data. The model will use actual weather data for this season up through the date of the last available weather data. For the remainder of the season, weather data are filled in using recorded data from the last 30 years. This gives 30 possible futures for the upcoming season based on the historical ensemble of weather data. Predicted outcomes are expressed as a distribution of possible values for the coming season.

The only user choice in this model configuration is the forecast date. Forecast dates have been pre-selected at one-week intervals from March 11, 2022 through May 13, 2022. The user should select the date which has most recently occurred. For example, if a user is running a prediction on April 12, the most recent available forecast date is April 8. Weather data will be updated just prior to these forecast dates so the user has access to the most recent weather data available for the simulations. 

 <!-- -->
