$us_whose = Read-Host "Введите ФИО сотрудника, чьи группы необходимо скопировать" #Вводим ФИО сотрудника, чьи группы необходимо скопировать
$us_who = Read-Host "Введите ФИО сотрудника, кому скопировать группы"  #Вводим ФИО сотрудника, кому скопировать группы
Write-Host "Копируем у " + $us_whose + ". И добавляем " + $us_who

Write-Host "Продолжить?Yes/NO"
$quest = Read-Host

IF ($quest -eq 'YES') {

$getusergroups = Get-ADUser -Identity $us_whose -Properties memberof | Select-Object -ExpandProperty memberof
$getusergroups | Add-ADGroupMember -Members $us_who -verbose

}

ELSE {
Write-Host "Отмена операции!"
}