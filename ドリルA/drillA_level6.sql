--LEVEL6-59
UPDATE 口座
SET 残高 =残高+ (SELECT SUM(入金額)-SUM(出金額)
					FROM 取引
					WHERE 口座番号='0351333' AND 日付='2018-01-11')
WHERE 口座番号 = '0351333';

--LEVEL6-60
SELECT 残高,(SELECT SUM(入金額) 
				FROM 取引
				WHERE 口座番号 = '1115600' AND 日付 = '2017-12-28') AS 入金額
			,(SELECT SUM(出金額)
				FROM 取引
				WHERE 口座番号 = '1115600' AND 日付 = '2017-12-28') AS 出金額
FROM 口座
WHERE 口座番号 = '1115600';

--LEVEL6-61
SELECT 口座番号,名義,残高
FROM 口座
WHERE 口座番号 IN (SELECT DISTINCT 口座番号
					FROM 取引
					WHERE 入金額 > 1000000);

--LEVEL6-62
SELECT *
FROM 口座
WHERE 更新日 < ALL (SELECT 日付 
				  FROM 取引
				  WHERE 口座.口座番号= 取引.口座番号  );

--LEVEL6-63　入金と出金の両方が発生した日付の抽出ができない
SELECT  MAX(SUB.入金額) AS　最大入金額 ,MAX(SUB.出金額) AS 最大出金額 
FROM(SELECT 入金額,出金額,日付
	FROM 取引
	WHERE 口座番号 = '3104451')AS SUB

--LEVEL6-64
INSERT INTO 廃止口座
SELECT *
FROM 口座
WHERE 口座番号='2761055';

DELETE 口座
WHERE 口座番号='2761055';


