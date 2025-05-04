# Assignment 5 – RADIUS Authentication & Switch Configuration Backup

This assignment focuses on implementing centralized authentication for network devices using Active Directory and RADIUS. A Network Policy Server (NPS) was deployed to authenticate users trying to access a Cisco switch, and roles were defined through Active Directory groups. TFTP was also configured for switch config backup.

## 🧰 Technologies Used
- Windows Server 2022 (NPS Role)
- Cisco Catalyst Switch
- Active Directory
- RADIUS (AAA)
- TFTP

## 🔐 RADIUS Authentication Setup

### NPS Server Configuration

1. Installed **Network Policy and Access Services** via Server Manager.
2. Registered the server with Active Directory.
3. Added the Cisco switch as a **RADIUS client** using its IP address and a shared secret.
4. Created a new **OU named “Networking”** in AD:
   - Groups: `Network Engineers`, `Network Techs`
   - Users: One in each group

### Policy Configuration

- `Network Engineers` → **Full access** (privilege level 15)
- `Network Techs` → **Read-only** access (privilege level 1)

Policies were set in NPS to grant correct privilege levels based on group membership.

## 🔧 Cisco Switch Configuration

- Enabled **AAA model**
- Configured **RADIUS server IP** and shared secret
- Applied AAA authentication for login

## 💾 TFTP Backup

- Installed a TFTP server on the second domain controller.
- Configured the Cisco switch to back up its running config to the TFTP server.

## 📂 Files Included

- `radius_switch_config.txt` – Switch configuration for AAA + RADIUS
- `nps_policy_screenshot.png` – Screenshot of NPS policy
- `ad_users_and_groups.png` – AD showing Networking OU and group memberships
- `tftp_backup_proof.png` – Screenshot showing config backup to TFTP
