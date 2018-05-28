# Testing environment in kube

Planning to use serverspec, puppet, kubernetes to build out testing environments. At time of writing, bringing up the server and agent deployments and the server service gets an operational puppet server/agent setup. 

Clunky use of dumb init, fix that later. 

### Next step:
* Populate puppet rith r10k
* integrate serverspec stuff for testing
* Maybe build nginx reverse proxy to display check results
* test multi agent builds with various services. Maybe get ipsec tunnels up between containers or elasticsearch cross cluster searches working.
