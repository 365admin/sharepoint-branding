param (
    [Parameter(Mandatory = $true)]
    [string]$SiteURL,
    [Parameter(Mandatory = $true)]
    [string]$packageUrl
)

Connect-PnPOnline -Url $SiteURL -ClientId $PNPAPPID -Tenant $PNPTENANTID -CertificatePath "$PNPCERTIFICATEPATH" 

# Upload Package to App Catalog

# Package will be downloaded from Git release

# $package = Add-PnPApp -Path $packageUrl will be called and the extention configured
# with information on the site used for configuration

<# 
Note that Koksmat will append a few lines of code here 
which will take the value of $result, convert it to JSON
and store it in a file called output.json
#>