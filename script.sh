#!/bin/bash

# Укажите ваш Stepik API токен
API_TOKEN="488442505"

# Выполняем запрос к API профиля пользователя
response=$(curl -s -H "Authorization: Bearer $API_TOKEN" "https://stepik.org/api/users/488442505")

# Извлекаем значение поля "join_date" с помощью команды jq (JSON-парсер)
join_date=$(echo $response | jq -r '.users[0].join_date')

# Выводим дату присоединения
echo "Дата присоединения к Stepik: $join_date"