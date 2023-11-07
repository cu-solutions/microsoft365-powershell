
# Microsoft Learn
# https://learn.microsoft.com/en-us/powershell/module/sharepoint-online/add-spoorgassetslibrary?view=sharepoint-ps

# Required Module(s)
# Install-Module -Name Microsoft.Online.SharePoint.PowerShell

# Run Script
#.\SharePointOnline-AddSPOOrgAssetsLibrary.ps1 -TenantUrl "https://<tenant>-admin.sharepoint.com" -LibraryUrl "https://<tenant>.sharepoint.com/sites/branding/templates" -OrgAssetType "OfficeTemplateLibrary" -CdnType "Private"

param(
[string]$TenantUrl,
[string]$LibraryUrl,
[string]$OrgAssetType,
[string]$CdnType
)

#Connect to SharePointOnline
Connect-SPOService -Url $TenantUrl

#Add Library 
Add-SPOOrgAssetsLibrary -LibraryUrl $LibraryUrl -OrgAssetType $OrgAssetType -CdnType $CdnType