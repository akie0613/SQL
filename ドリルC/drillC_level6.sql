--LEVEL6-53
SELECT 名称 AS なまえ, HP AS 現在のHP,
	ROUND(CAST(HP AS FLOAT)/(SELECT SUM(HP) 
	FROM パーティー),2) AS パーティーでの割合
FROM パーティー
WHERE 職業コード　=　'01';

--LEVEL6-54
UPDATE パーティー
SET MP = MP+ ROUND((SELECT SUM(MP) 
				FROM パーティー
				WHERE 職業コード <> '20')*0.1,0)
WHERE 職業コード = '20';

--LEVEL6-55
SELECT イベント番号,クリア結果
FROM 経験イベント
WHERE イベント番号 IN (SELECT イベント番号
						FROM イベント
						WHERE タイプ IN ('1','3'))
	AND クリア区分 = '1';

--LEVEL6-56
SELECT 名称,MP
FROM パーティー
WHERE MP = (SELECT MAX(MP) 
			FROM パーティー);

--LEVEL6-57
SELECT イベント番号, イベント名称
FROM イベント
WHERE イベント番号 IN (SELECT イベント番号
						FROM イベント
						EXCEPT
						SELECT イベント番号
						FROM 経験イベント)
ORDER BY イベント番号;

--LEVEL6-57修正版
SELECT イベント番号, イベント名称
FROM イベント
WHERE イベント番号 NOT IN (SELECT イベント番号
							FROM 経験イベント)
ORDER BY イベント番号;

--LEVEL6-58
SELECT COUNT(*) AS イベント数
FROM(SELECT イベント番号
		FROM イベント
	EXCEPT
	SELECT イベント番号
		FROM 経験イベント
	) AS SUB;

--LEVEL6-59
SELECT イベント番号,イベント名称
FROM イベント
WHERE イベント番号 < (SELECT イベント番号
						FROM 経験イベント
						WHERE クリア区分 = '1'
						ORDER BY ルート番号
						OFFSET 4 ROWS FETCH NEXT 1 ROWS ONLY);

--LEVEL6-60
SELECT イベント番号,イベント名称,前提イベント番号
FROM イベント
WHERE 前提イベント番号 IN (SELECT イベント番号
							FROM 経験イベント
							WHERE クリア区分 = '1');

--LEVEL6-61
UPDATE 経験イベント
SET クリア区分 = '1'
,クリア結果 = 'B'
WHERE イベント番号 = 9;

INSERT 経験イベント
VALUES((SELECT 後続イベント番号
		FROM イベント
		WHERE イベント番号 = 9)
,NULL,NULL,(SELECT ルート番号
			FROM 経験イベント
			WHERE イベント番号 = 9)+1);

