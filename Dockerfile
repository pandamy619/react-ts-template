# Используем официальный образ Node.js
FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# Копируем остальные файлы проекта
COPY . .

# Собираем приложение
RUN yarn build

# Запускаем сервер
CMD ["yarn", "start"]
