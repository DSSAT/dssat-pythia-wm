# DSSAT Input Data

Each simulation of DSSAT-CSM requires four types of input data: crop management, weather, soils, and genetics. The following sections describe how each of these are parameterized for the Ethiopia WM Experiment for the four crops provided: maize, wheat, teff, and sorghum. 

Although DSSAT-CSM was developed as a field scale model, simulating conditions at a single location, it can be used in a spatial application by gridding the land surface and providing representative model inputs for each pixel on which a crop is grown. For WM, we use a 5 arc-minute resolution (about 10 km) and provide data on soil parameters, daily weather data, and harvested areas as raster data at that resolution or higher. These raster data are described under “GIS data layers” below.

For Ethiopia, two seasons can be simulated for each crop: meher, the main cropping season, and belg, the shorter season. Some areas have only one unimodal season, generally associated with the meher. These cropping seasons and the associated planting data are discussed below in "Planting information”. 

Four different management regimens are simulated, representing irrigated, high fertilizer; rainfed, high fertilizer; rainfed, low fertilizer; and rainfed, no fertilizer. Each of these management types is associated with a different harvested area in each pixel of land area. 

Management data for baseline conditions, i.e., for current farmer practice, define the crops and cultivars planted, planting dates and densities, fertilizer application rates, irrigation rates, and other management practices. Once the baseline conditions have been fully described, scenarios can be imposed by perturbing these data. For example, the “tunable knob” selecting an amount of increase to fertilizer application rates allows a user to ask “what if” questions, such as “What would be the expected increase in production if we subsidized fertilizers in Ethiopia”?

Each simulation consisting of a crop, cropping season, scenario, management regimen, and pixel is simulated for 36 years of weather data, 1984 through 2019. High spatial variability results from combinations of cropping season, management practices, soils, weather, harvested areas, and genetics which influence production across the country.

## Detailed description of Model inputs and outputs

### GIS data layers
#### Weather data
Daily solar radiation and maximum and minimum temperature were obtained from NASA POWER (Zhang et al., 2007, [power.larc.nasa.gov](https://power.larc.nasa.gov/)). Daily rainfall was collected from CHIRPS (Funk et al., 2015, [data.chc.ucsb.edu/products/CHIRPS-2.0](https://data.chc.ucsb.edu/products/CHIRPS-2.0/)). The resolution for the NASA POWER data is 0.5 × 0.5 degrees and for the rainfall data is 0.05 × 0.05 degrees. Data were merged at the higher resolution for use as DSSAT model inputs.

#### Soil data
The soil database corresponds to the Global High-Resolution Soil Profile Database (Han et al., 2015a, b, dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/1PEEY0). Soil organic carbon was considered to be too high within this database and therefore, the soil organic carbon from the Harvest Choice 27 generic soil database (Koo and Dimes, 2010, [dataverse.harvard.edu/dataset.xhtml?persistentId=hdl:1902.1/20299](https://dataverse.harvard.edu/dataset.xhtml?persistentId=hdl:1902.1/20299)) was selected to be used for this project.

#### Planting zones
For WM simulations, Ethiopia was divided into three planting zones which define ranges of planting dates for each crop and each cropping season. The map below shows the zones which define cropping seasons, planting dates, and cultivars as described in the “Other fixed DSSAT inputs and modeling assumptions” section below. These zones were defined based on rainfall patterns as described in “An atlas of Ethiopian livelihoods” (USAID, 2006).


![image](https://raw.githubusercontent.com/DSSAT/dssat-pythia-wm/master/docs/images/Ethiopia_planting_zones.jpg)
Map. Ethiopia planting zones. 


*Table. Planting dates for each Zone*
<table>
	<thead>
		<tr>
			<th>Cropping Season</th>
			<th align="center">Zone 1-North & West</th>
			<th align="center">Zone 2-Central</th>
			<th align="center">Zone 3-South & East</th>			
		</tr>
	</thead>
	<tbody>
		<tr>
			<td >Maize, sorghum - Meher</td>
			<td align="center">May 1 – Jun 12</td>
			<td align="center">Jun 1 – Jul 13</td>
			<td align="center">Sep 1 – Oct 13</td>
		</tr>
		<tr>
			<td>Maize, sorghum - Belg</td>
			<td align="center">-</td>
			<td align="center">Feb 1 – Mar 15</td>
			<td align="center">Mar 1 – Apr 12</td>
		</tr>
		<tr>
			<td>Wheat - Meher</td>
			<td align="center">May 1 – June 30</td>
			<td align="center">Jun 1 – Jul 31</td>
			<td align="center">Sep 1 – Oct 31</td>
		</tr>
		<tr>
			<td>Wheat - Belg</td>
			<td align="center">-</td>
			<td align="center">Feb 1 – Apr 2</td>
			<td align="center">Mar 1 – Apr 30</td>
		</tr>
		<tr>
			<td>Teff - Meher</td>
			<td align="center">May 1 – Jun 12</td>
			<td align="center">Jun 1 – Jul 13</td>
			<td align="center">Sep 1 – Oct 13</td>
		</tr>
		<tr>
			<td>Teff - Belg</td>
			<td align="center">-</td>
			<td align="center">Feb 1 – Mar 15</td>
			<td align="center">Mar 1 – Apr 12</td>
		</tr>
	</tbody>
</table>

Planting dates are defined in by crop and season and by planting zone. The dates in Table 2 represent a planting window, or range of possible dates for planting. In the DSSAT-CSM model, crop planting occurs on the first day within this window for which soil moisture and temperature are within acceptable ranges. These planting date windows are based on FAO (2019) crop calendar data, on published papers in the region (various), and on personal communication with agronomists in Ethiopia.


#### Harvested areas
For each pixel, four management regimens are defined. Harvested areas for each of the management types is provided by the SPAM Global spatially disaggregated crop production statistics data for 2010, version 1.1-version 3. (IFPRI, 2019, [www.mapspam.info](https://www.mapspam.info/data/)). These define cropland harvested areas for each crop within each geographic pixel at a 5 arc-minute resolution. Harvested areas are provided for four management types: irrigated, high fertilizer input; rainfed, high fertilizer input; rainfed, low fertilizer input; and rainfed, no fertilizer. Field crop management practices are defined separately for the four management types as described below. These harvested areas are used in a post-processor with DSSAT-simulated yields to compute production in each pixel and for each management type. These can then be scaled up to any specified areal boundary, such as country-level or woreda-level production.

SPAM data layers provide a total harvested area for each crop and each of four management types. The expert modeler made assumptions regarding how these harvested areas are partitioned to Meher and Belg seasons as shown in Table 3. These assumptions were gleaned from literature and statistics and evaluated in aggregate for the country based on CSA reports.

*Table. Partitioning of harvested area between Meher and Belg seasons*
<table>
	<thead>
		<tr>
			<th>Cropping Season</th>
			<th align="center">Zone 1-North & West</th>
			<th align="center">Zone 2-Central</th>
			<th align="center">Zone 3-South & East</th>			
		</tr>
	</thead>
	<tbody>
		<tr>
			<td >Meher (all crops)</td>
			<td align="center">100%</td>
			<td align="center">75%</td>
			<td align="center">25%</td>
		</tr>
		<tr>
			<td>Belg (all crops)</td>
			<td align="center">0%</td>
			<td align="center">25%</td>
			<td align="center">75%</td>
		</tr>
	</tbody>
</table>



### Other fixed DSSAT inputs and modeling assumptions

#### Cultivars 
Cultviars selected for these simulations are shown in Table 4 along with the references for each.

*Table. Crop cultivars used in WM simulations*
<table>
	<thead>
		<tr>
			<th>Crop</th>
			<th>Season</th>
			<th>Cultivar</th>
			<th>Reference</th>			
		</tr>
	</thead>
	<tbody>
		<tr>
			<td >Maize</td>
			<td>Meher</td>
			<td>BH660</td>
			<td>Araya et al. (2015)</td>
		</tr>
		<tr>
			<td>Maize</td>
			<td>Belg</td>
			<td>DSSAT short season</td>
			<td>Hoogenboom et al. (2019b)</td>
		</tr>
		<tr>
			<td >Sorghum</td>
			<td>Meher & Belg</td>
			<td>TESHALE</td>
			<td>Getachew et al. (2021)</td>
		</tr>
		<tr>
			<td>Wheat</td>
			<td>Meher & Belg</td>
			<td>HAR2501</td>
			<td>Araya et al., (2019)</td>
		</tr>
		<tr>
			<td >Teff</td>
			<td>Meher & Belg</td>
			<td>DZ-01-354</td>
			<td>Teklu & Tefera (2005), Paff & Asseng (2019) </td>
		</tr>
	</tbody>
</table>


#### Management regimens
Four management regimens are simulated for each pixel, each with different management inputs. These management regimens are linked to the harvested areas in the SPAM GIS data layers, as described above. Table 3 lists the model input data that are based on the four management regimens for all crops.

*Table. Management inputs by crop and management regimen*
<table>
	<thead>
		<tr>
			<th>Variable</th>
			<th>Managment regimen</th>
			<th>Maize</th>
			<th>Wheat</th>			
			<th>Teff</th>			
			<th>Sorghum</th>			
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Irrigation</td>
			<td>Irrigated, high N</td>
			<td align="center">Automatic</td>
			<td align="center">Automatic</td>
			<td align="center">Automatic</td>
			<td align="center">Automatic</td>
		</tr>
		<tr>
			<td>Irrigation</td>
			<td>Rainfed (all)</td>
			<td align="center">none</td>
			<td align="center">none</td>
			<td align="center">none</td>
			<td align="center">none</td>
		</tr>
		<tr>
			<td>Fertilizer (kg[N]/ha)</td>
			<td>Irrigated, high N & Rainfed, high N</td>
			<td align="center">100</td>
			<td align="center">100</td>
			<td align="center"> 50</td>
			<td align="center">100</td>
		</tr>
		<tr>
			<td>Fertilizer (kg[N]/ha)</td>
			<td>Rainfed, low N</td>
			<td align="center">10</td>
			<td align="center">10</td>
			<td align="center">10</td>
			<td align="center">10</td>
		</tr>
		<tr>
			<td>Fertilizer (kg[N]/ha)</td>
			<td>Rainfed, no N</td>
			<td align="center">0</td>
			<td align="center">0</td>
			<td align="center">0</td>
			<td align="center">0</td>
		</tr>
		<tr>
			<td>Applied manure (kg[dry matter]/ha)</td>
			<td>Irrigated, high N & Rainfed, high N</td>
			<td align="center">0</td>
			<td align="center">0</td>
			<td align="center">0</td>
			<td align="center">0</td>
		</tr>
		<tr>
			<td>Applied manure (kg[dry matter]/ha)</td>
			<td>Rainfed, low N & Rainfed, no N</td>
			<td align="center">500</td>
			<td align="center">500</td>
			<td align="center">500</td>
			<td align="center">500</td>
		</tr>
		<tr>
			<td>Planting density (plants/m2)</td>
			<td>All</td>
			<td align="center">  5</td>
			<td align="center">250</td>
			<td align="center">900</td>
			<td align="center">  9</td>
		</tr>
		<tr>
			<td>Row spacing (cm)</td>
			<td>All</td>
			<td align="center">70</td>
			<td align="center">16</td>
			<td align="center"> 7</td>
			<td align="center">50</td>
		</tr>
		<tr>
			<td>Planting depth (cm)</td>
			<td>All</td>
			<td align="center">  5</td>
			<td align="center">  3</td>
			<td align="center">0.9</td>
			<td align="center">  3</td>
		</tr>
	</tbody>
</table>


Fertilizer was assumed to be applied in two equal applications on the day of planting and 30 days after planting.  The fertilizer type was assumed to be urea, broadcast over the field, then incorporated into the topsoil to a depth of 5 cm.

#### References
Araya, A., Hoogenboom, G., Luedeling, E., Hadgu, K. M., Kisekka, I., and Martorano, L. G. (2015). Assessment of maize growth and yield using crop models under present and future climate in southwestern Ethiopia. Agricultural and Forest Meteorology 214, 252-265.

Araya, A., Prasad, P. V. V., Gowda, P. H., Afewerk, A., Abadi, B., and Foster, A. J. (2019). Modeling irrigation and nitrogen management of wheat in northern Ethiopia. Agricultural Water Management 216, 264-272.

FAO (2019). "GIEWS Country brief Ethiopia." Food and Agriculture Organization of the United Nations.

Funk, C., Peterson, P., Landsfeld, M., Pedreros, D., Verdin, J., Shukla, S., Husak, G., Rowland, J., Harrison, L., Hoell, A., and Michaelsen, J. (2015). The climate hazards infrared precipitation with stations - a new environmental record for monitoring extremes. Scientific data 2, 150066. Earth Engine. https://developers.google.com/earth-engine/datasets/catalog/UCSB-CHG_CHIRPS_DAILY.

Getachew, F., Bayabil, H.K., Hoogenboom, G., Teshome, F.T., Zewdu, E. 2021. Irrigation and Shifting Planting Date as Climate Change Adaptation Strategies for sorghum. Agricultural Water Management. Vol 255, 106988. https://doi.org/10.1016/j.agwat.2021.106988 

Han, E., Ines, A., and Koo, J. (2015a). Global high-resolution soil profile database for crop modeling applications.  (H. Dataverse, ed.).

Han, E., Ines, A., and Koo, J. (2015b). Global high-resolution soil profile database for crop modeling applications. Working paper. HarvestChoice/International Food Policy Research Institute (IFPRI), 37 pp.

Hoogenboom, G., C.H. Porter, V. Shelia, K.J. Boote, U. Singh, J.W. White, L.A. Hunt, R. Ogoshi, J.I. Lizaso, J. Koo, S. Asseng, A. Singels, L.P. Moreno, and J.W. Jones. 2019b. Decision Support System for Agrotechnology Transfer (DSSAT) Version 4.7.5 (https://DSSAT.net). DSSAT Foundation, Gainesville, Florida, USA.

IFPRI (2019). Global spatially-disaggregated crop production statistics data for 2010 Version 1.1.  (H. Dataverse, ed.).

Koo, J., and Dimes, J. (2010). HC27: Generic/Prototypical Soil Profiles. International Food Policy Research Institute, Washington, DC., and University of Minnesota, St. Paul, MN. Available online at http://harvestchoice.org/node/2239.

Paff, K., and Asseng, S. (2019). Comparing the effects of growing conditions on simulated Ethiopian tef and wheat yields. Agricultural and Forest Meteorology 266, 208-220.

Teklu, Y., and Tefera, H. (2005). Genetic improvement in grain yield potential and associated agronomic traits of tef (Eragrostis tef). Euphytica 141, 247-254.

USAID (2006). "An atlas of Ethiopian livelihoods. The livelihoods integration unit." International Food Policy Research Institute, Washington DC. / Central Statistical Agency / Ethiopian Development Research Institute, Addis Ababa, Ethiopia. http://foodeconomy.com/wp-content/uploads/2016/02/Atlas-Final-Web-Version-6_14.pdf 

Zhang, T., Chandler, W. S., Hoell, J. M., Westberg, D., Whitlock, C. H., and Stackhouse Jr, P. W. (2007). A Global perspective on renewable energy resources: NASA’s Prediction of Worldwide Energy Resources (POWER) project. In "Proceedings of ISES World Congress 2007" (G. D.Y. and Z. Y., eds.), Vol. I-V, pp. 2636-2640, Berlin, Heidelberg, Germany.




 [Home](index.md)
