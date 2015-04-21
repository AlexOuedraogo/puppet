#!/bin/sh
puppet apply /etc/puppetlabs/puppet/environments/production/manifests/site.pp $* --modulepath=/etc/puppetlabs/puppet/environments/production/modules 
