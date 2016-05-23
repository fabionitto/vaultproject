#!/bin/bash

set -e

if [ "$VAULT_DEV" ]; then
  exec vault server -dev -dev-listen-address="0.0.0.0:8200"
else
  exec vault server -config /etc/vault.hcl
fi

