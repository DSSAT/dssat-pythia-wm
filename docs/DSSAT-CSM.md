# DSSAT-CSM #

Go to <<[Home page](index.md)>>

---

The DSSAT Cropping System Model (CSM) is the main computational element of the Decision Support System for Agrotechnology Transfer (DSSAT, **[dssat.net](https://dssat.net/)**, Hoogenboom et al., 2019a and 2019b, Jones et al. 2003). DSSAT-CSM calculates expected growth and development of crops based on equations that describe response to management, environmental conditions, and genetic potential. The equations used in CSM comprise a set of differential equations representing rates of growth or development, and rates of soil water and soil nutrient dynamics. Numerical integration over time, with daily or hourly time steps, allows estimation of growth, development, and water and nutrient levels in the plant and soil. 
The 42 crop species currently modeling by DSSAT-CSM deal primarily with annual crops including wheat, rice, maize, and various grain legumes but also include herbaceous perennials such as forage legumes and grasses, and vegetable crops such as tomato and peppers. In addition to crop growth and development, the models simulate water and nutrient dynamics in the soil and crop, so processes such as leaching, organic matter decomposition, and runoff are also considered.

DSSAT-CSM requires input data including daily weather data, soil physical and chemical properties, and detailed crop management, such as timing and details of planting, irrigation, fertilizer application, and residue management. An especially challenging set of inputs are the genotype-specific parameters (GSPs) used to quantify how one cultivar differs from another. GSPs are most often estimated through calibration to measurements from field trials. 

DSSAT-CSM has been used for a wide range of applications at different spatial and temporal scales. This includes on-farm and precision management, regional assessments of the impact of climate variability and climate change, gene-based modeling and breeding selection, water use, greenhouse gas emissions, and long-term sustainability through the soil organic carbon and nitrogen balances. Model applications range from real-time decision support for crop management to assessing the potential impact of climate change on global food security. Crop models are also invaluable as heuristic tools that help identify research problems where our current knowledge has limits and further research is needed. The ability of crop models to simulate how different weather years or soil conditions affect crop performance make models especially useful in research involving climatic uncertainty or geospatial variation. 

DSSAT has been in used by more than 16,500 researchers, educators, consultants, extension agents, growers, and policy and decision makers in over 174 countries worldwide. A more complete overview of DSSAT structure and algorithms is available on dssat.net. Further DSSAT resources can be found in the “Links to DSSAT Resources” below. 

### Links to DSSAT resources ###
- [DSSAT main website](https://dssat.net/)
- [DSSAT repositories](https://github.com/dssat)
- [DSSAT-CSM repository](https://github.com/dssat/dssat-csm-os)
- [DSSAT-CSM list of output variables definitions](https://github.com/DSSAT/dssat-csm-os/blob/develop/Data/DATA.CDE)
- [DSSAT documentation](https://github.com/dssat/documentation) 
- [DSSAT-pythia documentation](https://pythia-framework.readthedocs.io/en/latest/)
- [DSSAT-pythia-aggregation](https://github.com/DSSAT/supermaas-aggregate-pythia-outputs)


### References ###
Hoogenboom, G., C.H. Porter, K.J. Boote, V. Shelia, P.W. Wilkens, U. Singh, J.W. White, S. Asseng, J.I. Lizaso, L.P. Moreno, W. Pavan, R. Ogoshi, L.A. Hunt, G.Y. Tsuji, and J.W. Jones. 2019a. The DSSAT crop modeling ecosystem. In: p.173-216 [K.J. Boote, editor] Advances in Crop Modeling for a Sustainable Agriculture. Burleigh Dodds Science Publishing, Cambridge, United Kingdom (http://dx.doi.org/10.19103/AS.2019.0061.10)

Hoogenboom, G., C.H. Porter, V. Shelia, K.J. Boote, U. Singh, J.W. White, L.A. Hunt, R. Ogoshi, J.I. Lizaso, J. Koo, S. Asseng, A. Singels, L.P. Moreno, and J.W. Jones. 2019b. Decision Support System for Agrotechnology Transfer (DSSAT) Version 4.7.5 (https://DSSAT.net). DSSAT Foundation, Gainesville, Florida, USA.

Jones, J.W., G. Hoogenboom, C.H. Porter, K.J. Boote, W.D. Batchelor, L.A. Hunt, P.W. Wilkens, U. Singh, A.J. Gijsman, and J.T. Ritchie. 2003. DSSAT Cropping System Model. European Journal of Agronomy 18:235-265.


