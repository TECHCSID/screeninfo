Get-CimInstance -Namespace root\wmi -ClassName wmimonitorid | foreach {New-Object -TypeName psobject -Property @{
Semaine = ($_.WeekOfManufacture) -join ""
Marque = ($_.ManufacturerName -notmatch '^0$' | foreach {[char]$_}) -join ""
Modele = ($_.UserFriendlyName -notmatch '^0$' | foreach {[char]$_}) -join ""
Annee = ($_.YearOfManufacture) -join ""
NumeroSerie = ($_.SerialNumberID -notmatch '^0$' | foreach {[char]$_}) -join ""
}
}
