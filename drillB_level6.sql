--LEVEL6-55
SELECT 商品コード,商品名,単価,(SELECT SUM(数量)
								FROM 注文
								WHERE 商品コード = 'S0604') AS 販売数量
FROM 商品
WHERE 商品コード = 'S0604'; 

--LEVEL6-56
UPDATE 注文
SET 商品コード = (SELECT 商品コード
					FROM 商品
					WHERE 商品区分 = '2' 
					AND 商品名 LIKE '%ブーツ%'
					AND 商品名 LIKE '%雨%'
					AND 商品名 LIKE '%安心%')
WHERE 注文日 = '2018-03-15' AND 注文番号 = '201803150014' AND 注文枝番= '1';

--LEVEL6-57
SELECT 注文日, 商品コード
FROM 注文
WHERE 商品コード IN (SELECT 商品コード
					FROM 商品
					WHERE 商品名 LIKE '%あったか%')
ORDER BY 注文日;

--LEVEL6-58
SELECT 商品コード,SUM(数量) AS '販売数量'
FROM 注文
GROUP BY (商品コード)
HAVING AVG(数量) >= ALL(SELECT AVG(数量)
					FROM 注文
					GROUP BY (商品コード));

--LEVEL6-59
SELECT SUM(SUB.数量) AS 割引による販売数 ,AVG(SUB.クーポン割引料) AS 平均割引額
	FROM(SELECT 数量 , クーポン割引料
		FROM 注文
		WHERE クーポン割引料　IS NOT NULL AND 商品コード = 'W0746')AS SUB;

--LEVEL6-60
INSERT 注文
VALUES('2018-03-21','201803210080'
	,(SELECT MAX(注文枝番) AS 注文枝番
		FROM 注文
		WHERE 注文番号 = 201803210080)+1
,'S1003',1,NULL);

INSERT 注文
VALUES('2018-03-22','201803220901'
	,(SELECT MAX(注文枝番) AS 注文枝番
		FROM 注文
		WHERE 注文番号 = 201803220901)+1
,'A0052',2,500);

--LEVEL6-60別解
INSERT INTO 注文
SELECT'2018-03-21','201803210080'
	,(SELECT MAX(注文枝番) AS 注文枝番
		FROM 注文
		WHERE 注文番号 = 201803210080)+1
,'S1003',1,NULL;

INSERT INTO 注文
SELECT '2018-03-22','201803220901' 
	,(SELECT MAX(注文枝番) AS 注文枝番
		FROM 注文
		WHERE 注文番号 = 201803220901)+1
,'A0052',2,500;




