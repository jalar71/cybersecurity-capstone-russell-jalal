# Assignment 1 – ESXi Setup & Windows Server Deployment

This assignment documents the installation and configuration of a VMware ESXi virtual infrastructure, including the setup of a Windows Server 2022 virtual machine with DHCP services. The goal is to create a foundational IT environment for the cybersecurity capstone project.

## 🧰 Technologies Used
- VMware ESXi 
- Windows Server 2022
- Cisco Layer 3 switch
- DHCP
- RDP
- PowerShell
- VMware vSphere Client (browser-based)

## 🔧 Tasks Completed
- Installed VMware ESXi on Intel NUC hardware
- Configured static IP addressing on ESXi host
- Set up management access from the classroom computer
- Deployed a Windows Server 2022 VM
- Enabled and configured DHCP on the server
- Connected physical networking using trunk ports
- Verified client-server communication over internal VLANs

## 🧪 Configuration Details

| Component        | Details                                     |
|------------------|---------------------------------------------|
| ESXi Host IP     | `10.109.30.253`                             |
| Server OS        | Windows Server 2022                         |
| DHCP Scope       | `/24 subnet within assigned 10.109.0.0/16`  |
| VLANs            | Trunk port on switch; default VLAN config   |
| Classroom Access | via web browser and vSphere UI              |

## 🖼️ Proof of Work
- Screenshots of:
  - ESXi dashboard
  - Windows Server DHCP setup
  - IP address config (`ipconfig /all`)
  - Switch configuration

## 🗂️ Files Included
- `Assignment_1_Report.pdf` – Full write-up of the assignment
- `screenshots/` – Images showing working configuration
- `inventory.txt` – List of virtual and physical devices, IPs, and credentials
- `network_diagram.png` – Logical layout of the network

## 📘 Notes
This environment serves as the baseline for further assignments, such as VLAN segmentation, Active Directory, and centralized authentication.

