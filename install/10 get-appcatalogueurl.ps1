<#---
title: "Get App Catalogue URL"
description: This script will get the app catalogue URL
connection: sharepoint
---

### Hello world

#>

$result = Get-PnPTenantAppCatalogUrl
Write-Host "App Catalog URL: $result"

