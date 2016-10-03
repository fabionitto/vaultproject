[![](https://images.microbadger.com/badges/image/fabionitto/vaultproject.svg)](https://microbadger.com/images/fabionitto/vaultproject "Get your own image badge on microbadger.com")

# Vault Project Container

## Description

## Usage

Run a Dev server passing an ENVIRONMENT VARIABLE on command line:

```bash
docker run -e VAULT_DEV=1 -p 8200:8200 fabionitto/vaultproject
```

Run a server using a <configuration file>

```bash
docker run --cap-add=IPC_LOCK -v <configuration file>:/etc/vault.hcl -p 8200:8200 fabionitto/vaultproject
```

## Example


