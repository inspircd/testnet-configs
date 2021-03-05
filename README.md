## InspIRCd Test Network

### About

This repository contains the files which are used to run the [InspIRCd test network](ircs://testnet.inspircd.org:6697/).

### Layout

Files which are shared across instances go in `./common`.

Files which are specific to a specific server go in`./servers`.

Files which are generated on the server (TLS certificates, permchannels config) go in `./ephemeral`.

