**DSSAT Modeling containers**

The Dojo DSSAT models were configured by expert modelers who had knowledge of the cropping systems in East Africa and the DSSAT modeling requirements. The number of input variables that are required by a complex model such as DSSAT are too numerous for a WM user to learn on the fly, but the expert modeler has simplified the interfaces to allow only a few selections that can be made by the general modeler. In Figure 1, these are shown in the box to the right, “General modeler selections”.  These model selections vary depending on the type of model selected.

<!-- The general modeler selections are stored as metadata which describe both the simulation configuration and the dataset containing final outputs. These metadata are used to modify the DSSAT-pythia configuration file. Some of the metadata describing the simulation are immutable and cannot be modified by the general modeler, such as the spatial resolution of simulations, which are based on the GIS input data layers.

The DSSAT-pythia config file controls the simulation including parallelization, specifying the location of input data, the number, type, and extent of simulations, and the names and locations of output files. DSSAT-pythia creates the DSSAT-formatted input files from the GIS data layers for the spatial and temporal extents of the simulation. DSSAT-pythia also calls the DSSAT-Cropping System Model (CSM) to simulate for each pixel, year, season, and for the selections made by the general modeler.

A post-processing script takes model outputs and calculates total production and other output variables for each pixel, storing the resulting data in a dataset for further analysis, mapping, and exploration by an analyst.

Next page:

[General description of the DSSAT model](DSSAT-CSM.md) -->

[Home](index.md)
