# travis_rmd_test

[![Build Status](https://travis-ci.com/rudeboybert/travis_rmd_test.svg?branch=master)](https://travis-ci.com/rudeboybert/travis_rmd_test)

Automatically test if `.Rmd` R Markdown files "knit" ✅ or not  ❌ using travis-ci.

If you use this repo's RStudio Project contents as a template for assigning student problem sets and projects (in particular the `.travis.yml` & `_build.sh` files), then students will be able to check for themselves on GitHub whether their work is reproducible.

## Instructions

Take it for a test drive!

* If you haven't already, integrate your GitHub account and travis-ci by following steps 1-3 of these [instructions](https://docs.travis-ci.com/user/tutorial/#to-get-started-with-travis-ci)
* Fork and clone a copy of this repo 
* Trigger the first travis build by pushing a commit.
    + For example, a good first commit would be to edit `README.md` -> Line 3 -> replace both instances of `rudeboybert` with your GitHub login. That way the resulting "travis status badge" you see on GitHub.com reflects the pass/fail status of your repo.
    + The first travis build will take a while (approximately 15 minutes) as travis needs to install R and all packages (in particular `tidyverse`). Because R and package builds get cached however, all subsequent travis builds will be much quicker.
* Test the travis detects non-knitting `.Rmd` files
    + Edit `test_me.Rmd` so that it does not knit. Commit and push these changes.
    + Your "travis status badge" should now indicate that the build fails. Click on the badge for the report.
* The user is responsible for adding all packages used in any `.Rmd` file to `.travis.yml` as follows:
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
