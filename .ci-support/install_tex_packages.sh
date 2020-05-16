#!/usr/bin/env sh
# Based on https://tex.stackexchange.com/questions/398830/how-to-build-my-latex-automatically-using-travis-ci

# Originally from https://github.com/latex3/latex3

# This script is used for testing using Travis
# It is intended to work on their VM set up: Ubuntu 12.04 LTS
# A minimal current TL is installed adding only the packages that are
# required

# See if there is a cached version of TL available
export PATH=/tmp/texlive/bin/x86_64-linux:$PATH
if ! command -v texlua > /dev/null; then
  # Obtain TeX Live
  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
  tar -xzf install-tl-unx.tar.gz
  cd install-tl-20*

  # Install a minimal system
  ./install-tl --profile=../.ci-support/texlive.profile

  cd ..
fi

# Just including texlua so the cache check above works
# Needed for any use of texlua even if not testing LuaTeX
# tlmgr install luatex
#
# # Other contrib packages: done as a block to avoid multiple calls to tlmgr
# # texlive-latex-base is needed to run pdflatex
# # Take packages from http://ctan.ebinger.cc/tex-archive/systems/texlive/tlnet/archive/
# tlmgr install                    \
#   collection-publishers          \
#   collection-fontsrecommended    \
#   collection-latexextra          \
#   minted                         \
#   hyperref                       \
#   pygmentex                      \
