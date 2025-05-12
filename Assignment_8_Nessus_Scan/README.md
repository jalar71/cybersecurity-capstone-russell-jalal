# Assignment 8 – Nessus Vulnerability Scanning

In this assignment, Nessus Essentials was installed on a Linux VM and migrated to an ESXi server. The VM was used to scan two legacy systems — Windows XP and Windows 7 — for vulnerabilities. Both machines were scanned for misconfigurations and known CVEs, with particular focus on SMB-based exploits.

## 🧰 Tools Used
- Nessus Essentials
- Ubuntu VM (Nessus server)
- VMware ESXi
- Windows XP & Windows 7 VMs (targets)

## 🎯 Scan Targets

See `scan_targets.txt` for system details.

## 📊 Summary of Findings

| Host         | Critical | High | Medium | Low | Info |
|--------------|----------|------|--------|-----|------|
| Windows XP   |   0      | 1    | 2      | 1   | Many |
| Windows 7    |   0      | 1    | 2      | 1   | Many |

- Total vulnerabilities per host: 19 each
- Screenshots and plugin IDs are provided in this repo.

See `top_vulns_summary.txt` for CVE and risk information.

## 🖼 Screenshots

- `Win_7_Scan.png` – Overview of vulnerabilities on Windows 7
- `Win_7_vuln.png` – SMB Signing not required (Plugin #57608)
- `Win_7_vuln_2.png` – EternalBlue (MS17-010) vulnerability (Plugin #97833)
- `Win_XP_Scan.png` – Overview of vulnerabilities on Windows XP
- `Win_XP_vlun.png` – MS16-047: SAM/LSAD (Badlock)
- `Win_XP_vlun_2.png` – SMB Signing not required
