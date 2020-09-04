--LEVEL5-46
SELECT SUM(数量) AS 数量の合計
FROM 注文;

--LEVEL5-47
SELECT 注文日, SUM(数量) AS 数量の合計
FROM 注文
GROUP BY 注文日
ORDER BY 注文日;

--LEVEL5-48
SELECT 商品区分, MIN(単価) AS 最少額 , MAX(単価) AS 最高額
FROM 商品
GROUP BY 商品区分
ORDER BY 商品区分;

--LEVEL5-49
SELECT 商品コード, SUM(数量) AS 数量の合計
FROM 注文
GROUP BY 商品コード
ORDER BY 商品コード;

--LEVEL5-50
SELECT 商品コード, SUM(数量) AS 数量の合計
FROM 注文
GROUP BY 商品コード
ORDER BY 数量の合計 DESC , 商品コード
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--LEVEL5-51
SELECT 商品コード, SUM(数量) AS 数量の合計
FROM 注文
GROUP BY 商品コード
HAVING SUM(数量) < 5;

--LEVEL5-52
SELECT COUNT(クーポン割引料) AS 注文件数, SUM(クーポン割引料) AS 割引額の合計
FROM 注文;

--LEVEL5-53
SELECT FORMAT(注文日,'yyyyMM') AS 年月, COUNT(*) AS 注文件数
FROM 注文
WHERE 注文枝番 = '1'
GROUP BY FORMAT(注文日,'yyyyMM')
ORDER BY 年月 DESC;

--LEVEL5-52
SELECT 商品コード
FROM 注文
WHERE 商品コード LIKE 'Z%'
GROUP BY 商品コード
HAVING SUM(数量) >= 100;