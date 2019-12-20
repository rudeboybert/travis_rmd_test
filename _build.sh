#!/bin/sh

Rscript -e 'rmd_files <- list.files(pattern = ".Rmd"); purrr::walk(rmd_files, rmarkdown::render, output_format = "html_document");'