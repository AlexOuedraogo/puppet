#!/bin/sh
sudo puppet apply /root/git/puppet/environments/production/modules/puppet/manifests/site.pp --modulepath=/root/git/puppet/environments/production/modules/ $*
