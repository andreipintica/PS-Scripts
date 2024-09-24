<#
.SYNOPSIS
Create Azure vnet selective peering
.DESCRIPTION
Create Azure vnet selective peering
.NOTES
First create your resources and you can copy/paste the script and to run it from Azure Cloud Shell. 
Name: Azure-create-privateip
Version: 1.0
Author: Andrei Pintica (@AndreiPintica)
#>

#Enable the feature
az feature register -- namespace Microsoft.Network -- name AllowMultiplePeeringLinksBetweenVnets

#Create your peering
az network vnet peering create --name test-peer --local-subnet-names subnet2 --remote-subnet-names default2 --peer-complete-vnets false --vnet-name vnet1 --remote-vnet vnet2 -g test      
