# testing_travis

[![Build Status](https://travis-ci.com/rudeboybert/testing_travis.svg?branch=master)](https://travis-ci.com/rudeboybert/testing_travis)

Automating tests of reproducibility of `.Rmd` files within an RStudio Project using travis-ci. 

## Instructions

* Integrate GitHub and travis-ci using these [instructions](https://docs.travis-ci.com/user/tutorial/)
* Trigger first travis build by making a commit. For example, a good first commit would be in line 3 above, change `rudeboybert` to student GitHub login, so that travis badge reflects their builds.
* First travis build will take a while (approximately 15 minutes) as travis needs to install R and all packages (in particular `tidyverse`). Because R and package builds get cached however, all subsequent travis builds will be much quicker.
* Students would be responsible for adding all packages used to `.travis.yml` as follows:
    + CRAN versions under `r_packages`
    + GitHub versions under `r_github_packages`

## Things to keep in mind

* `here::here()` is used to handle macOS, windows, UNIX variations in file path specifications. 
* The `_build.sh` bash file is set up to test if every `.Rmd` file in project folder knits or not.


## TODO

* Record a loom screencast demonstrating all of this


* Vouch for using `usethis` package to initiate GitHub from a downloaded .zip file of repo.

```
# Enable git in an RStudio project
usethis::use_git()
# Restart R, then follow these steps to create a new repo on GitHub and make 
# first commit of contents of RStudio Project
usethis::use_github()
```
