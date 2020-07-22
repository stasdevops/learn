
Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010; #Полюкчение модуля управления Exchange
$us_cal = Read-Host "Введите ФИО Сотрудника, к календарю которого требуется доступ" #Вводим ФИО сотрудника, чей календарь нас интересует (pushkin_as@mail.ru)
$us_read = $us_cal+":\Календарь" #Добавляем постфикс :\Календарь
Write-Host $us_read #Вывод на экран ФИО сотрудника:\Календарь
$acc_us = Read-Host "Введите ФИО Сотрудника, которому необходим доступ" #Вводим ФИО сотрудника, которому надо предоставить доступ к календарю us_cal
$acc_read = $acc_us+":\Календарь"
Write-Host $acc_read
Get-MailboxFolderPermission -Identity '$us_read' #Получаем текущие права на календарь пользователя
Add-MailboxFolderPermission -Identity '$us_read' -User $acc_us -AccessRights PublishingEditor #Предоставляем права к календарю пользователя. С правом Редактора. Комм.