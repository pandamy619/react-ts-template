# Clean Architecture React + TypeScript Template

## 📌 Инициализация проекта

```sh
npx create-react-app my-app --template typescript
cd my-app
yarn add react-router-dom tailwindcss
yarn tailwindcss init -p
```

## 📂 Архитектура проекта

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

## 🚀 Описание

Этот шаблон реализует **чистую архитектуру** для React + TypeScript, разделяя код на логические модули, что делает его масштабируемым и удобным для поддержки.

---

## 🛠 Настройка окружения разработки

1. **ESLint и Prettier** (линтинг и форматирование кода)

```sh
yarn add -D eslint prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-react eslint-plugin-react-hooks @typescript-eslint/parser @typescript-eslint/eslint-plugin
```

2. **Husky и lint-staged** (автоматический линтинг перед коммитом)

```sh
yarn add -D husky lint-staged
yarn husky install
npx husky add .husky/pre-commit "yarn lint-staged"
```

3. **Others dependencies** (остальные зависимости)

* ```yarn add react-router-dom```
* ```yarn add @reduxjs/toolkit react-redux```
* ```yarn add @types/react-redux```
