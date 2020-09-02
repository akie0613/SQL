--level2-6
SELECT *
FROM パーティー
WHERE Id ='C02';

--level2-7
UPDATE パーティー
SET HP=120
WHERE Id ='A01';

--level2-8
SELECT ID,名称,HP
FROM パーティー
WHERE HP < 100;

--level2-9
SELECT ID,名称,MP
FROM パーティー
WHERE MP >= 100;

--level2-10
SELECT イベント番号,イベント名称,タイプ
FROM イベント
WHERE タイプ <> '3';

--level2-11
SELECT イベント番号,イベント名称
FROM イベント
WHERE イベント番号 <= 5;

--level2-12
SELECT イベント番号,イベント名称
FROM イベント
WHERE イベント番号 > 20;

--level2-13
SELECT イベント番号,イベント名称
FROM イベント
WHERE 前提イベント番号 IS NULL;

--level2-14
SELECT イベント番号,イベント名称,後続イベント番号
FROM イベント
WHERE 後続イベント番号 IS NOT NULL;

--level2-15
UPDATE パーティー
SET 状態コード = '01'
WHERE 名称 LIKE '%ミ%';

--level2-16
SELECT ID,名称,HP
FROM パーティー
WHERE HP BETWEEN 120 AND 160;

--level2-17
SELECT 名称,職業コード
FROM パーティー
WHERE 職業コード IN('01','10','11');

--level2-18
SELECT 名称,状態コード
FROM パーティー
WHERE 状態コード NOT IN('01','09');

--level2-19
SELECT *
FROM パーティー
WHERE HP > 100 AND MP > 100;

--level2-20
SELECT *
FROM パーティー
WHERE ID LIKE 'A%'
AND 職業コード LIKE '2%';

--level2-21
SELECT *
FROM イベント
WHERE タイプ = '1'
AND 前提イベント番号 IS NOT NULL
AND 後続イベント番号 IS NOT NULL;

--level2-22
--パーティーテーブル:ID
--イベントテーブル:イベント番号