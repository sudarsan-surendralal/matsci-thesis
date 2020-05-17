# matsci-thesis

[![Build Status](https://travis-ci.com/sudarsan-surendralal/matsci-thesis.svg?branch=master)](https://travis-ci.com/sudarsan-surendralal/matsci-thesis)

A clear and easy to use template for academic thesis optimized for materials
science students using TeX.

## Purpose

TeX is a beautiful language that is perfect for academic thesis writing especially
for STEM fields. However, there is a little bit of a learning curve for new TeX users
and students spend a lot of time setting up an appropriate tex style for their needs
and the installation of the required tex packages which can become tedious and messy.
This repository provides an easy to use, tested, and well documented template for
such users which can be easily adapted.

## Structure of this repository

The [source](source) folder contains all the necessary tex files. The [thesis.tex](source/thesis.tex)
is the main tex file that needs to be compiled and [thesis.bib](source/thesis.bib)
is the bibliography file where all `bibtex` entries are put. The [commands.tex](source/commands.tex)
file contains all new command definitions, document setting, and the list of packages
to be used. The [figures](source/figures) folder is supposed to contain all the figures.
The main text of your thesis is supposed to be put in the [chapters](source/chapters)
folder.

## Documentation

Unlike regular programming languages, it's a little cumbersome to provide documentation
for TeX files. So comments starting with the `%` symbol are useful to understand what's
going on.

## Acknowledgements

Thanks to [Felix Lochner](https://github.com/FeLoch) for help with `biblatex` formats and [Jan Janssen](https://github.com/jan-janssen) for help with continuous integration.
