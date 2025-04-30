# import AD module
Import-Module ActiveDirectory

# define (OU) for user creation ***(Change OU= and the first DC=)
$OU = "OU=Employee,DC=russell,DC=local"

# import csv with users  (Insert your file path for your CSV here [Convert xlsx to csv])
$Users = Import-Csv -Path "C:\Users\Administrator\Desktop\emp.csv"

# loop through each user in the CSV file
foreach ($User in $Users) {
    # Extract values from CSV
    $FirstName = $User.First
    $LastName = $User.Last
    $EmployeeID = $User."Employee number"

    # ensure all required fields are present (error handling)
    if (-not $FirstName -or -not $LastName -or -not $EmployeeID) {
        Write-Host "Skipping user: Missing required fields → $FirstName $LastName"
        continue
    }

    # generate a SamAccountName (first letter of first name + first four letters of last name)
    if ($LastName.Length -ge 4) {
        $SamAccountName = ($FirstName.Substring(0,1) + $LastName.Substring(0,4)).ToLower()
    } else {
        $SamAccountName = ($FirstName.Substring(0,1) + $LastName).ToLower()
    }

    # set User Principal Name (UPN) (MAKE SURE TO CHANGE TO YOUR DOMAIN@LOCAL)
    $UPN = "$SamAccountName@russell.local"

    # Check if the user already exists in AD
    if (Get-ADUser -Filter {SamAccountName -eq $SamAccountName}) {
        Write-Host "User $SamAccountName already exists, skipping..."
        continue
    }

    # Create the user in Active Directory
    New-ADUser -Name "$FirstName $LastName" `
               -SamAccountName $SamAccountName `
               -GivenName $FirstName `
               -Surname $LastName `
               -UserPrincipalName $UPN `
               -Path $OU `
               -AccountPassword (ConvertTo-SecureString "P@ssword123" -AsPlainText -Force) `
               -Enabled $true

    Write-Host "Created user: $FirstName $LastName ($SamAccountName)"
}

Write-Host "User creation process completed."
