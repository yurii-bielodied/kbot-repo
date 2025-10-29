
# kbot

kbot — це простий Telegram-бот, написаний на Go, який відповідає на текстові повідомлення і вміє:

* привітатись;
* показати поточний час системи.

Бот доступний у Telegram:
t.me/Kbot_repo_bot

---

## 📦 Вимоги

* Go (версія 1.25+)
* Git
* Токен Telegram-бота від @BotFather

---

## 🔐 Змінні оточення

Перед запуском обов’язково потрібно вказати токен бота як змінну середовища:

```bash
export TELE_TOKEN="<ваш_Telegram_token>"
```

Без цього програма завершиться з помилкою:
`TELE_TOKEN environment variable is not set`

---

## 🔧 Встановлення та запуск

### 1. Клонувати репозиторій

```bash
git clone https://github.com/yurii-bielodied/kbot-repo.git
cd kbot-repo
```

### 2. Налаштувати токен

```bash
export TELE_TOKEN="<ваш_Telegram_token>"
```

(Поставте свій реальний токен від BotFather)

### 3. Зібрати бінарник

```bash
go build -ldflags "-X 'github.com/yurii-bielodied/kbot-repo/cmd.appVersion=v1.0.0'" -o kbot .
```

> Пояснення:
>
> * `-ldflags "-X '.../cmd.appVersion=v1.0.0'"` встановлює змінну `appVersion` під час білду, щоб бот міг показувати свою версію в повідомленнях.

### 4. Запустити бота

```bash
./kbot start
```

При успішному запуску в консолі буде щось типу:

```text
kbot v1.0.0 started
```

---

## 💬 Приклади використання команд

Напишіть боту повідомлення у приватному чаті з точним текстом команди.

### 1. Привітання

**Ви відправляєте:**

```text
/start hello
```

**Бот відповість:**

```text
Hello I'm Kbot v1.0.0!
```

(номер версії залежить від того, що ви передали через `-ldflags` при збірці)

---

### 2. Поточний час

**Ви відправляєте:**

```text
/start time
```

**Бот відповість приблизно так:**

```text
Current time is 2025-10-29 14:37:12
```

---

### 3. Будь-який інший текст

**Ви відправляєте:**

```text
some random text
```

**Бот відповість:**

```text
Hello from Kbot!
```

---

## 🛠 Запуск у один рядок (змінна тільки на час виконання)

```bash
TELE_TOKEN="<ваш_Telegram_token>" ./kbot start
```
