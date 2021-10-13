#!/bin/bash

VENV_BASE="$1"

virtualenv "${VENV_BASE}/pydio-sync-venv"
source "${VENV_BASE}/pydio-sync-venv/bin/activate"
cd /root/pydio-sync
pip install -r src/pydio/sdkremote/requirements.txt
pip install -r requirements.txt
