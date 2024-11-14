#HOSTS
$hosts = Get-Content hosts.txt
$hosts | forEach {
Write-Host "URL: $_"  -BackgroundColor White -ForegroundColor Black
}


#creating new file straight from the powershell
$hosts | ForEach {
    "URL: $($_)" | Out-File newoutputurls.txt -Append
}

#USERS
#manually adding users
"Josh" | Add-Content users.txt 
"Bertil" | Add-Content users.txt 
"Anna" | Add-Content users.txt 
"Bianca" | Add-Content users.txt
#looping over an array
$names = @("Edit", "Erik","Olaf")

forEach ($name in $names){
$name | Add-Content users.txt  
}

"Pavel" | Add-Content users.txt

Get-Content users.txt

#NET CONNECTION
$netconnection = Test-NetConnection -ComputerName www.google.com -Port 443 #you can write it without port 443 if you want to know the entire connection, not just on port 443
#once you have declared the variable you can go inside of the object
$netconnection | Select *

#show connections on ports in console
$hosts | ForEach {
 Write-Host "Testing Host: $($_)"
 Test-NetConnection -ComputerName $_ -Port 443
 Test-NetConnection -ComputerName $_ -Port 80
 Write-Host ""
}

$hosts | convertto-Json
$hosts[0] | ConvertTo-Json

#Get-Date
Get-Date
(Get-Date).DayOfWeek

#add logs for date and each URL, -Append is like +=, if you do not use it, only last itteratrion will show
$hosts | ForEach {
Write-Host "Sleeping for 2s..." -BackgroundColor Yellow -ForegroundColor Black
Start-Sleep -Seconds 2
"$(Get-Date): Testing URL $($_)." | Out-File dateurlstest.txt -Append
Write-Host "$(Get-Date): Testing URL $($_)." -ForegroundColor Green
}

Write-Host "My name is Petra" -BackgroundColor Magenta

#find all available commands with this word in it
Get-Command *write*
Get-Command *Teams*
Get-Command *PnP*


Get-Help Add-PnPTeamsTeam -online

