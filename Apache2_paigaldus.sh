# Apache serveri paigaldamine
# Kontrollime, mitu korda Apache on juba korrektselt paigaldatud
# Salvestame vastuse muutujasse
APACHE2=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')

# Если Apache не установлен (значение переменной APACHE2 равно 0)
if [ $APACHE2 -eq 0 ]; then
    # Тогда он не установлен
    # Выводим сообщение о начале установки
    echo "Paigaldame apache2"
    # Устанавливаем Apache2
    apt install apache2
    echo "Apache on paigaldanud"
# Если значение переменной APACHE2 равно 1
elif [ $APACHE2 -eq 1 ]; then
    # Тогда Apache уже установлен и его не нужно устанавливать
    # Сообщаем пользователю, что Apache уже установлен
    echo "Apache2 on paigaldatud."
    # Запускаем Apache2 сервер
    service apache2 start
    service apache2 status
fi
# Конец скрипта
