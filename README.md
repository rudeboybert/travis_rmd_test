# travis_rmd_test

[![Build Status](https://travis-ci.com/rudeboybert/travis_rmd_test.svg?branch=master)](https://travis-ci.com/rudeboybert/travis_rmd_test)

Automatically test if `.Rmd` R Markdown files "knit" ✅ or not  ❌ using travis-ci on GitHub. 

**Instructors**: If you use this repo's RStudio Project contents as a template for assigning student problem sets and projects (in particular the `DESCRIPTION`, `.travis.yml` & `_build.sh` files), then students will be able to check for themselves on GitHub whether their work is reproducible by looking at the above "travis status badge."

I welcome your comments, questions, and feedback via a GitHub issue! Shout out to [Chester Ismay](https://github.com/ismayc) for his help with travis-ci and to [Katie Kinnaird](https://github.com/kmkinnaird) for brainstorming with me.

## Take it for a test drive!

* Fork and clone a copy of this repo 
* Integrate your GitHub account and travis-ci by following steps 1-3 of these [instructions](https://docs.travis-ci.com/user/tutorial/#to-get-started-with-travis-ci)
* Trigger the first travis build by pushing a commit.
    + For example, a good first commit would be to edit `README.md` -> Line 3 -> replace both instances of `rudeboybert` with your GitHub login. That way the resulting "travis status badge" you see on GitHub.com reflects the pass/fail status of your forked repo (and not `rudeboybert`'s).
    + The first travis build will take a while (approximately 15 minutes) as travis needs to install R and all packages (in particular `tidyverse`). Because R and package builds get cached however, all subsequent travis builds will be much quicker.
* Check that travis returns ❌ if all `.Rmd` files don't knit:
    + Edit `test_me.Rmd` so that it does not knit. Commit and push these changes.
    + You can see real-time updates of the progress of the travis checks at <https://travis-ci.com/YOUR_GITHUB_USERNAME/travis_rmd_test>.
    + After travis checks are done, your "travis status badge" should now read "build: failing" in red. Click on "travis status badge" for the report.
* Check that travis returns ✅ if all `.Rmd` files do knit:
    + Revert the above change to `test_me.Rmd`. Commit and push these changes.
    + You can see real-time updates of the progress of the travis checks at <https://travis-ci.com/YOUR_GITHUB_USERNAME/travis_rmd_test>.
    + After travis checks are done, your "travis status badge" should now read "build: passing" in green. Click on "travis status badge" for the report.


## Things to keep in mind

* The user is responsible for adding all packages used in any `.Rmd` file to `.travis.yml` as follows:
    + CRAN versions under `r_packages`
    + GitHub versions under `r_github_packages`
* `here::here()` is used to handle macOS, windows, and UNIX variations in file path specifications. 
* The `_build.sh` bash file is set up to test if every `.Rmd` file in the repo/RStudio Project folder knits or not.


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
