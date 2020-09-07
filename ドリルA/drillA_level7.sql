--LEVEL7-65
SELECT 口座番号,日付,取引事由名,
	CASE
	  WHEN 入金額 IS NOT NULL THEN 入金額
	  WHEN 出金額 IS NOT NULL THEN 出金額 
	  ELSE 0 END AS 取引金額
FROM 取引 AS T1
	JOIN 取引事由 AS J1
	ON T1.取引事由ID = J1.取引事由ID
WHERE 口座番号 IN ('0311240','1234161','2750902')
ORDER BY 口座番号,取引番号;

--LEVEL7-66
SELECT K.口座番号,名義,残高,日付,入金額,出金額
FROM 口座 AS K
	JOIN 取引 AS T
	ON K.口座番号 = T.口座番号
WHERE K.口座番号 = '0887132'
ORDER BY 日付;

--LEVEL7-67
SELECT K.口座番号,名義,残高
FROM 口座 AS K
	JOIN 取引 AS T
	ON K.口座番号 = T.口座番号
WHERE 日付 = '2016-03-01';

--LEVEL7-68
SELECT K.口座番号,名義 ,残高
FROM 口座 AS K
	JOIN 取引 AS T
	ON K.口座番号 = T.口座番号
WHERE 日付 = '2016-03-01'
UNION
SELECT K.口座番号,'解約済み' AS 名義, 0 AS 残高 
FROM 廃止口座 AS K
	JOIN 取引 AS T
	ON K.口座番号 = T.口座番号
WHERE 日付 = '2016-03-01';

--LEVEL7-69
SELECT 取引番号, CONCAT(J.取引事由ID,':',取引事由名) AS 取引事由
,日付,口座番号,入金額,出金額
FROM 取引 AS T
	RIGHT JOIN 取引事由 AS J
	ON T.取引事由ID = J.取引事由ID;

--LEVEL7-70
SELECT T.取引事由ID, J.取引事由名
FROM (SELECT 取引事由ID
		FROM 取引
		UNION
		SELECT 取引事由ID
		FROM 取引事由 )AS T
	LEFT JOIN 取引事由 AS J
	ON T.取引事由ID = J.取引事由ID;

--LEVEL7-71
SELECT K.口座番号,名義,残高,日付,取引事由名,入金額,出金額
FROM 口座 AS K
	JOIN 取引 AS T
	ON K.口座番号 = T.口座番号
	JOIN 取引事由 AS J
	ON T.取引事由ID = J.取引事由ID
WHERE K.口座番号 = '0887132'
ORDER BY 日付;

--LEVEL7-72
SELECT K.口座番号,名義,残高,日付,取引事由ID,入金額,出金額
FROM 口座 AS K
	JOIN 取引 AS T
	ON K.口座番号 = T.口座番号
	AND 日付 > '2018-01-01'
WHERE 残高 >= 5000000 AND (入金額 >= 1000000 OR 出金額 >= 1000000);

--LEVEL7-73
SELECT *
FROM(SELECT K.口座番号,名義,残高,日付,取引事由ID,入金額,出金額
	FROM 口座 AS K
		JOIN 取引 AS T
		ON K.口座番号 = T.口座番号
		AND 日付 > '2018-01-01') AS SUB
WHERE 残高 >= 5000000 AND (入金額 >= 1000000 OR 出金額 >= 1000000);

--LEVEL7-74
SELECT DISTINCT T.口座番号, C.回数 ,名義
FROM 取引 AS T
	JOIN 口座 AS K
	ON T.口座番号 = K.口座番号
	JOIN (SELECT 口座番号, 日付, COUNT(*) AS 回数
		FROM 取引
		GROUP BY 口座番号,日付
		HAVING COUNT(*) >= 3) AS C
		ON T.口座番号 = C.口座番号;
			
--LEVEL7-74(別解)
SELECT T.口座番号 ,COUNT(*)AS 回数 ,名義
FROM 取引 AS T
	JOIN 口座 AS K
	ON T.口座番号 = K.口座番号
GROUP BY T.口座番号,日付,名義
HAVING COUNT(*) >= 3;

--LEVEL7-75
SELECT 名義,K.口座番号,種別,残高,更新日
FROM 口座 AS K
	JOIN (SELECT 口座番号, COUNT(*) AS 口座数
			FROM 口座
			GROUP BY 口座番号
			HAVING COUNT(*) >= 2) AS N 
	ON K.口座番号 = N.口座番号
ORDER BY 名義, K.口座番号;
