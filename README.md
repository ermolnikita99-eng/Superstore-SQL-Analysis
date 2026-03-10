# Анализ продаж и возвратов Superstore (SQL)

Портфолио junior Data Analyst  
Анализ учебного датасета Superstore с использованием SQL (SQLite + PostgreSQL)

## О проекте

- **Датасет**: Superstore (заказы, возвраты, менеджеры)  
- **Инструменты**: DBeaver, SQLite, PostgreSQL  
- **Навыки**: SELECT, WHERE, GROUP BY, JOIN (LEFT/INNER), CASE WHEN, агрегаты, проценты, анализ возвратов и выручки  

## Ключевые выводы

- Лучший менеджер: **Erin (East)** — 0% возвратов при выручке 1,36 млн  
- Худший по возвратам: **William (West)** — 0,23% (15 возвратов) при самой большой выручке 1,45 млн  
- Самые проблемные продукты: Mitel 5320 IP Phone и Konftel 250 Conference phone — по 40% возвратов  

## Основные запросы

1. [Базовая фильтрация и группировка](sql_queries/01_basic_select.sql)  
2. [Возвраты по регионам](sql_queries/02_joins_returns.sql)  
3. [Эффективность менеджеров (выручка + % возвратов)](sql_queries/03_manager_performance.sql)  
4. [Самые проблемные продукты](sql_queries/04_problem_products.sql)  

## Скриншоты результатов

**Эффективность менеджеров**  
![Менеджеры](images/manager_performance.png)

**Проблемные продукты**  
![Продукты](images/problem_products.png)

## Как запустить проект

1. Установите DBeaver  
2. Подключите базу `superstore.db` (SQLite) или импортируйте CSV в PostgreSQL  
3. Выполните файлы из папки `sql_queries/`

Готов к собеседованиям на позицию Junior Data Analyst / BI Analyst  
Связь: [LinkedIn / Telegram / email] — добавь свои контакты
