--LEVEL7-61
SELECT 注文番号,注文枝番,T.商品コード,商品名,数量
FROM 注文 AS T
	JOIN 商品 AS S
	ON T.商品コード = S.商品コード
	AND 注文番号 = '201801130115'
ORDER BY 注文番号, 注文枝番;

--LEVEL7-62
SELECT 注文日, 注文番号, 注文枝番, 数量, 単価*数量 AS 注文金額
FROM 廃番商品 AS H
	JOIN 注文 AS T
	ON H.商品コード = T.商品コード
	AND H.商品コード = 'A0009'
WHERE H.廃番日 < T.注文日; 

--LEVEL7-63
SELECT S.商品コード,商品名, 単価, 注文日, 注文番号, 数量
,単価 * 数量 AS 売上金額
FROM 商品 AS S
	JOIN 注文 AS T
	ON S.商品コード = T.商品コード
	AND S.商品コード ='S0604'
ORDER BY 注文日;

--LEVEL7-64
SELECT S.商品コード , S.商品名
FROM 商品 AS S
	JOIN 注文 AS T
	ON S.商品コード = T.商品コード
	AND 注文日 BETWEEN '2016-08-01' AND '2016-08-31'

--LEVEL7-65
SELECT S.商品コード , S.商品名
FROM 商品 AS S
	JOIN 注文 AS T
	ON S.商品コード = T.商品コード
	AND 注文日 BETWEEN '2016-08-01' AND '2016-08-31'
UNION 
SELECT H.商品コード , '廃番' AS 商品名
FROM 廃番商品 AS H
	JOIN 注文 AS T
	ON H.商品コード = T.商品コード
	AND 注文日 BETWEEN '2016-08-01' AND '2016-08-31';

--LEVEL7-66
SELECT 注文日,CONCAT(S.商品コード,':',商品名)AS 商品,
	CASE 
	  WHEN 数量 IS NOT NULL THEN 数量
	  ELSE 0 END AS 数量
FROM 商品 AS S
	LEFT JOIN 注文 AS T
	ON S.商品コード = T.商品コード
WHERE S.商品区分 ='3';

--LEVEL7-67
SELECT 注文日,CONCAT(S.商品コード,':',
	CASE 
	  WHEN S.商品コード = H.商品コード THEN '(廃番済み)'
	  ELSE S.商品名 END) AS 商品,
	CASE 
	  WHEN 数量 IS NOT NULL THEN 数量
	  ELSE 0 END AS 数量
FROM 商品 AS S
	LEFT JOIN 注文 AS T
	ON S.商品コード = T.商品コード
	LEFT JOIN 廃番商品 AS H
	ON S.商品コード = H.商品コード
WHERE S.商品区分 ='3';

--LEVEL7-68
SELECT 注文日, 注文番号,注文枝番,S.商品コード,商品名,単価,数量
,単価*数量-COALESCE(クーポン割引料,0) AS 注文金額
FROM 注文 AS T
	JOIN 商品 AS S
	ON S.商品コード = T.商品コード
WHERE 注文番号 = '201704030010'
UNION
SELECT 注文日, 注文番号,注文枝番,H.商品コード,商品名,単価,数量
,単価*数量-COALESCE(クーポン割引料,0) AS 注文金額
FROM 注文 AS T
	JOIN 廃番商品 AS H
	ON H.商品コード = T.商品コード 
WHERE 注文番号 = '201704030010';

--LEVEL7-69
SELECT DISTINCT S.商品コード ,S.商品名 , S.単価 ,C.売上個数,C.総売上金額
FROM 商品 AS S
	JOIN 注文 AS T
	ON S.商品コード = T.商品コード
	JOIN (SELECT T.商品コード ,SUM(数量) AS 売上個数 ,単価*SUM(数量)AS 総売上金額
			FROM 注文 AS T
			JOIN 商品 AS S
			ON T.商品コード = S.商品コード
			WHERE T.商品コード LIKE 'B%'
			GROUP BY T.商品コード,単価
			) AS C
	ON S.商品コード = C.商品コード
WHERE S.商品コード LIKE 'B%'
ORDER BY S.商品コード;

--LEVEL7-70
SELECT S1.商品コード,S1.商品名,S1.関連商品コード,S2.商品名 AS 商品名
FROM 商品 AS S1
	JOIN 商品 AS S2
	ON S1.関連商品コード = S2.商品コード;
