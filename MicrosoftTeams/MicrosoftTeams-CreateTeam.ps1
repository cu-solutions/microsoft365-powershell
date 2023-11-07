
# Microsoft Learn
# https://learn.microsoft.com/en-us/powershell/module/teams/new-team?view=teams-ps

# Required Module(s)
# Install-Module -Name MicrosoftTeams

# Run Script
#.\MicrosoftTeams-CreateTeam.ps1 -TenantId "TenantId" -DisplayName "DisplayName" -Description "Description" -Visibility "Visibility"

param(
[string]$TenantId,
[string]$DisplayName,
[string]$Description,
[string]$Visibility
)

#Connect to MicrosoftTeams
Connect-MicrosoftTeams -TenantId $TenantId

#Create new Teams 
New-Team -DisplayName $DisplayName -Description $Description -Visibility $Visibility 