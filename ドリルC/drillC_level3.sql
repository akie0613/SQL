--level3-23
SELECT DISTINCT 状態コード
FROM パーティー;

--level3-24
SELECT ID,名称
FROM パーティー
ORDER BY ID;

--level3-25
SELECT 名称,職業コード
FROM パーティー
ORDER BY 名称 DESC;

--level3-26
SELECT 名称,HP,状態コード
FROM パーティー
ORDER BY 状態コード,HP DESC;

--level3-27
SELECT タイプ,イベント番号,イベント名称,前提イベント番号,後続イベント番号
FROM イベント
ORDER BY 1,2;

--level3-28
SELECT *
FROM パーティー
ORDER BY HP DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;

--level3-29
SELECT *
FROM パーティー
ORDER BY MP DESC
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY;

--level3-30
SELECT 'S' AS 職業区分,職業コード,ID,名称
FROM パーティー
WHERE 職業コード LIKE '1%'
UNION
SELECT 'M' AS 職業区分,職業コード,ID,名称
FROM パーティー
WHERE 職業コード LIKE '2%'
UNION
SELECT 'A' AS 職業区分,職業コード,ID,名称
FROM パーティー
WHERE 職業コード NOT LIKE '1%' AND 職業コード NOT LIKE '2%'
ORDER BY 職業コード;

--level3-31
SELECT イベント番号
FROM イベント
WHERE タイプ = '2'
INTERSECT
SELECT イベント番号
FROM 経験イベント
WHERE クリア区分 = '1';


