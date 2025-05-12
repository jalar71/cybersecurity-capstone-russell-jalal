# Assignment 7 – Nagios Monitoring Deployment

This assignment involved installing Nagios Core on a Linux VM, migrating it to VMware ESXi, and configuring it to monitor multiple systems. One of the monitored systems (localhost) was configured with full service checks, while other VMs were monitored for basic availability.

## 🧰 Tools Used
- Nagios Core (on Ubuntu Linux)
- VMware ESXi
- SSH and Ping checks
- NRPE (optional – not used in this setup)

## 🖥️ Monitored Hosts

| Host        | IP Address     | Monitored Services           |
|-------------|----------------|-------------------------------|
| **localhost** (Nagios VM) | 127.0.0.1       | Ping, Load, Users, HTTP, Disk, SSH, Swap, Processes |
| Windows 7 VM | 10.109.60.3   | Ping only                    |
| CentOS VM    | 10.32.99.99  | Ping only                    |

## 🛠 Key Configuration Notes

- Installed Nagios using apt packages and manual setup
- Added host definitions to `/usr/local/nagios/etc/objects/`
- No external agents used (NRPE not installed on CentOS or Win7)
- Web interface accessed via: `http://<nagios-vm-ip>/nagios`

## 📂 Files Included

- `monitored_hosts_list.txt` – Summary of hosts and monitored services
- `nagios_config_centOS` – config entries for CentOS system
- `screenshot_dashboard.png` – Web UI showing status of checks
- `nagios_config_win_7` – config entries for Windows 7 system
