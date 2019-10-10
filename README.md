This very simple sample setup allows you to control access to your IBM Cloud Kubernetes Service (IKS) cluster master
when you provision the cluster with private-only service endpoints (meaning that the master is not available via the public
network, only internally from the private network). If you have a requirement to have a cluster master be protected from the
public network yet you need your operators to be able to access the cluster master without a VPN, you might give this method
a try.

In this example, I've just set up a simple basic auth scheme on the nginx proxy (user1:passw0rd) so that's all that's between
the world and your cluster master. From here, you could set up any number of clever configurations with Nginx with
regards to security and whitelisting clients in certain CIDR ranges, etc. 

**Warning: DO NOT RUN THIS AS-IS IN A CLUSTER WITH PRODUCTION WORKLOADS OR SENSITIVE DATA** 

As I said, security is basically nil on this example and the credentials are in the README for goodness sake, so don't do it.  
