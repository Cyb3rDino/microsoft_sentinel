# Setup MMA Agent to forward Syslog (CEF) to Microsoft Log Analytics

## Prerequisits
sudo apt install python-is-python3 <br>
sudo apt install gdb

## Onboard MMA
mkdir mma <br>
cd mma<br>
wget https://raw.githubusercontent.com/Microsoft/OMS-Agent-for-Linux/master/installer/scripts/onboard_agent.sh<br>
sh onboard_agent.sh -w <WorkspaceID> -s <WorkspaceKey> -d opinsights.azure.com<br>

## Troubleshooting MMA

sudo /opt/microsoft/omsagent/bin/troubleshooter<br>

## Prep for Syslog CEF Forwarding

sudo apt install mlocate<br>
sudo apt install policycoreutils<br>

## Setup Syslog CEF Forwarding

sudo wget -O cef_installer.py https://raw.githubusercontent.com/Azure/Azure-Sentinel/master/DataConnectors/CEF/cef_installer.py&&sudo python cef_installer.py <WorksapceID> <WorkspaceKey>

## Configuration Syslog forwarding

sudo nano 95-omsagent.conf<br>

https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-sources-syslog#configure-syslog-on-linux-agent<br>