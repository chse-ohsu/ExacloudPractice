# `fread`ing data files in parallel

This is a real/play example of reading in text data files in parallel.

For context, I needed to reproduce a data set as a check against some discrepancies Ifeoma was seeing.
Ifeoma had a Stata `.do` script, [`APAC_shrink_append.do`](APAC_shrink_append.do) to read in [APAC](https://www.oregon.gov/oha/ohpr/rsch/pages/apac.aspx) episodes of care files, serially.
In this example, I'll read them in parallel using [R](https://www.r-project.org/) on [Exacloud](http://exainfo/).
