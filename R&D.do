***Data source: The data on the ratio of FDI to GDP and real GDP in constant dollars (2000) come from the World Bank development indicators. 
**The human capital is estimated by the average years of schooling from Barro and Lee (2010). 
****The skilled-labor ratio is measured by the percentage of population having completed primary education, which also comes from Barro and Lee (2010).
** I use primary education to distinguish skilled and unskilled-labor because it shows more qualitative difference between the two groups (Caselli and Coleman, 2006).
*The ratio of R&D expenditure to GDP comes from the World Bank development indicators and the OECD dataset. 
****The World Bank data has more countries but also a lot of missing values, while the OECD data are more complete but the number of countries is limited. Based on that, I use the dataset from the World Bank for the pooled estimator and the OECDÕs dataset for the co-integration.
**** After merging the R&D data with the data of other variables, there are 103 countries over period 1996 to 2009 in the World BankÕs dataset and 10 developed countries  over year 1983 to 2009 and 12 developing countries  over year 1996 to 2007 in OECDÕs data.


clear
use  "/Users/abusung/Desktop/development paper/R&Dyear.dta"

keep country year98
rename year RD
gen year=1998
save  "/Users/abusung/Desktop/development paper/R&Dyear1.dta",replace


clear
use  "/Users/abusung/Desktop/development paper/R&Dyear.dta"

keep country year99
rename year RD
gen year=1999
save  "/Users/abusung/Desktop/development paper/R&Dyear2.dta",replace


clear
use  "/Users/abusung/Desktop/development paper/R&Dyear.dta"

keep country year00
rename year RD
gen year=2000
save  "/Users/abusung/Desktop/development paper/R&Dyear3.dta",replace


clear
use  "/Users/abusung/Desktop/development paper/R&Dyear.dta"

keep country year01
rename year RD
gen year=2001
save  "/Users/abusung/Desktop/development paper/R&Dyear4.dta",replace


clear
use  "/Users/abusung/Desktop/development paper/R&Dyear.dta"

keep country year02
rename year RD
gen year=2002
save  "/Users/abusung/Desktop/development paper/R&Dyear5.dta",replace

clear
use  "/Users/abusung/Desktop/development paper/R&Dyear.dta"

keep country year03
rename year RD
gen year=2003
save  "/Users/abusung/Desktop/development paper/R&Dyear6.dta",replace

clear
use  "/Users/abusung/Desktop/development paper/R&Dyear.dta"

keep country year04
rename year RD
gen year=2004
save  "/Users/abusung/Desktop/development paper/R&Dyear7.dta",replace

clear
use  "/Users/abusung/Desktop/development paper/R&Dyear.dta"

keep country year05
rename year RD
gen year=2005

append using "/Users/abusung/Desktop/development paper/R&Dyear1.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear2.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear3.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear4.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear5.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear6.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear7.dta"


encode country, generate (code)

xtset code year

xtunitroot llc RD

save  "/Users/abusung/Desktop/development paper/R&Dco.dta",replace


rename var1 country
rename var3 year96
rename var4 year97
rename var5 year98
rename var6 year99
rename var7 year00
rename var8 year01
rename var9 year02
rename var10 year03
rename var11 year04
rename var12 year05
rename var13 year06
rename var14 year07

save  "/Users/abusung/Desktop/development paper/R&Dy.dta"

clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year96
rename year RD
gen year=1996
save  "/Users/abusung/Desktop/development paper/R&Dyear1.dta",replace


clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year97
rename year RD
gen year=1997
save  "/Users/abusung/Desktop/development paper/R&Dyear2.dta",replace

clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"
keep country year98
rename year RD
gen year=1998
save  "/Users/abusung/Desktop/development paper/R&Dyear3.dta",replace


clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year99
rename year RD
gen year=1999
save  "/Users/abusung/Desktop/development paper/R&Dyear4.dta",replace


clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year00
rename year RD
gen year=2000
save  "/Users/abusung/Desktop/development paper/R&Dyear5.dta",replace

clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year01
rename year RD
gen year=2001
save  "/Users/abusung/Desktop/development paper/R&Dyear6.dta",replace

clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year02
rename year RD
gen year=2002
save  "/Users/abusung/Desktop/development paper/R&Dyear7.dta",replace

clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year03
rename year RD
gen year=2003
save  "/Users/abusung/Desktop/development paper/R&Dyear8.dta",replace

clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year04
rename year RD
gen year=2004
save  "/Users/abusung/Desktop/development paper/R&Dyear9.dta",replace
clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year05
rename year RD
gen year=2005
save  "/Users/abusung/Desktop/development paper/R&Dyear10.dta",replace
clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year06
rename year RD
gen year=2006
save  "/Users/abusung/Desktop/development paper/R&Dyear11.dta",replace
clear
use  "/Users/abusung/Desktop/development paper/R&Dy.dta"

keep country year07
rename year RD
gen year=2007



append using "/Users/abusung/Desktop/development paper/R&Dyear1.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear2.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear3.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear4.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear5.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear6.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear7.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear8.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear9.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear10.dta"
append using "/Users/abusung/Desktop/development paper/R&Dyear11.dta"


encode country, generate (code)

xtset code year

xtunitroot llc RD


 
xtreg tfp RD ldd lpc  lfdi lgdp,i(code) re
reg tfp RD ldx lpc lfdi lgdp 
reg tfp RD rdc yr_sch  lfdi lgdp  if dev==1
reg tfp RD rdc yr_sch  lfdi lgdp  if dev==0

keep if country=="Japan"|country=="United State"|country=="Austria"|country=="Canada"|country=="Denmark"|country=="France"|country=="Germany"|country=="Italy"|country=="Spain"|country=="United Kingdom"

predict res_ht, residual
 gen lag1 = res_ht[_n-1]
 
 
 
 
 
clear

use "/Users/abusung/Desktop/development paper/data.dta"

gen tfp=ln(realGDP)-0.3*ln(k)-0.7*ln(worker)

keep if year>=1994 & year<=2009


gen interval=0

replace interval=1 if year==1994
replace interval=1 if year==1995
replace interval=1 if year==1996
replace interval=1 if year==1997


replace interval=2 if year==1998
replace interval=2 if year==1999
replace interval=2 if year==2000
replace interval=2 if year==2001


replace interval=3 if year==2002
replace interval=3 if year==2003
replace interval=3 if year==2004
replace interval=3 if year==2005

replace interval=4 if year==2006
replace interval=4 if year==2007
replace interval=4 if year==2008
replace interval=4 if year==2009

collapse (mean) tfp, by (country interval)


****  save "/Users/abusung/Desktop/development paper/data.dta", replace

******  reg tfp lrd ldt yr_sch lfdi lgdp







import excel "/Users/abusung/Desktop/capital.xlsx", sheet("Sheet1") firstrow clear


replace country = "Macao" if country== "Macao SAR, China "

replace country = "Hong Kong" if country== "Hong Kong SAR, China "
drop if country=="Afghanistan"|country=="Albania "|country=="American Samoa"|country=="Andorra"|country=="Angola"|country=="Antigua and Barbuda"|country=="Arab World"|country=="Aruba"|country=="Bahamas, The"|country=="Bahrain"|country=="Bangladesh"|country=="Barbados"|country=="Belize"|country=="Benin"|country=="Bhutan"|country=="Burundi"|country=="Cameroon"|country=="Cape Verde"|country=="Cayman Islands"
drop if country=="Yemen"  
drop if country=="Curaao"
drop if country=="C™te d'Ivoire"
drop if country=="S‹o Tom and Principe"

drop if country=="Azerbaijan"
drop if country=="Belarus"
drop if country=="Bermuda"
drop if country=="Bosnia and Herzegovina"
drop if country=="Burkina Faso"
drop if country=="Ethiopia"
drop if country=="Faeroe Islands"
drop if country=="Georgia"
drop if country=="Macedonia, FYR"
drop if country=="Madagascar"

drop if country=="Greenland"
drop if country=="Montenegro"
drop if country=="New Caledonia"
drop if country=="Seychelles"
drop if country=="St. Lucia"
drop if country=="St. Vincent and the Grenadines"




drop if country=="Libyan Arab Jamahiriya"
drop if country=="Albania"
drop if country=="Central African Republic"|country=="Chad"|country=="Channel Islands"|country=="Comoros"|country=="Congo, Rep."|country=="Cote d'Ivoire"|country=="Curacao"|country=="Djibouti"|country=="Dominica"|country=="Dominican Republic"|country=="East Asia & Pacific (all income levels)"|country=="East Asia & Pacific (developing only)"|country=="Equatorial Guinea"|country=="Eritrea"|country=="Euro area"
drop if country=="Europe & Central Asia (all income levels)"|country=="Europe & Central Asia (developing only)"|country=="European Union"|country=="Fiji"|country=="French Polynesia"|country=="Gabon"|country=="Gambia, The"|country=="Ghana"|country=="Gibraltar"|country=="Grenada"|country=="Guam"|country=="Guinea"|country=="Guinea-Bissau"|country=="Guyana"|country=="Haiti"|country=="Heavily indebted poor countries (HIPC)"|country=="High income"|country=="High income: OECD"|country=="High income: nonOECD"|country=="Iraq"|country=="Isle of Man"|country=="Kenya"|country=="Kiribati"|country=="Korea, Dem. Rep."|country=="Kosovo"|country=="Latin America & Caribbean (all income levels)"|country=="Latin America & Caribbean (developing only)"|country=="Least developed countries: UN classification"|country=="Lebanon"|country=="Liberia"|country=="Libya"
drop if country=="Liechtenstein"|country=="Low & middle income"|country=="Low income"|country=="Lower middle income"|country=="Malawi"|country=="Maldives"|country=="Mali"|country=="Marshall Islands"|country=="Mauritania"|country=="Mayotte"|country=="Micronesia, Fed. Sts."|country=="Middle East & North Africa (all income levels)"|country=="Middle East & North Africa (developing only)"|country=="Middle income"|country=="Monaco"|country=="Namibia"|country=="Nepal"|country=="Niger"|country=="Nigeria"|country=="North America"|country=="Northern Mariana Islands"|country=="Not classified"|country=="OECD members"|country=="Oman"|country=="Palau"|country=="Papua New Guinea"|country=="Puerto Rico"|country=="Qatar"|country=="Rwanda"|country=="Samoa"|country=="San Marino"|country=="Sao Tome and Principe"|country=="Sierra Leone"|country=="Sint Maarten (Dutch part)"
drop if country=="Solomon Islands"|country=="Somalia"|country=="South Asia"|country=="South Sudan"|country=="St. Kitts and Nevis"|country=="St. Martin (French part)"|country=="Sub-Saharan Africa (all income levels)"|country=="Sub-Saharan Africa (developing only)"|country=="Suriname"|country=="Swaziland"|country=="Syrian Arab Republic"|country=="Tanzania"|country=="Timor-Leste"|country=="Togo"|country=="Tonga"|country=="Turkmenistan"|country=="Turks and Caicos Islands"|country=="Tuvalu"|country=="United Arab Emirates"|country=="Upper middle income"|country=="Uzbekistan"|country=="Vanuatu"|country=="Venezuela, RB"|country=="Virgin Islands (U.S.)"
drop if country=="West Bank and Gaza"|country=="World"|country=="Yemen, Rep."|country=="Zimbabwe"




encode country, generate(code)
tsset code year
xtunitroot llc rd, lag(3) trend
xtwest rd fdip, constant trend lags(1 2)
***http://fmwww.bc.edu/RePEc/bocode/x/xtwest.html***

nharvey rd 
ssc install
predict res_ht, residual
 gen lag1 = res_ht[_n-1]

Keep if country==ÓArgentinaÓ
Keep if country==ÓArmeniaÓ
Keep if country==ÓAustraliaÓ
Keep if country==ÓAustriaÓ
Keep if country==ÓAzerbaijanÓ
Keep if country==ÓBelarusÓ
Keep if country==ÓBelgiumÓ
Keep if country==ÓBulgariaÓ
Keep if country==ÓCanadaÓ
Keep if country==ÓChinaÓ
Keep if country==ÓColombiaÓ
Keep if country==ÓCosta RicaÓ
Keep if country==ÓCubaÓ
Keep if country==ÓCzech RepublicÓ
Keep if country==ÓDenmarkÓ
Keep if country==ÓEcuadorÓ
Keep if country==ÓFinlandÓ
Keep if country==ÓFranceÓ
Keep if country==ÓGermanyÓ
Keep if country==ÓGreeceÓ
Keep if country==ÓHungaryÓ
Keep if country==ÓIcelandÓ
Keep if country==ÓIndiaÓ
Keep if country==ÓIrelandÓ
Keep if country==ÓIsraelÓ
Keep if country==ÓItalyÓ
Keep if country==ÓJapanÓ
Keep if country==ÓKazakhstanÓ
Keep if country==ÓKorea, Rep. Ó
Keep if country==ÓKuwaitÓ
Keep if country==ÓKyrgyz RepublicÓ
Keep if country==ÓLatviaÓ
Keep if country==ÓLithuaniaÓ
Keep if country==ÓMacedonia, FYRÓ
Keep if country==ÓMadagascarÓ
Keep if country==ÓMalaysiaÓ
Keep if country==ÓMexicoÓ
Keep if country==ÓMongoliaÓ
Keep if country==ÓNetherlandsÓ
Keep if country==ÓNew ZealandÓ
Keep if country==ÓNorwayÓ
Keep if country==ÓPakistanÓ
Keep if country==ÓPanamaÓ
Keep if country==ÓPolandÓ
Keep if country==ÓPortugalÓ
Keep if country==ÓRomaniaÓ
Keep if country==ÓRussian FederationÓ
Keep if country==ÓSerbiaÓ
Keep if country==ÓSingaporeÓ
Keep if country==ÓSlovak RepublicÓ
Keep if country==ÓSloveniaÓ
Keep if country==ÓSpainÓ
Keep if country==ÓSwedenÓ
Keep if country==ÓThailandÓ
Keep if country==ÓTrinidad and TobagoÓ
Keep if country==ÓTurkeyÓ
Keep if country==ÓUkraineÓ
Keep if country==ÓUnited KingdomÓ
Keep if country==ÓUnited StatesÓ

gen lx=ln(X)

gen lk=ln(K)
gen ln=ln(N)



 gen tfp= lx-0.3*lk-0.7*ln




