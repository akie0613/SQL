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
WHERE 更新日 > ALL (SELECT 日付 
				  FROM 取引  );

--LEVEL6-63　入金と出金の両方が発生した日付の抽出ができない
SELECT  MAX(SUB.入金額) AS　最大入金額 ,MAX(SUB.出金額) AS 最大出金額 
FROM(SELECT 入金額,出金額,日付
	FROM 取引
	WHERE 口座番号 = '3104451')AS SUB

--LEVEL6-63解
SELECT A. 日付,
       (SELECT MAX(入金額) FROM 取引 WHERE 口座番号 = '3104451') AS 最大入金額,
       (SELECT MAX(出金額) FROM 取引 WHERE 口座番号 = '3104451') AS 最大出金額
  FROM (SELECT 日付
          FROM 取引
         WHERE 口座番号 = '3104451'
         GROUP BY 日付
        HAVING SUM(入金額) > 0 AND SUM(出金額) > 0) AS A;
--LEVEL6-63解2

SELECT A.日付,
       B.最大入金額,
       B.最大出金額
  FROM (SELECT 日付,口座番号
          FROM 取引
         WHERE 口座番号 = '3104451'
         GROUP BY 日付,口座番号
        HAVING SUM(入金額) > 0 AND SUM(出金額) > 0) AS A
        FULL OUTER JOIN
        (SELECT MAX(入金額) AS 最大入金額,MAX(出金額) AS 最大出金額,口座番号
         FROM 取引
         WHERE 口座番号 = '3104451'
		 GROUP BY 口座番号) AS B
		 ON A.口座番号 = B.口座番号;

--LEVEL6-64
INSERT INTO 廃止口座
SELECT *
FROM 口座
WHERE 口座番号='2761055';

DELETE 口座
WHERE 口座番号='2761055';


