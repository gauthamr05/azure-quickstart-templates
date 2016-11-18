# Simple deployment of a VM Scale Set of Linux VMs behind a load balancer with NAT rules

<a href="https%3A%2F%2Fportal.azure.com%2F%23create%2FMicrosoft.Template%2Furi%2Fhttps%3A%2F%2Fraw.githubusercontent.com%2Fgauthamr05%2Fazure-quickstart-templates%2Fvesta%2Fvesta-classifier-test1%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http%3A%2F%2Farmviz.io%2F%23%2F%3Fload%3Dhttps%3A%2F%2Fraw.githubusercontent.com%2Fgauthamr05%2Fazure-quickstart-templates%2Fvesta%2Fvesta-classifier-test1%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template allows you to deploy a simple VM Scale Set of Linux VMs using the latest patched version of 14.04.4-LTS. To connect from the load balancer to a VM in the scale set, you would go to the Azure Portal, find the load balancer of your scale set, examine the NAT rules, then connect using the NAT rule you want. For example, if there is a NAT rule on port 50000, you could use the following command to connect to that VM:

ssh -p 50000 {username}@{public-ip-address}

A custom VM image has been used to create new VMs.

PARAMETER RESTRICTIONS
======================

vmssName must be 3-61 characters in length. It should also be globally unique across all of Azure. If it isn't globally unique, it is possible that this template will still deploy properly, but we don't recommend relying on this pseudo-probabilistic behavior.
instanceCount must be 100 or less.
