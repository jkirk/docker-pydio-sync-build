#!/bin/bash

virtualenv "/opt/pydio-sync-venv"
source "/opt/pydio-sync-venv/bin/activate"
cd /root/pydio-sync
pip install -r src/pydio/sdkremote/requirements.txt
pip install -r requirements.txt
