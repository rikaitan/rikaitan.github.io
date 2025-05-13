#!/bin/bash

python -m venv .venv
source .venv/bin/activate
pip install $(grep -Po '(?<=pip install).*' .github/workflows/ci.yml | xargs)
mkdocks serve
