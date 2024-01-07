<#---
title: Install package
description: This script will install the package
connection: sharepoint
---

The SharePoint branding package is deployed to the app catalogue. The package is downloaded from the [releases page](https://github.com/365admin/sharepoint-branding/releases)

#>
param (
    [Parameter(Mandatory = $true)]
    [string]$SiteURL
)

Connect-PnPOnline -Url $SiteURL -ClientId $PNPAPPID -Tenant $PNPTENANTID -CertificatePath "$PNPCERTIFICATEPATH" 
<#
## Download App
Specify the path to where the package file will get stored, then download the package from the releases page

#>

$packageFile = "$psscriptroot/koksmat-sharepoint-branding.sppkg"

Invoke-WebRequest "https://github.com/365admin/sharepoint-branding/releases/download/v0.0.1/koksmat-sharepoint-branding.sppkg" 
| Select-Object -ExpandProperty Content | Out-File packageFile

<#
## Add to App Catalogue
Download the package from the releases page
#>

Add-PnPApp -Path packageFile -Publish -SkipFeatureDeployment -Overwrite:$true 

 # with information on the site used for configuration

