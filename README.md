
# ✦ Блог на Ruby on Rails

Простий блог із повним CRUD-функціоналом: створення, перегляд, редагування та видалення постів.

## Технології

- **Ruby** 3.2+
- **Rails** 7.1
- **SQLite3** (база даних)
- **Turbo Rails** (швидка навігація без перезавантаження)

---

## Швидкий старт

### 1. Встановіть залежності

```bash
bundle install
```

### 2. Створіть базу даних

```bash
rails db:create
rails db:migrate
```

### 3. (Опціонально) Додайте тестові дані

```bash
rails db:seed
```

### 4. Запустіть сервер

```bash
rails server
```

Відкрийте [http://localhost:3000](http://localhost:3000)

---

## Функціонал

| Дія | URL | Метод |
|-----|-----|-------|
| Список постів | `/posts` | GET |
| Читати пост | `/posts/:id` | GET |
| Форма нового поста | `/posts/new` | GET |
| Створити пост | `/posts` | POST |
| Форма редагування | `/posts/:id/edit` | GET |
| Оновити пост | `/posts/:id` | PATCH |
| Видалити пост | `/posts/:id` | DELETE |

---

## Структура проекту

```
blog/
├── app/
│   ├── controllers/
│   │   └── posts_controller.rb   # CRUD логіка
│   ├── models/
│   │   └── post.rb               # Валідації
│   ├── views/
│   │   ├── layouts/
│   │   │   └── application.html.erb
│   │   └── posts/
│   │       ├── index.html.erb    # Список постів
│   │       ├── show.html.erb     # Один пост
│   │       ├── new.html.erb      # Форма створення
│   │       ├── edit.html.erb     # Форма редагування
│   │       └── _form.html.erb    # Спільна форма
│   └── assets/stylesheets/
│       └── application.css       # Стилі
├── config/
│   └── routes.rb                 # Маршрути
├── db/
│   ├── migrate/                  # Міграції
│   ├── schema.rb
│   └── seeds.rb                  # Тестові дані
└── Gemfile
```

---

