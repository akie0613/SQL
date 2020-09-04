--LEVEL5-45
SELECT MAX(HP) AS HP最大値,MIN(HP) AS HP最小値, AVG(HP) AS HP平均値
	,MAX(MP) AS MP最大値,MIN(MP) AS MP最小値, AVG(MP) AS MP平均値
FROM パーティー;

--LEVEL5-46
SELECT 
	CASE タイプ
	  WHEN '1' THEN '強制'
	  WHEN '2' THEN 'フリー'
	  WHEN '3' THEN '特殊' END AS タイプ,
	COUNT(*) AS イベントの数
FROM イベント
GROUP BY タイプ;

--LEVEL5-47
SELECT クリア結果 ,COUNT(*) AS イベントの数
FROM 経験イベント
WHERE クリア結果 IS NOT NULL
GROUP BY クリア結果
ORDER BY クリア結果;

--LEVEL5-48
SELECT 
	CASE
	  WHEN SUM(MP) < 500 THEN '敵は見とれている！'
	  WHEN SUM(MP) <1000 THEN '敵は呆然としている'
	  WHEN SUM(MP) >=1000 THEN '敵はひれ伏している' END AS 敵の行動
FROM パーティー

--LEVEL5-49
SELECT 
	CASE クリア区分
	  WHEN '1' THEN 'クリアした'
	  WHEN '0' THEN '参加したがクリアしていない' END AS 区分
	,COUNT(*) AS イベント数
FROM 経験イベント
GROUP BY クリア区分;

--LEVEL5-50
SELECT SUBSTRING(職業コード,1,1) AS 職業タイプ
	,MAX(HP) AS HP最大値,MIN(HP) AS HP最小値, AVG(HP) AS HP平均値
	,MAX(MP) AS MP最大値,MIN(MP) AS MP最小値, AVG(MP) AS MP平均値
FROM パーティー
GROUP BY SUBSTRING(職業コード,1,1);

--LEVEL5-51
SELECT SUBSTRING(ID,1,1) AS IDによる分類
	,AVG(HP) AS HPの平均
	,AVG(MP) AS MPの平均
FROM パーティー
GROUP BY SUBSTRING(ID,1,1)
HAVING AVG(HP)>100;

--LEVEL5-52
SELECT SUM(
	CASE 
	  WHEN HP < 100 THEN 1 
	  WHEN HP < 150 THEN 2
	  WHEN HP < 200 THEN 3
	  WHEN HP >= 200 THEN 5 END) AS 扉の数
FROM パーティー;