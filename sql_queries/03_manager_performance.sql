-- 03_manager_performance.sql
-- Эффективность менеджеров: выручка, возвраты, процент

SELECT 
    u."Manager",
    u."Region",
    COUNT(*) AS Количество_заказов,
    ROUND(SUM(o."Sales"), 2) AS Общая_выручка,
    SUM(CASE WHEN r."Status" = 'Returned' THEN 1 ELSE 0 END) AS Возвраты,
    ROUND(100.0 * SUM(CASE WHEN r."Status" = 'Returned' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Процент_возвратов
FROM sample_superstore_orders o
LEFT JOIN Returns r ON o."OrderID" = r."OrderID"
INNER JOIN Users u ON o."Region" = u."Region"
GROUP BY u."Manager", u."Region"
ORDER BY Процент_возвратов DESC;