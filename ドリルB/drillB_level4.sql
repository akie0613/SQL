--LEVEL4-34
SELECT 商品コード, 単価,FLOOR(単価*0.95) AS キャンペーン価格 
FROM 商品
WHERE 商品区分= '9'
ORDER BY 商品区分;

--LEVEL4-35
UPDATE 注文
SET クーポン割引料 = クーポン割引料 + 300
WHERE 注文日 BETWEEN '2018-03-12' AND '2018-03-14' AND 数量 >= 2 AND クーポン割引料 IS NOT NULL

--LEVEL4-36
UPDATE 注文
SET 数量 = 数量-1
WHERE 注文番号 = '201802250126' AND 商品コード = 'W0156';

--LEVEL4-37
SELECT 注文日,CONCAT(注文番号,'-',注文枝番) AS 注文番号,商品コード,数量,クーポン割引料
FROM 注文
WHERE 注文番号 BETWEEN'201710010001' AND '201710319999';

--LEVEL4-38
SELECT DISTINCT 商品区分 AS 区分, 
	CASE 商品区分
	  WHEN '1' THEN '衣類'
	  WHEN '2' THEN '靴'
	  WHEN '3' THEN '雑貨'
	  WHEN '9' THEN '未分類'END AS 区分名
FROM 商品;

--LEVEL4-39
SELECT 商品コード,商品名,単価,
	CASE 
	  WHEN 単価 < 3000 THEN 'S'
	  WHEN 単価 < 10000 THEN 'M'
	  ELSE 'L' END AS 販売価格ランク,
	CASE 商品区分
	  WHEN '1' THEN CONCAT(商品区分,':','衣類')
	  WHEN '2' THEN CONCAT(商品区分,':','靴')
	  WHEN '3' THEN CONCAT(商品区分,':','雑貨')
	  WHEN '9' THEN CONCAT(商品区分,':','未分類') END AS 商品区分
FROM 商品
ORDER BY 単価,商品コード;

--LEVEL4-40
SELECT 商品名,LEN(商品名)AS 文字数
FROM 商品
WHERE LEN(商品名) > 10
ORDER BY 文字数;

--LEVEL4-41
SELECT 注文日,SUBSTRING(注文番号,9,4) AS 注文番号
FROM 注文;

--LEVEL4-42
UPDATE 商品 
SET 商品コード = CONCAT('E',SUBSTRING(商品コード,2,3))
WHERE 商品コード LIKE 'M%';

--LEVEL4-43
SELECT SUBSTRING(注文番号,9,4) AS 注文番号
FROM 注文
WHERE SUBSTRING(注文番号,9,4) BETWEEN '1000' AND '2000'
ORDER BY 注文番号;

--LEVEL4-44
UPDATE 廃番商品
--SET 廃番日 = FORMAT(CURRENT_TIMESTAMP,'yyyy-MM-dd')
SET 廃番日 = FORMAT(GETDATE(),'yyyy-MM-dd')
WHERE 商品コード = 'S1990';

--LEVEL4-45
SELECT 商品コード,商品名,単価 AS 現在の単価, FLOOR(単価*0.7) AS 値下げした単価
FROM 商品
WHERE 単価 >= 10000;