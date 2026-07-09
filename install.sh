#!/usr/bin/env bash

git clone https://github.com/qualvalordex/awesome-alias.git /tmp/qvdx-aliases

cd /tmp/qvdx-aliases

python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

python install.py
