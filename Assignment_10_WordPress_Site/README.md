# Assignment 10 – WordPress Website Deployment

This assignment involved deploying a WordPress-based website on a Linux virtual machine. The VM was initially set up in VMware Workstation and then migrated to VMware ESXi. The objective was to build a publicly accessible, template-based website that other students could view.

## 🧰 Technologies Used

- Ubuntu Linux
- Apache2
- MySQL/MariaDB
- PHP
- WordPress (latest version)
- VMware ESXi

## 🌐 Website Summary

- IP Address: `http://10.109.50.3`
- Title: **THIS IS MY VERY INTERESTING WEBSITE**
- Section: **Blog**
- Featured Post:  
  **Hi! This is Russell’s Cyber Journey**

> “With life comes pain, insecurity, and fear. We’re all different and we’re all imperfect and the imperfections are what makes each of us and our work interesting.”

## 🎨 Customization Highlights

- Minimalist theme chosen for a clean and readable layout
- Personalized blog post and quote as featured content
- Template customized through WordPress UI

## ✅ Student Access Configuration

To make this site **accessible by other students** on the internal VLAN, a Cisco ACL was configured on the Layer 3 switch:

```cisco
access-list 100 permit tcp 10.0.0.0 0.0.0.255 host 10.109.50.3 eq www
```

## 📂 Files Included

| File Name                | Description |
|--------------------------|-------------|
| `website_screenshot.png` | Screenshot of the website homepage |
| `access_from_client.png` | Screenshot showing external access to the site |

## ✅ Accessibility Confirmation

The website is accessible from other systems within the classroom VLAN. Screenshot `access_from_client.png` confirms successful access from a Windows machine.
