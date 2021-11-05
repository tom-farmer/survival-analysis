# Learning Survival Analysis

## Background
This repo serves to document my learning of survival analysis basics and modeling techniques.  I list resources I found most useful, along with my code adapted from these sources. 

Along the way I try to make comparisons to actuarial experience analysis techniques (typical exposure-based approaches to mortality and persistency) where possible.  Trying to bridge the gap between these two worlds could result in more accurate mortality modeling for pricing and financial modeling purposes.

The rough order that I made these notebooks in is:
 1. kaplan-meier.Rmd
 2. cph.Rmd
 3. surv-ml.Rmd
 4. survival-exploration.ipynb

## Environment
I used a docker container to run RStudio in order to make this a bit more reproducible if I come back to run it again.  Used the rocker/tidyverse:4.0.5 image, the specifics can be found in the run_rstudio.sh script.  If you have docker, run that script once to initialize and start the container.  Restart the container with `docker start survival-analysis` if it isn't running at some point in the future.  Navigate to http://localhost:8787/ to open RStudio once the container is running.  Running docker locally doesn't have great performance for training models, but nothing in this repo is too computationally expensive for a small container.

For the Python code, I used Anaconda and Jupyter Notebook.  The package versions for that conda environment are listed in environment.yml.

## Resources:

### General
- [Survival Analysis Wikipedia Page](https://en.wikipedia.org/wiki/Survival_analysis)
- [SOA Experience Study Calculations](https://www.soa.org/globalassets/assets/Files/Research/2016-10-experience-study-calculations.pdf)

### Survival Analysis in R
- [R survival package documentation](https://cran.r-project.org/web/packages/survival/survival.pdf)
- [Cox Proportional-Hazards Regression for Survival Data in R](https://socialsciences.mcmaster.ca/jfox/Books/Companion/appendices/Appendix-Cox-Regression.pdf)
- [CRAN Task View: Survival Analysis](https://cran.r-project.org/web/views/Survival.html)
- [Survival Analysis with R](https://rviews.rstudio.com/2017/09/25/survival-analysis-with-r/)
- [Survival Ensembles in R](http://amunategui.github.io/survival-ensembles/)

### Survival Analysis in Python
- [scikit-survival](https://scikit-survival.readthedocs.io/en/stable/index.html#)