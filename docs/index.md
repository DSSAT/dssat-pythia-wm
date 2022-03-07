# DSSAT User's Guide for World Modelers
Prepared for the March 2022 World Modelers Embed exercise

Prepared by Cheryl Porter, Gerrit Hoogenboom, Vijaya Joshi, Chris Villalobos, Meng Zhang, Oscar Castillo

Contents: 
- [DSSAT Outputs: Models and Datasets](Model_outputs.md)

- [DSSAT Model Types](Model_types.md)

- [DSSAT Input Data](Input_data.md)

- [DSSAT Model Containers](DSSAT_model_containers.md)

- [General description of the DSSAT model](DSSAT-CSM.md)


## Overview

The Decision Support System for Agrotechnology Transfer (DSSAT, dssat.net) is a crop modeling system for prediction of crop yields, crop growth dynamics, and soil water and chemical processes. There are many modeling and analytical components included in DSSAT but only a few, described herein, have been exposed to user access in the World Modeling (WM) system.

The figure below illustrates a sample DSSAT container as implemented in WM. In this example, the DSSAT container includes data and model components for modeling maize in Ethiopia under baseline (current practice) conditions and a few options for perturbing those baseline conditions. When a general modeler makes selections, simulations are performed on Dojo using the DSSAT-pythia modeling framework and the DSSAT-Cropping System model (CSM). The general modeler’s selections are encoded into a DSSAT-pythia configuration file and metadata describing the resulting dataset(s).  

![image](https://raw.githubusercontent.com/DSSAT/dssat-pythia-wm/master/docs/images/Pythia_container_v4_small.jpg)



*Figure. [(Link to larger image)](DSSAT_container_figure.md) DSSAT container for for Ethiopia maize production showing data, processing, and modeling components. A general modeler selects the parameters for a given simulation, which produces a dataset. An analyst accesses the dataset for further analysis and exploration.*


The DSSAT documentation contained herein will be limited to the components:
- variables which are output from WM DSSAT models and datasets
- the three types of DSSAT models in WM,
-	DSSAT-CSM inputs including GIS data layers used as input and modeling assumptions
-	contents of a DSSAT model container including the user selections (i.e., the “tunable knobs”),
-	an overview of the DSSAT-Cropping System Model

