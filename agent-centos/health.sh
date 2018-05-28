#!/bin/bash
check_proc=$(ps aux | grep "/opt/puppetlabs/puppet/bin/puppet agent" | grep -v grep | awk '{ print $8}')
if [ "$check_proc" != "Ssl" ]; then
    exit 1
fi
