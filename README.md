# Cybersecurity Capstone – Russell Jalal

This repository showcases completed assignments for my Cybersecurity Capstone project. Each assignment demonstrates hands-on experience in IT infrastructure, system administration, and security monitoring using technologies like VMware ESXi, Cisco, Active Directory, Docker, Nessus, Wazuh, and WordPress.

## 📁 Assignment Index

| #  | Assignment Title                               | Description |
|----|------------------------------------------------|-------------|
| 1  | ESXi Setup & Windows Server                    | Deployed VMware ESXi and set up a Windows Server VM with DHCP and DNS. Installed tools for system management and validated remote access. |
| 2  | VLAN Segmentation & Virtual Switches           | Created 5 VLANs, assigned VM interfaces, configured inter-VLAN routing, and enabled DHCP relay to serve clients across segments. |
| 3  | Secure Network Infrastructure                  | Hardened Cisco switch security, enabled SSH, applied ACLs, and tested remote administration over VLAN trunk links. |
| 4  | Active Directory Domain Deployment             | Built a Windows Server 2022 domain controller, created users and groups, enforced GPOs, and joined clients to the domain. |
| 5  | RADIUS Auth & TFTP Backups                     | Configured AAA with RADIUS authentication for Cisco device access. Enabled port security and automated TFTP backups of running configs. |
| 6  | Docker-Based Web Server                        | Deployed an NGINX web server using Docker Compose on an Ubuntu VM. Verified site access from another VLAN via ACL and container inspection. |
| 7  | Nagios Monitoring                              | Installed Nagios Core on a Linux VM and migrated it to ESXi. Configured monitoring for multiple hosts including ping, disk, and load checks. |
| 8  | Nessus Vulnerability Scanning                  | Installed Nessus on a Linux VM. Scanned Windows XP and Windows 7 systems. Identified EternalBlue and SMB Signing issues with visual reports. |
| 9  | WordPress Public Website                       | Hosted a blog-style WordPress site on Ubuntu. Applied a clean template and made it accessible to other students via ACLs on a Cisco switch. |
| 10 | Wazuh SIEM Deployment                          | Installed Wazuh All-in-One on Linux, monitored local events like sudo usage and authentication. Dashboard mapped MITRE ATT&CK techniques. |

---

## 🔧 Technologies Used

- VMware Workstation & ESXi
- Ubuntu, CentOS, Windows Server, Windows 7/XP
- Cisco IOS (Catalyst 2960)
- Active Directory, DHCP, DNS, RADIUS
- Docker, Docker Compose
- Apache, NGINX, WordPress
- Wazuh SIEM
- Nagios Core
- Nessus Essentials

---

## 📷 Sample Screenshots

Each assignment folder includes:
- `README.md` explaining the objective, tools used, and results
- Screenshots proving implementation and access
- Config files, scripts, or command output (sanitized)

---

## 🧠 Author

**Russell Jalal**  
Cybersecurity Student | IT Infrastructure & Cyber Security Enthusiast  
