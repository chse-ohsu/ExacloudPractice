*****Ifeoma Muoto
******Last date modified 5.4.2016
*****This file is to  prepare the individual APAC episode files for merging
*****Some of the dx and px variables are numeric and need to be converted to strings
*****There are some variables that we will likely never use and these need to be dropped to reduce the size of the files
*****I decided to also drop males and women less than 10 or greater than 55 at this point. This step was done much later in the code we recived from CHSE
****This file does both of the above for each episode file
****I will save the new files with the _1, _2, endings etc to differentiate them from the pt1, pt2 files
*****After appending all the files, delete the intermediate files.


clear
set more off

cd "D:\DataFiles\APAC\Data"

use APAC_episodes_2010pt1, clear

drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1955|yob>2000
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2010_1, replace

clear
set more off
use APAC_episodes_2010pt2, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1955|yob>2000
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2010_2, replace

clear
set more off
use APAC_episodes_2010pt3, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1955|yob>2000
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2010_3, replace

clear
set more off
use APAC_episodes_2010pt4, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1955|yob>2000
tostring px9 px10 px11 px12 px13, replace
tostring  dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2010_4, replace


******2011
****
clear
set more off
use APAC_episodes_2011pt1, clear

drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1956|yob>2001
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2011_1, replace

clear
set more off
use APAC_episodes_2011pt2, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1956|yob>2001
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2011_2, replace

clear
set more off
use APAC_episodes_2011pt3, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1956|yob>2001
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2011_3, replace

clear
set more off
use APAC_episodes_2011pt4, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1956|yob>2001
tostring px9 px10 px11 px12 px13, replace
tostring  dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2011_4, replace

****2012
clear
set more off
use APAC_episodes_2012pt1, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1957|yob>2002
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2012_1, replace

clear
set more off
use APAC_episodes_2012pt2, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1957|yob>2002
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2012_2, replace

clear
set more off
use APAC_episodes_2012pt3, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1957|yob>2002
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2012_3, replace

clear
set more off
use APAC_episodes_2012pt4, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1957|yob>2002
tostring px9 px10 px11 px12 px13, replace
tostring  dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2012_4, replace

****2013
clear
set more off
use APAC_episodes_2013pt1, clear

drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1958|yob>2003
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2013_1, replace

clear
set more off
use APAC_episodes_2013pt2, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1958|yob>2003
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2013_2, replace

clear
set more off
use APAC_episodes_2013pt3, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1958|yob>2003
tostring px9 px10 px11 px12 px13, replace
tostring dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2013_3, replace

clear
set more off
use APAC_episodes_2013pt4, clear
drop etgcode etgdesc etgsev etgind etgtype etgnum etgdays etgprorate etgoutlier etglow etghigh
drop v73 v74 v75 v76 v77 v78
drop if gender=="M"
drop if yob<1958|yob>2003
tostring px9 px10 px11 px12 px13, replace
tostring  dx11 dx12 dx13, replace
tostring proccode, replace
tostring mod1 mod2 mod3 mod4, replace
save APAC_episodes_2013_4, replace



use APAC_episodes_2010_1, clear

append using APAC_episodes_2010_2, force
append using APAC_episodes_2010_3, force
append using APAC_episodes_2010_4, force

append using APAC_episodes_2011_1, force
append using APAC_episodes_2011_2, force
append using APAC_episodes_2011_3, force
append using APAC_episodes_2011_4, force

append using APAC_episodes_2012_1, force
append using APAC_episodes_2012_2, force
append using APAC_episodes_2012_3, force
append using APAC_episodes_2012_4, force

append using APAC_episodes_2013_1, force
append using APAC_episodes_2013_2, force
append using APAC_episodes_2013_3, force
append using APAC_episodes_2013_4, force



save APAC_episodes_childbearingwomen.dta, replace




*****delete intermediate files
clear
set more off

cd "D:\DataFiles\APAC\Data"

erase APAC_episodes_2010_1.dta
erase APAC_episodes_2010_2.dta
erase APAC_episodes_2010_3.dta
erase APAC_episodes_2010_4.dta

erase APAC_episodes_2011_1.dta
erase APAC_episodes_2011_2.dta
erase APAC_episodes_2011_3.dta
erase APAC_episodes_2011_4.dta

erase APAC_episodes_2012_1.dta
erase APAC_episodes_2012_2.dta
erase APAC_episodes_2012_3.dta
erase APAC_episodes_2012_4.dta

erase APAC_episodes_2013_1.dta
erase APAC_episodes_2013_2.dta
erase APAC_episodes_2013_3.dta
erase APAC_episodes_2013_4.dta
