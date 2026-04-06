This script introduces basic simulation-based methods through several toy examples.

It includes:

1. MCtheta.R(m)
A Monte Carlo example that repeatedly generates two standard normal random variables and estimates a quantity based on their absolute difference.

2. Bootstrap.R(m)
A simple bootstrap example that resamples a small score dataset and estimates the variability of a variance-based statistic.

3. MCvar.R(n, m)
A Monte Carlo experiment for estimating the variability of a sample variance when data are generated from a normal distribution.

4. Bootstrap_var.R(m)
A bootstrap-based variance estimation example using a fixed sample of centered scores.

This file is useful for understanding how repeated random sampling or resampling can approximate sampling distributions and standard errors.

# Requirements
You only need base R to run these scripts.

No external packages are required.

# How to Run

In R or RStudio, run:

source("mc method_upload.R")

Because example function calls are already included inside the scripts, sourcing the files will immediately execute the demonstrations.
