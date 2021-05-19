#!/usr/bin/env bash

set -e

cd /tmp
git clone git@github.com:jedimasterjonny/ubuntsible.git
pushd ubuntsible
cp /home/jonny/vault-password .vault-password
ansible-playbook --vault-password-file=/home/jonny/vault-password playbooks/regular-run.yml
popd
rm -rf ubuntsible
