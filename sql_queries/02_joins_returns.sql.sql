-- 02_joins_returns.sql
-- Анализ возвратов по регионам

-- 1. Все заказы + статус возврата (LEFT JOIN)
SELECT 
    o."OrderID",
    o."OrderDate",
    o."CustomerName",
    o."Sales",
    o."Profit",
    r."Status"
FROM sample_superstore_orders o
LEFT JOIN Returns r ON o."OrderID" = r."OrderID"
LIMIT 20;

-- 2. Только возвращённые заказы (INNER JOIN)
SELECT 
    o."OrderID",
    o."Region",
    o."Sales",
    o."Profit",
    r."Status"
FROM sample_superstore_orders o
INNER JOIN Returns r ON o."OrderID" = r."OrderID"
LIMIT 10;

-- 3. Количество возвратов по регионам
SELECT 
    o."Region",
    COUNT(*) AS Количество_возвратов
FROM sample_superstore_orders o
INNER JOIN Returns r ON o."OrderID" = r."OrderID"
GROUP BY o."Region"
ORDER BY Количество_возвратов DESC;
