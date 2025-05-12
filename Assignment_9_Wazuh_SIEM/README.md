# Assignment 10 – Wazuh SIEM Deployment

This assignment involved installing the Wazuh all-in-one stack on a Linux VM within a local VMware Workstation environment. The VM was then migrated to a VMware ESXi server. Wazuh was configured to perform Security Information and Event Management (SIEM) tasks by monitoring the same VM it was running on.

## 🧰 Tools Used

- Wazuh All-in-One Stack (Manager, Agent, Filebeat, Dashboard)
- Ubuntu Linux VM
- VMware ESXi
- Web Browser (for dashboard access)

## 🛠 SIEM Tasks Performed

The Wazuh agent monitored the localhost system for real-time events including:

- ✅ Valid account logins (PAM events)
- ✅ Sudo usage with root access
- ✅ Sudo caching (timestamp-based reuse)
- ✅ File and authentication changes
- ✅ Privilege escalation detection
- ✅ MITRE ATT&CK technique mapping

## 🖥️ Monitored System

| Host                | IP Address     | Monitored Events            |
|---------------------|----------------|------------------------------|
| Ubuntu VM (localhost) | 127.0.0.1 / 10.109.30.17 | Login attempts, sudo, authentication logs, FIM (optional) |

## 📊 Screenshots Included

- `wazuh_dashboard.png`  
  → Wazuh overview showing total alerts, authentication success/failure, MITRE ATT&CK techniques detected, and event activity timeline.

- `wazuh_security_alerts.png`  
  → Detailed event log showing login sessions, sudo activity, and privilege escalation with mapped MITRE techniques (T1078, T1548.003, etc.).

## 📂 Additional Files

- `monitored_events.txt` – Description of key events detected by Wazuh agent

## 🌐 Access Info

- Dashboard was accessible at:  
  `https://10.109.30.17:5601`
- Default credentials used for initial login:
  - Username: `admin`
  - Password: `admin` (changed after first login)

## ✅ Summary

Wazuh successfully acted as a local SIEM solution by detecting and correlating system events including authentication activity, sudo usage, and mapped attack techniques. The project demonstrates the use of open-source tools to monitor system behavior and improve threat visibility.
