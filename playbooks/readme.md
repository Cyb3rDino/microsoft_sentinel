# Microsoft Sentinel - Playbooks
--
## Usefull Documentations

[MS // Playbooks Permissions](https://techcommunity.microsoft.com/t5/microsoft-sentinel-blog/microsoft-sentinel-automation-tips-amp-tricks-part-2-playbooks/ba-p/3566369)

## Recommendet Playbooks
[Microsoft Dokumentation about Playbooks](https://learn.microsoft.com/de-de/azure/sentinel/tutorial-respond-threats-playbook?tabs=LAC)

There are playbooks for different usecases. As an example you can use Playbooks for __Incident Information Enrichtment__ , __Auto Remediation__ and ***Allerting***.
So i decided to create a List of Playbooks which i use in different states of Sentinel Projects.<br>

__Level 1__ = Early Project States. Stetting up the Basics of Sentinel<br>
__Level 2__ = Mid Project Status. Working with the First Data<br>
__Level 3__ = Mature Project Status. Using Playbooks to safe Time and Automate as much as possbile.<br>

## Level 1 - Playbooks
### Incident Enrichtment
[Get-GeoFromIpAndTagIncident](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Get-GeoFromIpAndTagIncident)<br>
### Auto Remediation
[Bock AAD User or Admin](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Block-AADUserOrAdmin)
<br>

### Allerting
[Incident-Email-Notification](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Incident-Email-Notification)
<br>
[Send Slack Message (Webhook)](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Send-Slack-Message-Webhook)
<br>

## Level 2 - Playbooks
### Incident Enrichtment
[Enrichment-Sentinel Incident IP (GreyNoise Community)](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Enrich-SentinelIncident-GreyNoiseCommunity-IP)
<br>
[HaveIBeenPwned ? Integration](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/HaveIBeenPwned)
<br>
[Get-MDATPVulnerabilitys](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Get-MDATPVulnerabilities)

### Auto Remediation
[AAD Identity Protection - Mail Response](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/IdentityProtection-EmailResponse)
<br>
[AAD Identity Protection - Teams Response](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/IdentityProtection-TeamsBotResponse)
<br>
[Isolate - Azure Storage Account](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Isolate-AzureStorageAccount)
<br>
[Start-MDEAutomatedInvestigation](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Start-MDEAutomatedInvestigation)

### Allerting
[Send SMS for Allerting](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Send-AzCommunicationsSMSMessage)

## Level 3 - Playbooks
### Incident Enrichtment
[Comment-RemediationSteps](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Comment-RemediationSteps)
<br>
[Get-MDEStatistics](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Get-MDEStatistics)
<br>
[Get-MDEInvestigationPackage](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Get-MDEInvestigationPackage)

### Auto Remediation
[Update Watchlist with Namend Location from Conditional Access](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Update-Watchlist-With-NamedLocation)
<br>
[Update CA Namend Location to Block Login from Torr Network](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Update-NamedLocations-TOR)
<br>
[Block OnPrem AD User](https://github.com/Azure/Azure-Sentinel/tree/master/Playbooks/Block-OnPremADUser)

### Allerting


## Meta Information
## Deplyoment Guide