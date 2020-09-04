--LEVEL5-49
SELECT SUM(残高) AS 残高の合計,MAX(残高) AS 最大,
MIN(残高) AS 最小,AVG(残高) AS 平均, COUNT(*) AS データ件数
FROM 口座 ;

--LEVEL5-50
SELECT COUNT(*) AS データ件数
FROM 口座 
WHERE 種別 NOT IN ('1') AND 残高 >=1000000 AND 更新日 <= '2017-12-31'; 

--LEVEL5-51
SELECT COUNT(*) - COUNT(更新日) AS データ件数
FROM 口座;

--LEVEL5-52
SELECT MAX(名義) AS 最大値,MIN(名義) AS 最小値
FROM 口座 ;

--LEVEL5-53
SELECT MAX(更新日) AS 最大値,MIN(更新日) AS 最小値
FROM 口座 ;

--LEVEL5-54
SELECT SUM(残高) AS 残高の合計,MAX(残高) AS 最大,
MIN(残高) AS 最小,AVG(残高) AS 平均, COUNT(*) AS データ件数
FROM 口座 
GROUP BY 種別;

--LEVEL5-55
SELECT SUBSTRING(口座番号,7,1)AS 下１桁, COUNT(*) AS データ件数
FROM 口座 
GROUP BY SUBSTRING(口座番号,7,1)

--LEVEL5-56
SELECT COALESCE(CAST(YEAR(更新日) AS CHAR),'XXXX年') AS 年,
SUM(残高) AS 残高の合計,MAX(残高) AS 最大,
MIN(残高) AS 最小,AVG(残高) AS 平均, COUNT(*) AS データ件数
FROM 口座 
GROUP BY YEAR(更新日);

--LEVEL5-57
SELECT SUM(残高) AS 残高の合計, COUNT(*) AS データ件数
FROM 口座 
GROUP BY 種別
HAVING SUM(残高) > 3000000;

--LEVEL5-58
SELECT SUBSTRING(名義,1,1)AS 名義１文字目, COUNT(*) AS データ件数, AVG(LEN(REPLACE(名義,'　','')))AS 名義文字数の平均
FROM 口座 
GROUP BY SUBSTRING(名義,1,1)
HAVING COUNT(*) >= 10 OR AVG(LEN(REPLACE(名義,'　',''))) >5;

