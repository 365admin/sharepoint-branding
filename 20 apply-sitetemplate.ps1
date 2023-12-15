param (
    [Parameter(Mandatory = $true)]
    [string]$SiteURL,
    [Parameter(Mandatory = $true)]
    [string]$siteTemplateDownloadLink
)

Connect-PnPOnline -Url $SiteURL -ClientId $PNPAPPID -Tenant $PNPTENANTID -CertificatePath "$PNPCERTIFICATEPATH" 

# Template will be downloaed, unzipped to XXX

# Invoke-PnPSiteTemplate will be called with -Path pointing to downloaded template


<# 
Note that Koksmat will append a few lines of code here 
which will take the value of $result, convert it to JSON
and store it in a file called output.json
#>