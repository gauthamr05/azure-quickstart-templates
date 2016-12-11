### Simple deployment of a VM Scale Set of Linux VMs behind a load balancer with NAT rules and Autoscale the same ###

<p>
Deploy Tracker <br>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgauthamr05%2Fazure-quickstart-templates%2Fvesta%2Fvesta-vmss-linux-nat-autoscale%2Fazuredeploy-Tracker.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fgauthamr05%2Fazure-quickstart-templates%2Fvesta%2Fvesta-vmss-linux-nat-autoscale%2Fazuredeploy-Tracker.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
</p>

<p>
Deploy Reporter <br>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgauthamr05%2Fazure-quickstart-templates%2Fvesta%2Fvesta-vmss-linux-nat-autoscale%2Fazuredeploy-Reporter.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fgauthamr05%2Fazure-quickstart-templates%2Fvesta%2Fvesta-vmss-linux-nat-autoscale%2Fazuredeploy-Reporter.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
</p>

<p>
Deploy Customization <br>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgauthamr05%2Fazure-quickstart-templates%2Fvesta%2Fvesta-vmss-linux-nat-autoscale%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fgauthamr05%2Fazure-quickstart-templates%2Fvesta%2Fvesta-vmss-linux-nat-autoscale%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
</p>

This template allows you to deploy a simple VM Scale Set of Linux VMs using the latest patched version of Ubuntu Linux 15.10 or 14.04.4-LTS. To connect from the load balancer to a VM in the scale set, you would go to the Azure Portal, find the load balancer of your scale set, examine the NAT rules, then connect using the NAT rule you want. For example, if there is a NAT rule on port 50000, you could use the following command to connect to that VM:

ssh -p 50000 {username}@{public-ip-address}

PARAMETER RESTRICTIONS
======================

vmssName must be 3-61 characters in length. It should also be globally unique across all of Azure. If it isn't globally unique, it is possible that this template will still deploy properly, but we don't recommend relying on this pseudo-probabilistic behavior.
instanceCount must be 100 or less.

The Autoscale rules are configured as follows
- sample for CPU (\\Processor\\PercentProcessorTime) in each VM every 1 Minute
- if the Percent Processor Time is greater than 50% for 5 Minutes, then the scale out action (add more VM instances, one at a time) is triggered
- once the scale out action is completed, the cool down period is 1 Minute
