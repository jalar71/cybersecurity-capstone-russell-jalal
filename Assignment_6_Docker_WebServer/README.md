````markdown
# 🐳 Assignment 6: Docker Web Server with VLAN Isolation

## 🎯 Objective

Set up Docker on a Linux VM, run a preconfigured web server (e.g., WordPress or Nginx) on port 80, move the VM to the ESXi server, and ensure that the container is only accessible from a dedicated internal VLAN (`Webdev`). No other networks should be able to access the container.

---

## ⚙️ Steps Performed

### 1. Docker Installation

Installed Docker on a Linux VM (Ubuntu):

```bash
sudo apt update
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
````

---

### 2. Pull & Run Web Server

Pulled and ran a preconfigured web server:

```bash
docker pull wordpress
docker network create webdev_net --subnet=10.109.50.0/24
docker run -d --name webserver --network webdev_net -p 80:80 wordpress
```

---

### 3. Migrated VM to ESXi

* Exported VM from VMware Workstation as OVA
* Imported into ESXi
* Attached to vSwitch with VLAN ID 50 (Webdev VLAN)

---

### 4. Configured VLAN on Cisco Switch

* Created VLAN 50
* Assigned it to the correct switchport (trunk/access as needed)

Example:

```cisco
vlan 50
 name Webdev

interface GigabitEthernet0/2
 switchport access vlan 50
 switchport mode access
```

---

### 5. ACL to Restrict Access

Only allow traffic from `10.109.50.0/24` to access port 80 on the Docker container:

```cisco
ip access-list extended WEBDEV_ACCESS
 permit tcp 10.109.50.0 0.0.0.255 any eq 80
 deny tcp any any eq 80

interface Vlan50
 ip access-group WEBDEV_ACCESS in
```

---

### 6. Access Testing

| Source Network               | Access to Web Server |
| ---------------------------- | -------------------- |
| 10.109.50.0/24               | ✅ Allowed            |
| win\_11\_client\_other\_vlan | ❌ Blocked            |

---

## 📸 Screenshots & Proof

| File                            | Description                                |
| ------------------------------- | ------------------------------------------ |
| `switch_vlan_config.png`        | VLAN 50 setup on Cisco switch              |
| `esxi_vswitch_webdev_vlan.png`  | ESXi vSwitch configured with Webdev VLAN   |
| `wordpress_internal_access.png` | Web server accessible from internal client |
| `win_11_client_no_access.png`   | Access denied from non-allowed VLAN        |

---

## 🧪 Notes

* Docker container only binds to internal network IP
* ACL is enforced at the switch layer for security
* ESXi port group properly tagged with VLAN 50
* Verified successful internal-only access to the web server

---

## ✅ Summary

* Docker and web server setup complete ✅
* VM migrated to ESXi ✅
* VLAN and ACL configured ✅
* Access restricted to internal network ✅
