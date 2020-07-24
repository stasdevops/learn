$user = Read-Host "Введите имя пользователя, чьи группы хотите получить" #Получаем список групп пользователей (DC\pushnik_as)
Write-Host $user "Выводим введёное имя"
Get-ADUser -Identity $user -Properties memberof | Select-Object -ExpandProperty memberof 