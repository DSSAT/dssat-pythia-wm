# DSSAT model outputs #

DSSAT model outputs are available from model simulations in Dojo and also as archived datasets. The archived datasets allow for richer interpretation of model outputs, but cannot be modified with new simulations.

## Outputs from DSSAT models in Dojo ##

Model outputs from simulations are used to generate a dataset which can be used for analysis, mapping, and data exploration. In the WM DSSAT configuration, six output variables are exposed: 
1.	**“crop yield”**, a measure of the crop productivity per unit area (kg/ha), 
2.	**“crop production”**, the amount of crop produced which is a product of yield by the area harvested (t), 
3.	**“amount of fertilizer applied”**, the amount of elemental N in fertilizer applied for crop production (t) 
4.	**“area of crop failure”**, defined as area in hectares for which the crop yield was less than 200 kg/ha (ha).

Each of these variables is computed for each geographic location, or pixel, in the geospatial simulation and for each of 36 years of historical weather data .  Each value is associated with a timestamp year or month and a location (latitude and longitude or administrative unit). 

## Outputs from DSSAT stored as Datasets in Dojo ##

DSSAT has additional variables that could be of use to CauseMos users, that have been stored in DSSAT datasets, separately from the DSSAT modeling outputs. These variables require complex aggregation algorithms (e.g., they cannot be simply summed or averaged) and so they were pre-simulated, aggregated, and stored in DSSAT datasets along with some summarizing box plots. These variables include all the variables listed for the model output above plus two additional variables:
1.	**“crop per drop”**, the crop yield divided by the amount of rainfall plus irrigation (kg ha<sup>-1</sup> mm<sup>-1</sup>). This is a measure of the water use efficiency of a crop.
2.	**“crop per person”** is the crop production in an area divided by the number of people in that area. This is a useful measurement of how well an area might feed it’s people. For urban areas, the number is not as useful a measure, as there are more people with fewer farms. It does not account for imported food or food that is transported from one area to another.

<!-- Next page:

[DSSAT Model simulation types](Model_types.md)

[Home](index.md) -->

