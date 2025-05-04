Get-ADUser -Filter * -SearchBase "OU=Employee,DC=yourdomain,DC=com" | Select-Object Name, SamAccountName, UserPrincipalName | Export-Csv -Path "C:\path\to\your\outputfile.txt" -NoTypeInformation
