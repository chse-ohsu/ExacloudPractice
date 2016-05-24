# `fread` data files in parallel

This is a real/play example of reading in text data files in parallel.

For context, I needed to reproduce a data set as a check against some discrepancies Ifeoma was seeing.
Ifeoma had a Stata `.do` script, [`APAC_shrink_append.do`](APAC_shrink_append.do) to read in [APAC](https://www.oregon.gov/oha/ohpr/rsch/pages/apac.aspx) episodes of care files, serially.
In this example, I'll read them in parallel using [R](https://www.r-project.org/) on [Exacloud](http://exainfo/) via the [HTCondor](https://research.cs.wisc.edu/htcondor/description.html) job scheduler.

* Ifeoma's original [Stata](APAC_shrink_append.do) script
* My [R](reproIfeoma.R) reproduction
    * My Jupyter [notebook](reproIfeoma.ipynb) I used to test my R script before submitting to HTCondor
* The HTCondor [submit](submit) script
* The HTCondor [log](htcondor.log)
* The R [output](reproIfeoma.txt)
