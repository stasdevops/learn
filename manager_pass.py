#! python
#manager_pass.py - Програма для незащищенного хранения паролей.

PASSWORDS = {'email':'Password',
            'azure':'Password',
             'terraform':'Pass',
             'site':'12345'}

import sys, pyperclip
if len(sys.argv)<2:
  print('Использование: manager_pass.py [имя учетной записи] - копирование пароля учетной записи')
  sys.exit()

account = sys.argv[1] #Первый аргемент командной строки - имя учетной записи

if account in PASSWORDS:
  pyperclip.copy(PASSWORDS[account])
  print('Пароль для ' + account + ' скопирован в буфер.')
else:
  print('Учетная запись ' + account + ' отсутствует в списке.')




