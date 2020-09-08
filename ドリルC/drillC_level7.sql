--LEVEL7-62
SELECT K.ルート番号, I.イベント番号, I.イベント名称, K.クリア結果
FROM イベント AS I
	JOIN 経験イベント AS K
	ON I.イベント番号 = K.イベント番号
WHERE クリア区分 = '1'
ORDER BY K.ルート番号;

--LEVEL7-63
SELECT I.イベント番号, I.イベント名称, クリア区分
FROM イベント AS I
	JOIN 経験イベント AS K
	ON I.イベント番号 = K.イベント番号
WHERE I.タイプ = '1';

--LEVEL7-64
SELECT I.イベント番号, I.イベント名称, COALESCE(クリア区分,'未クリア') AS クリア区分
FROM イベント AS I
	LEFT JOIN 経験イベント AS K
	ON I.イベント番号 = K.イベント番号
WHERE I.タイプ = '1';

--LEVEL7-65
SELECT ID, P.名称 AS なまえ, KS.コード名称 AS 職業, KJ.コード名称 AS 状態
FROM パーティー AS P
	JOIN コード AS KS
	ON P.職業コード = KS.コード値
	AND KS.コード種別 = '1'
	JOIN コード AS KJ
	ON P.状態コード = KJ.コード値
	AND KJ.コード種別 = '2'
ORDER BY P.ID;

--LEVEL7-66
SELECT ID , COALESCE(名称,'仲間になっていない！') AS なまえ ,KS.コード名称
FROM パーティー AS P
	RIGHT JOIN コード AS KS
	ON P.職業コード = KS.コード値
WHERE KS.コード種別 = '1';

--LEVEL7-67
SELECT イベント番号, クリア区分, CONCAT(KK.コード値,':', KK.コード名称) AS クリア結果
FROM 経験イベント AS K
	FULL JOIN コード AS KK
	ON K.クリア結果 =KK.コード値
WHERE KK.コード種別 = '4' OR KK.コード種別 IS NULL;

--LEVEL7-68
SELECT I1.イベント番号, I1.イベント名称, I1.前提イベント番号 , I2.イベント名称 AS 前提イベント名称
FROM イベント AS I1
	JOIN イベント AS I2
	ON I1.前提イベント番号 = I2.イベント番号;

--LEVEL7-69
SELECT I1.イベント番号, I1.イベント名称, I1.前提イベント番号 , I2.イベント名称 AS 前提イベント名称
,I1.後続イベント番号, I3.イベント名称
FROM イベント AS I1
	LEFT JOIN イベント AS I2
	ON I1.前提イベント番号 = I2.イベント番号
	LEFT JOIN イベント AS I3
	ON I1.後続イベント番号 = I3.後続イベント番号
WHERE  I1.前提イベント番号 IS NOT NULL AND I2.後続イベント番号 IS NOT NULL;

--LEVEL7-70
SELECT イベント番号, イベント名称, C.前提イベント数
FROM イベント AS I
	JOIN (SELECT 前提イベント番号, COUNT(*) AS 前提イベント数
			FROM イベント
			WHERE 前提イベント番号 IS NOT NULL
			GROUP BY 前提イベント番号) AS C
	ON I.前提イベント番号 = C.前提イベント番号
ORDER BY イベント番号;
