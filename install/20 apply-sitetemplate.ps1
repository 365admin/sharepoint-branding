<#---
title: "Apply site template"
description: This script will get the app catalogue URL
connection: sharepoint
---

### Hello world

#>

param (
    [Parameter(Mandatory = $true, HelpMessage = "The site URL" )]
    [string]$SiteURL
)


Connect-PnPOnline -Url $SiteURL -ClientId $PNPAPPID -Tenant $PNPTENANTID -CertificatePath "$PNPCERTIFICATEPATH" 

<#

## Download the template
Template will be downloaded, currently just the xml file in the future this will be a zip file also containing the assets
#>
Invoke-WebRequest "https://github.com/365admin/sharepoint-branding/releases/download/v0.0.0.2/template.xml" 
| Select-Object -ExpandProperty Content | Out-File "$psscriptroot/template2.xml"

<#
## Apply the template
#>
Invoke-PnPSiteTemplate  -Path "$psscriptroot/template.xml"

$result = 1

