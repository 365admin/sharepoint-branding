param (
    [Parameter(Mandatory = $true)]
    [string]$SiteURL,
    [Parameter(Mandatory = $true)]
    [string]$siteTemplateDownloadLink
)

Connect-PnPOnline -Url $SiteURL -ClientId $PNPAPPID -Tenant $PNPTENANTID -CertificatePath "$PNPCERTIFICATEPATH" 


# Template will be downloaded, currently just the xml file
# in the future this will be a zip file also containing
# the assets

Invoke-WebRequest "https://github.com/365admin/sharepoint-branding/releases/download/v0.0.1/template.xml" 
| Select-Object -ExpandProperty Content | Out-File "$psscriptroot/template.xml"

Invoke-PnPSiteTemplate  -Path "$psscriptroot/template.xml"

$result = 1

<# 
Note that Koksmat will append a few lines of code here 
which will take the value of $result, convert it to JSON
and store it in a file called output.json
#>