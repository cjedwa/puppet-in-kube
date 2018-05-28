#!/bin/bash
chown -R puppet:puppet /var/log/puppetlabs
puppet config set runinterval 60 --section main
puppet agent --daemonize --logdest /var/log/puppetlabs/puppet/puppet-agent.log --verbose
exec tail -f /var/log/puppetlabs/puppet/puppet-agent.log
