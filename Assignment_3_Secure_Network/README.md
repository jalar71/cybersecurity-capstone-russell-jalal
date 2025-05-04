# Assignment 3 – Secure Network Infrastructure

This assignment documents the physical wiring of the network and the configuration of secure remote access using SSH for Cisco switch and other infrastructure devices.

## 🧰 Technologies Used
- Cisco Catalyst Switch (3750)
- Windows PC (Classroom computer)
- Intel NUC running VMware ESXi
- Terminal/console access
- SSH configuration on Cisco device

## 🔌 Physical Wiring Description

### 🖥️ Classroom Computer
- **Console Wire** → Plugged into **Port B** of the port box
- **Ethernet Cable** → Plugged into **Port C** of the port box

### 🧠 Switch Configuration
- **Port Fa 0/12** → Connected to Port C on the port box (Classroom Computer)
- **Port Fa 0/3** → Connected to Intel NUC (ESXi) – **configured as trunk port**
- **Port Fa 0/13** → Connected to the teacher’s switch via Port 3D

All trunking and VLAN-tagged communication is handled through Port Fa 0/3.

## 🔐 SSH Access

SSH was configured on the switch to allow secure remote login from the classroom computer to infrastructure devices.

- SSH version: 2
- MOTD banner enabled
- Username and password authentication
- Switch and router both support secure shell sessions
- SSH access tested from:
  - Classroom computer
  - Windows Server (inside ESXi)
