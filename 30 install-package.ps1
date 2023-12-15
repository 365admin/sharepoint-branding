param (
    [Parameter(Mandatory = $true)]
    [string]$SiteURL
)

# Connect-PnPOnline -Url $SiteURL -ClientId $PNPAPPID -Tenant $PNPTENANTID -CertificatePath "$PNPCERTIFICATEPATH" 
# Upload Package to App Catalog

Invoke-WebRequest "https://github.com/365admin/sharepoint-branding/releases/download/v0.0.1/koksmat-sharepoint-branding.sppkg" 
| Select-Object -ExpandProperty Content | Out-File "$psscriptroot/koksmat-sharepoint-branding.sppkg"

# $package = Add-PnPApp -Path $packageUrl will be called and the extention configured
# with information on the site used for configuration

<# 
Note that Koksmat will append a few lines of code here 
which will take the value of $result, convert it to JSON
and store it in a file called output.json
#>