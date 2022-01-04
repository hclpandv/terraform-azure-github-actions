## Ensure Chololatey is installed

#----Install git
choco install git -y

#----Install Terraform
choco install terraform -y

#----Install az cli
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'
