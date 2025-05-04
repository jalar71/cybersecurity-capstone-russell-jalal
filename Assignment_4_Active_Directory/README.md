# Assignment 4 – Active Directory Installation & PowerShell User Management

This assignment involved installing and configuring Active Directory on a Windows Server, promoting it to a Domain Controller, and managing user accounts using PowerShell and CSV automation.

## 🧰 Technologies Used
- Windows Server 2022
- Active Directory Domain Services (AD DS)
- PowerShell
- Organizational Units (OUs)
- CSV-based user import

## 🔧 Domain Setup Process

1. Set server’s **DNS to 127.0.0.1** to enable local name resolution.
2. Installed **Active Directory Domain Services** via Server Manager.
3. Promoted the server to a **Domain Controller** and created:
   - Forest: `russell.local`
   - Domain: `russell.local`
4. Successfully logged into the domain using `russell\administrator`.

## 👥 OU and User Management

- Created an **Organizational Unit (OU)** named `Employees`
- Imported users from a CSV file using PowerShell
- Exported a list of users from the OU to a `.txt` file
- Scheduled a weekly task to run the export script

## 📜 PowerShell Scripts

- `import_users.ps1`: Adds users from a `.csv` file into the `Employees` OU
- `export_users.ps1`: Exports the list of users in `Employees` OU to a `.txt` file

## 🗂 Files Included

- `users.csv` – Sample CSV with employee data
- `import_users.ps1` – PowerShell script to bulk add users
- `export_users.ps1` – PowerShell script to export user list
- `ad_setup_screenshot.png` – Screenshot showing successful AD install
- `ad_users_created.png` – Screenshot of populated OU
- `scheduled_task_screenshot.png` – Proof of scheduled task for export
