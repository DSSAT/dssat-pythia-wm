# DSSAT Input Data #

Each simulation of DSSAT-CSM requires four types of input data: crop management, weather, soils, and genetics. The following sections describe how each of these are parameterized for the Ethiopia WM Experiment for the four crops provided: maize, wheat, teff, and sorghum. 

Although DSSAT-CSM was developed as a field scale model, simulating conditions at a single location, it can be used in a spatial application by gridding the land surface and providing representative model inputs for each pixel on which a crop is grown. For WM, we use a 5 arc-minute resolution (about 10 km) and provide data on soil parameters, daily weather data, and harvested areas as raster data at that resolution or higher. These raster data are described under “GIS data layers” below.

For Ethiopia, two seasons can be simulated for each crop: meher, the main cropping season, and belg, the shorter season. Some areas have only one unimodal season, generally associated with the meher. These cropping seasons and the associated planting data are discussed below in "Planting information”. 

Four different management regimens are simulated, representing irrigated, high fertilizer; rainfed, high fertilizer; rainfed, low fertilizer; and rainfed, no fertilizer. Each of these management types is associated with a different harvested area in each pixel of land area. 

Management data for baseline conditions, i.e., for current farmer practice, define the crops and cultivars planted, planting dates and densities, fertilizer application rates, irrigation rates, and other management practices. Once the baseline conditions have been fully described, scenarios can be imposed by perturbing these data. For example, the “tunable knob” selecting an amount of increase to fertilizer application rates allows a user to ask “what if” questions, such as “What would be the expected increase in production if we subsidized fertilizers in Ethiopia”?

Each simulation consisting of a crop, cropping season, scenario, management regimen, and pixel is simulated for 36 years of weather data, 1984 through 2019. High spatial variability results from combinations of cropping season, management practices, soils, weather, harvested areas, and genetics which influence production across the country.

1.7	DSSAT-pythia post-processing 
DSSAT-CSM predicts yield and other variables for each simulation. A post-processor is used to compute production (yield multiplied by harvested area) and to aggregate production for the four management regimens. A simplified set of output data, produced for WM interfaces, contains only the location (latitude and longitude), harvest date, and production. These are stored in datasets grouped by crop, cropping season, and scenario.

2.	Detailed description of Model inputs and outputs

2.1	GIS data layers
Weather data: Daily solar radiation and maximum and minimum temperature were obtained from NASA POWER (Zhang et al., 2007, power.larc.nasa.gov). Daily rainfall was collected from CHIRPS (Funk et al., 2015, legacy.chg.ucsb.edu/data/chirps/index.html). The resolution for the NASA POWER data is 0.5 × 0.5 degrees and for the rainfall data is 0.05 × 0.05 degrees. Data were merged at the higher resolution for use as DSSAT model inputs.

Soil data: The soil database corresponds to the Global High-Resolution Soil Profile Database (Han et al., 2015a, b, dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/1PEEY0). Soil organic carbon was considered to be too high within this database and therefore, the soil organic carbon from the Harvest Choice 27 generic soil database (Koo and Dimes, 2010, dataverse.harvard.edu/dataset.xhtml?persistentId=hdl:1902.1/20299) was selected to be used for this project.

Harvested areas: For each pixel, four management regimens are defined. Harvested areas for each of the management types is provided by the SPAM Global spatially disaggregated crop production statistics data for 2010, version 1.1-version 3. (IFPRI, 2019, https://www.mapspam.info/data/). These define cropland harvested areas for each crop within each geographic pixel at a 5 arc-minute resolution. Harvested areas are provided for four management types: irrigated, high fertilizer input; rainfed, high fertilizer input; rainfed, low fertilizer input; and rainfed, no fertilizer. Field crop management practices are defined separately for the four management types as described below. These harvested areas are used in a post-processor with DSSAT-simulated yields to compute production in each pixel and for each management type. These can then be scaled up to any specified areal boundary, such as country-level or woreda-level production.

Planting zones: For WM simulations, Ethiopia was divided into three planting zones which define ranges of planting dates for each crop and each cropping season. Figure 2 shows the zones which define cropping seasons, planting dates, and cultivars as described in the “Other fixed DSSAT inputs and modeling assumptions” section below. These zones were defined based on rainfall patterns as described in “An atlas of Ethiopian livelihoods” (USAID, 2006).

 
Figure 2.  Ethiopia planting zones. 

2.2	Other fixed DSSAT inputs and modeling assumptions

2.2.1	Planting information
Planting dates are defined in Table 2 by crop and season and by planting zone. The dates in Table 2 represent a planting window, or range of possible dates for planting. In the DSSAT-CSM model, crop planting occurs on the first day within this window for which soil moisture and temperature are within acceptable ranges. These planting date windows are based on FAO (2019) crop calendar data, on published papers in the region (various), and on personal communication with agronomists in Ethiopia.



Table 2. Planting dates for each crop, season, and planting zone
Crop - Season	Planting dates for each Zone (Figure 1) and 
(percent of harvested area allocated to each planting season)
	Zone 1
North & West	Zone 2
Central	Zone 3
South & East
Maize, sorghum – Meher	May 1 – Jun 12	Jun 1 – Jul 13	Sep 1 – Oct 13
Maize, sorghum – Belg	--	Feb 1 – Mar 15	Mar 1 – Apr 12
Wheat – Meher	May 1 – June 30	Jun 1 – Jul 31	Sep 1 – Oct 31
Wheat – Belg	--	Feb 1 – Apr 2	Mar 1 – Apr 30
Teff – Meher	May 1 – Jun 12	Jun 1 – Jul 13	Sep 1 – Oct 13
Teff - Belg	--	Feb 1 – Mar 15	Mar 1 – Apr 12

SPAM data layers provide a total harvested area for each crop and each of four management types. The expert modeler made assumptions regarding how these harvested areas are partitioned to Meher and Belg seasons as shown in Table 3. These assumptions were gleaned from literature and statistics and evaluated in aggregate for the country based on CSA reports.

Table 3. Partitioning of harvested area between Meher and Belg seasons
Cropping Season	Zone 1
North & West	Zone 2
Central	Zone 3
South & East
Meher (all crops)	100%	75%	25%
Belg (all crops)	0%	25%	75%

Cultivars selected for these simulations are shown in Table 4 along with the references for each.

Table 4. Crop cultivars used in WM simulations
Crop	Season	Cultivar	Reference
Maize	Meher	BH660	Araya et al. (2015)
Maize	Belg	DSSAT short season	Hoogenboom et al. (2019b)
Sorghum	Meher & Belg	TESHALE	Getachew et al. (2021, under review)
Wheat	Meher & Belg	HAR2501	Araya et al., (2019)
Teff	Meher & Belg	DZ-01-354	Teklu & Tefera (2005), Paff & Asseng (2019) 

2.2.2	Management regimens
Four management regimens are simulated for each pixel, each with different management inputs. These management regimens are linked to the harvested areas in the SPAM GIS data layers, as described above. Table 3 lists the model input data that are based on the four management regimens for all crops.

Table 5. Management inputs by crop and management regimen
Variable	Management regimen	Maize	Wheat	Teff	Sorghum
Irrigation	Irrigated, high N	Automatic, computed by model
	Rainfed, high N	None
	Rainfed, low N	None
	Rainfed, no N	None
Fertilizer, kg[N]/ha	Irrigated, high N	100	100	50	100
	Rainfed, high N	100	100	50	100
	Rainfed, low N	10	10	10	10
	Rainfed, no N	0	0	0	0
Applied manure (kg dry matter/ha)	Irrigated, high N	0	0	0	0
	Rainfed, high N	0	0	0	0
	Rainfed, low N	500	500	500	500
	Rainfed, no N	500	500	500	500
Planting density (plants/m2)	All	5	250	900	9
Row spacing (cm)	All	70	16	7	50
Planting depth (cm)	All	5	3	0.9	3

Fertilizer was assumed to be applied in two equal applications on the day of planting and 30 days after planting.  The fertilizer type was assumed to be urea, broadcast over the field, then incorporated into the topsoil to a depth of 5 cm.

