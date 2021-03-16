## InspIRCd Test Network

### About

This repository contains the files which are used to run the [InspIRCd test network](ircs://testnet.inspircd.org:6697/).

The configs in this repository are only intended for testnet use. If you're configuring your server from scratch then you should use the [example configs that are shipped with InspIRCd](https://github.com/inspircd/inspircd/tree/insp3/docs/conf).

### Layout

Files which are shared across instances go in `./common`.

Files which are specific to a specific server go in`./servers`.

Files which are generated on the server (TLS certificates, permchannels config) go in `./ephemeral`.

