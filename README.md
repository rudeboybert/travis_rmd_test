# testing_travis

Testing travis-ci on R Markdown. Things to keep in mind:

* No explicit activiation of travis-ci required if you commit a .travis.yml file
* First time running will take a while to install R and packages and cache them, 
especially `tidyverse`. Approximately 15min.
* Students would be responsible for adding all packages used (both CRAN and github versions) to `DESCRIPTION`
* TODO: Record a loom screencast demonstrating all of this