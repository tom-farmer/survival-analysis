# Learning Survival Analysis

## Background
This repo documents my learning of survival analysis basics and modeling techniques.  I list resources I found most useful, along with my code adapted from these sources. Along the way I try to make comparisons to actuarial experience analysis techniques (exposure-based approaches to mortality and persistency) where possible.

## Environment
I used a docker container to run RStudio in order to make this a bit more reproducible if I come back to run it again.  Used the rocker/tidyverse:4.0.5 image, the specifics can be found in the run_rstudio.sh script.  If you have docker, run that script once to initialize and start the container.  Restart the container with `docker start survival-analysis` if it isn't running at some point in the future.  Navigate to http://localhost:8787/ to open RStudio once the container is running.  Running docker locally doesn't have great performance for training models, but nothing in this repo is too computationally expensive for a small container.

For the Python code, I used Anaconda and Jupyter Notebook.  The package versions for that conda environment are listed in environment.yml files

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
- [lifelines](https://lifelines.readthedocs.io/en/latest/index.html)
- [pysurvival](https://square.github.io/pysurvival/)

### Deep Learning Approaches

#### Youtube Videos:
 - [Predicting Time-to-Event Outcomes - A Tour of Survival Analysis from Classical to Modern](https://www.youtube.com/watch?v=G5Q-JuVzFE0)
  - [website](https://sites.google.com/view/survival-analysis-tutorial)
 - [Deep Learning For Survival Analysis: Louise Ferbach, Scor Actuary Data Scientist](https://www.youtube.com/watch?v=-vmV4qA0ztQ)
 - https://www.youtube.com/watch?v=VxjfI7vkjhU

#### Papers:
 - [Cox-Time (pycox package)](https://arxiv.org/abs/1907.00825)
 - [SurvNet](https://www.frontiersin.org/articles/10.3389/fonc.2020.588990/full#f2)
 - [DeepSurv](https://bmcmedresmethodol.biomedcentral.com/track/pdf/10.1186/s12874-018-0482-1.pdf)
 - [Cox-PASNet](https://bmcmedgenomics.biomedcentral.com/articles/10.1186/s12920-019-0624-2)
 - [Deep Kernel Survival Analysis and Subject-Specific Survival Time Prediction Intervals](https://arxiv.org/abs/2007.12975)
 - [Survival Kernets: Scalable and Interpretable Deep Kernel Survival Analysis with an Accuracy Guarantee](https://arxiv.org/abs/2206.10477)
 - [A scalable discrete-time survival model for neural networks](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6348952/)
 - [DeepHit: A Deep Learning Approach to Survival Analysis with Competing Risks](http://medianetlab.ee.ucla.edu/papers/AAAI_2018_DeepHit.pdf)

#### Software:
 - https://github.com/havakv/pycox
 - https://github.com/jaredleekatzman/DeepSurv
 - https://pytorch.org/tutorials/
 - https://github.com/DataX-JieHao/Cox-PASNet

#### Datasets:
 - KKBox
