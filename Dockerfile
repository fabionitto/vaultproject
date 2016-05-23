FROM centos:6.7
MAINTAINER Fabio Nitto "fabio.nitto@gmail.com"

COPY vault.hcl /etc/vault.hcl

RUN yum update -y \
  && yum install -y wget \
  && wget https://releases.hashicorp.com/vault/0.5.2/vault_0.5.2_linux_amd64.zip \
  && unzip vault_0.5.2_linux_amd64.zip \
  && mv vault /usr/local/bin/ \
  && rm -f vault_0.52._linux_amd64.zip

EXPOSE 8200
ENTRYPOINT [ "vault" ]
CMD[ "server", "-config", "/etc/vault.hcl" ]
