--LEVEL4-34
SELECT 口座番号,ROUND(残高,-3,1) AS 千円単位の残高
FROM 口座
WHERE 残高>=1000000;

--LEVEL4-35
INSERT 口座
VALUES('0652281','タカギ　ノブオ','1',100000+3000,'2018-04-01');
INSERT 口座
VALUES('1026413','マツモト　サワコ','1',300000+3000,'2018-04-02');
INSERT 口座
VALUES('2239710','ササキ　シゲノリ','1',1000000+3000,'2018-04-03');

--LEVEL4-36
UPDATE 口座
SET 残高 = (残高-3000)*1.003
WHERE 口座番号 IN ('0652281','1026413','2239710');

--LEVEL4-37
SELECT 口座番号,更新日,DATEADD(DAY,180,更新日) AS 通帳期限日
FROM 口座
WHERE 更新日 <= '2016-12-31';

--LEVEL4-38
SELECT 口座番号,CONCAT('カ）',名義) AS 名義 
FROM 口座
WHERE 種別 ='3';

--LEVEL4-39
SELECT 種別 AS 種別コード, CASE 種別
	WHEN '1' THEN '普通'
	WHEN '2' THEN '当座'
	WHEN '3' THEN '別段'END AS 種別名
FROM 口座;

--LEVEL4-40
SELECT 口座番号,名義, CASE 
	WHEN 残高 < 100000 THEN 'C'
	WHEN 残高 < 1000000 THEN 'B'
	ELSE 'A' END AS 残高ランク
FROM 口座;

--LEVEL4-41
SELECT 口座番号,REPLACE(名義,'　',''),LEN(残高) AS 残高の文字数
FROM 口座;

--LEVEL4-42
SELECT *
FROM 口座
WHERE SUBSTRING(名義,1,5) LIKE '%カワ%';

--LEVEL4-43
SELECT *
FROM 口座
WHERE LEN(残高) >= 4 AND SUBSTRING(CAST(残高 AS CHAR),LEN(残高)-2,3)='000';

--LEVEL4-44
SELECT 口座番号,残高,FLOOR(残高*0.02) AS 利息 
FROM 口座
ORDER BY 残高 DESC;

--LEVEL4-45
SELECT 口座番号,残高,CASE
	WHEN 残高 < 500000 THEN FLOOR(残高*0.01) 	
	WHEN 残高 < 2000000 THEN FLOOR(残高*0.02) 
	ELSE FLOOR(残高*0.03) END AS 残高別利息 
FROM 口座
ORDER BY 残高別利息 DESC, 口座番号;

--LEVEL4-46
INSERT INTO 口座
VALUES('0351262','イトカワ　ダイ','2',635110,FORMAT(CURRENT_TIMESTAMP,'yyyy-MM-dd'));
INSERT INTO 口座
VALUES('1015513','アキツ　ジュンジ','1',88463,FORMAT(CURRENT_TIMESTAMP,'yyyy-MM-dd'));
INSERT INTO 口座
VALUES('1739298','ホシノ　サトミ','1',704610,FORMAT(CURRENT_TIMESTAMP,'yyyy-MM-dd'));

--LEVEL4-47
SELECT 口座番号,名義,種別,残高,FORMAT(更新日,'yyyy年MM月dd日')AS 更新日
FROM 口座
WHERE 更新日>='2018-01-01'

--LEVEL4-48
SELECT COALESCE(CONVERT(CHAR,更新日),'設定なし')AS 更新日
FROM 口座;

