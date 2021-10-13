# docker-pydio-sync-build

Docker build environment for [pydio-sync](https://github.com/pydio/pydio-sync)

## Introduction

[Pydio](https://pydio.com/) is an open-core, self-hosted Document Sharing & Collaboration software for organizations.

Pydio 8 is considered EOL since end of 2019 and had it's [last security release 2020/01/10](https://pydio.com/en/community/releases/pydio-core/pydio-core-pydio-enterprise-825-hotfix-824).

Pydio-sync is the synchronization client for [Pydio 8](https://pydio.com/en/blog/type/release-note?component%5B0%5D=69&type%5B0%5D=235&license=All), a sync & share solution.

The last listed release on Github is v1.2.5, see: https://github.com/pydio/pydio-sync/releases
and source on Github hasn't been updated for quite a while now.

There are more [releases](https://download.pydio.com/pub/pydio-sync/release/) + [development builds](https://download.pydio.com/pub/pydio-sync/develop/) on the Pydio Download Server but it is unclear which version does work and which don't.

Pydio-sync needs Python 2.7 which has reached its [EOL in 2020-01-01](https://devguide.python.org/devcycle/#end-of-life-branches).

There have been some [hacks](https://github.com/pydio/pydio-sync/issues/182) to make pydio-sync run on Debian/buster + Debian/bullseye, but after the Let's Encrypt Root certificate has been [expired](https://github.com/pydio/pydio-sync/issues/184), pydio-sync failed to stop working entirely.

And as the build instructions are also out of date, it was not possible to rebuild an updated client.

This docker image build a Python2 virtualenv environment which can be used in Debian/bullseye to run pydio-sync.

Disclaimer: Pydio 8 is EOL! You should really update to Pydio Cells as soon as possible.
The migration documentation can be found here: https://pydio.com/en/docs/cells/v2/migrate-pydio-8-cells

## Quick-Start

Get the source:
```
git clone https://github.com/pydio/pydio-sync
cd pydio-sync
git submodule update --init
cd ..
```

Build the Python2 virtual environment for pydio-sync and build pydio-sync:
```
# review/edit .env

docker-compose build
docker-compose up
docker-compose down
```

Install and run pydio-sync:
```
sudo mv opt/pydio-sync-venv /opt
source /opt/pydio-sync-venv/bin/activate
python2 pydio-sync/build/lib.linux-x86_64-2.7/pydio/main.py
```
