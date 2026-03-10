-- 01_basic_select.sql
-- Пример базовой фильтрации и группировки

-- 1. Топ-10 заказов по выручке
SELECT 
    "OrderID",
    "OrderDate",
    "CustomerName",
    "Sales",
    "Profit"
FROM sample_superstore_orders
ORDER BY "Sales" DESC
LIMIT 10;

-- 2. Количество заказов по способу доставки (группировка)
SELECT 
    "ShipMode",
    COUNT(*) AS Количество_заказов
FROM sample_superstore_orders
GROUP BY "ShipMode"
ORDER BY Количество_заказов DESC;

-- 3. Заказы из региона Central с продажами > 1000
SELECT 
    "OrderID",
    "Region",
    "Sales",
    "Profit"
FROM sample_superstore_orders
WHERE "Region" = 'Central' AND "Sales" > 1000
LIMIT 20;