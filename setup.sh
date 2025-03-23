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
yarn create vite my-app --template react-ts
cd my-app

# 4️⃣ Установка зависимостей
echo "📦 Устанавливаем зависимости..."
yarn

yarn add react-router-dom @reduxjs/toolkit react-redux @tanstack/react-query axios classnames eslint prettier husky lint-staged dotenv

# 5️⃣ Настройка Husky
echo "🔧 Настраиваем Husky..."
yarn husky install

echo "🎉 Установка завершена! Теперь запусти:"
echo "cd my-app && yarn dev"