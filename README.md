# 🏗️ Clean Architecture React + TypeScript Template

🇷🇺 **Этот шаблон реализует чистую архитектуру для React + TypeScript, разделяя код на логические модули, что делает его масштабируемым и удобным для поддержки.**  
🇬🇧 **This template implements clean architecture for React + TypeScript, organizing code into logical modules for better scalability and maintainability.**

---

## 📌 Инициализация проекта | **Project Initialization**

### 🇷🇺 Русский
```sh
npx create-react-app my-app --template typescript
cd my-app
yarn add react-router-dom tailwindcss
yarn tailwindcss init -p
```

### 🇬🇧 English
```sh
npx create-react-app my-app --template typescript
cd my-app
yarn add react-router-dom tailwindcss
yarn tailwindcss init -p
```

---

## 📂 Архитектура проекта | **Project Structure**

### 🇷🇺 Русский
```
/src
  /app           # Настройка приложения (роутинг, глобальные провайдеры)
  /entities      # Бизнес-сущности (интерфейсы, модели)
  /features      # Логика функций (useCases)
  /shared        # Общие утилиты, компоненты, API-клиенты
  /widgets       # Комплексные компоненты (например, таблицы, карточки)
  /pages         # Страницы приложения (сборка из widgets, features)
  /processes     # Бизнес-процессы (авторизация, корзина и т. д.)
```

### 🇬🇧 English
```
/src
  /app           # Application setup (routing, global providers)
  /entities      # Business entities (interfaces, models)
  /features      # Feature logic (useCases)
  /shared        # Common utilities, components, API clients
  /widgets       # Complex components (e.g., tables, cards)
  /pages         # Application pages (assembled from widgets, features)
  /processes     # Business processes (authentication, cart, etc.)
```

---

## 🚀 Описание | **Description**

### 🇷🇺 Русский
Этот шаблон предоставляет готовую структуру проекта с разделением на модули, обеспечивая удобство масштабирования и поддержки.

### 🇬🇧 English
This template provides a ready-made project structure with modular separation, ensuring scalability and maintainability.

---

## 🛠 Настройка окружения | **Development Setup**

### 1️⃣ **ESLint и Prettier | ESLint & Prettier**

#### 🇷🇺 Русский
```sh
yarn add -D eslint prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-react eslint-plugin-react-hooks @typescript-eslint/parser @typescript-eslint/eslint-plugin
```

#### 🇬🇧 English
```sh
yarn add -D eslint prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-react eslint-plugin-react-hooks @typescript-eslint/parser @typescript-eslint/eslint-plugin
```

---

### 2️⃣ **Husky и lint-staged | Husky & lint-staged**

#### 🇷🇺 Русский
```sh
yarn add -D husky lint-staged
yarn husky install
npx husky add .husky/pre-commit "yarn lint-staged"
```

#### 🇬🇧 English
```sh
yarn add -D husky lint-staged
yarn husky install
npx husky add .husky/pre-commit "yarn lint-staged"
```

---

## 📦 Другие зависимости | **Other Dependencies**
```sh
yarn add react-router-dom
yarn add @reduxjs/toolkit react-redux
yarn add @types/react-redux
yarn add axios classnames eslint prettier husky lint-staged dotenv
```

---

## 🚀 Как запустить? | **How to Run?**
```sh
chmod +x setup.sh
./setup.sh
```