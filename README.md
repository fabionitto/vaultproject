# Vault Project Container

## Usage ##

Run a Dev server passing an ENVIRONMENT VARIABLE on command line:

docker run -e VAULT_DEV=1 -p 8200:8200 fabionitto/vaultproject


Run a server using a <configuration file>

docker run -v <configuration file>:/etc/vault.hcl -p 8200:8200 fabionitto/vaultproject
