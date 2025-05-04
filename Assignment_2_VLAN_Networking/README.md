# Assignment 2 – VLAN Configuration and Network Segmentation

This assignment involved configuring VLANs to segment different types of devices and ensuring proper network connectivity and DHCP functionality across the segmented environment. The focus was on isolating traffic between physical and virtual systems using Layer 3 switching and verifying access to external resources.

## 🧰 Technologies Used
- Cisco Layer 3 Switch
- VMware ESXi
- Windows Server 2022 (DHCP)
- Windows 11 VM
- Classroom physical computers

## 📌 VLAN Design

| VLAN Name              | VLAN ID | Subnet            | Default Gateway | Devices                          |
|------------------------|---------|-------------------|------------------|----------------------------------|
| Classroom Clients      | 10      | 10.109.10.0/24    | 10.109.10.1      | Physical classroom computers     |
| Virtual Clients        | 20      | *Planned*         | *Not used*       | *(Unused in final setup)*        |
| Servers                | 30      | 10.109.30.0/24    | 10.109.30.1      | VMs + Intel NUC (ESXi host)      |
| Cisco Devices          | 40      | *Planned*         | *Not used*       | Cisco switch                     |
| Parking Lot            | 50      | *Planned*         | *Not used*       | No devices assigned              |

> ✅ Final setup used VLAN 10 (Classroom) and VLAN 30 (Servers) for production traffic.

## 🖧 Network Routing & Connectivity

- Inter-VLAN routing was performed using a Layer 3 Cisco switch.
- Devices in VLAN 10 and VLAN 30 successfully communicated.
- Trunk port enabled on switch to Intel NUC (ESXi host) for VLAN tagging.

## 📦 DHCP Configuration

- DHCP service was installed and configured on Windows Server.
- Two DHCP scopes:
  - VLAN 10: Classroom clients
  - VLAN 30: Virtual machines
- DHCP verified via:
  - Windows 11 VM automatically acquiring a valid IP
  - Classroom computer obtaining address within the correct scope

## 🌐 Web Page Access (TS System)

A static route was added to allow access to a webpage hosted on the teacher’s system:
ip route 172.16.2.0 255.255.255.0 172.16.1.50
