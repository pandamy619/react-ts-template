#!/bin/bash

# Остановить выполнение при ошибке
set -e

echo "🚀 Начинаем установку..."

# 1️⃣ Проверка установки Node.js
if ! command -v node &> /dev/null
then
    echo "⚠️ Node.js не найден. Устанавливаем..."
    curl -fsSL https://fnm.vercel.app/install | bash
    export PATH="$HOME/.fnm:$PATH"
    eval "$(fnm env)"
    fnm install 18
    fnm default 18
fi

echo "✅ Node.js $(node -v) установлен!"

# 2️⃣ Проверка установки Yarn
if ! command -v yarn &> /dev/null
then
    echo "⚠️ Yarn не найден. Устанавливаем..."
    npm install -g yarn
fi

echo "✅ Yarn $(yarn -v) установлен!"

# 3️⃣ Создаём Vite-проект
echo "📦 Создаём проект Vite + React + TypeScript..."
read -p "Введите имя проекта: " PROJECT_NAME
PROJECT_NAME=${PROJECT_NAME:-my-app}
yarn create vite "$PROJECT_NAME" --template react-ts
cd "$PROJECT_NAME"

# 4️⃣ Установка зависимостей
echo "📦 Устанавливаем зависимости..."
yarn

yarn add react-router-dom @reduxjs/toolkit react-redux @tanstack/react-query axios classnames eslint prettier husky lint-staged dotenv
yarn add -D @commitlint/{config-conventional,cli}

# 5️⃣ Настройка Husky
echo "🔧 Настраиваем Husky..."
yarn husky install
echo "module.exports = {extends: ['@commitlint/config-conventional']};" > commitlint.config.js
npx husky add .husky/commit-msg "yarn commitlint --edit \$1"

echo "🎉 Установка завершена! Теперь запусти:"
echo "cd \"$PROJECT_NAME\" && yarn dev"