## Ensure az cli is installed and logged in

#----Create Service principal
az ad sp create-for-rbac -n "tfuser" --role contributor --scopes /subscriptions/8bfff7c4-6972-4035-88a4-0e0121080864