--level2-6
SELECT *
FROM 商品
WHERE 商品コード = 'W1252';

--level2-7
UPDATE 商品
SET 単価 = 500
WHERE 商品コード = 'S0023';

--level2-8
SELECT *
FROM 商品
WHERE 単価 <= 1000;

--level2-9
SELECT *
FROM 商品
WHERE 単価 >= 50000;

--level2-10
SELECT *
FROM 注文
WHERE 注文日 >= '2018-01-01';

--level2-11
SELECT *
FROM 注文
WHERE 注文日 <= '2017-11-31';

--level2-12
SELECT *
FROM 商品
WHERE 商品区分 <> 1;

--level2-13
SELECT *
FROM 注文
WHERE クーポン割引料 IS NULL;

--level2-14
DELETE
FROM 商品
WHERE 商品コード LIKE 'N%';

--level2-15
SELECT 商品コード,商品名,単価
FROM 商品
WHERE 商品名 LIKE '%コート%';

--level2-16
SELECT 商品コード,商品区分
FROM 商品
WHERE 商品区分 IN(2,3,9);

--level2-17
SELECT *
FROM 商品
WHERE 商品コード BETWEEN 'A0100' AND 'A0500';

--level2-18
SELECT *
FROM 注文
WHERE 商品コード IN ('N0501','N1021','N0223');

--level2-19
SELECT *
FROM 商品
WHERE 商品区分 = 3 AND 商品名 LIKE '%水玉%';

--level2-20
SELECT *
FROM 商品
WHERE 商品名 LIKE '%軽い%' OR 商品名 LIKE'%ゆるふわ%';

--level2-21
SELECT *
FROM 商品
WHERE (商品区分 = '1' AND 単価 <= 3000)
OR (商品区分 = '3' AND 単価 >= 10000);

--level2-22
SELECT *
FROM 注文
WHERE 注文日 BETWEEN '2018-03-01' AND '2018-03-31'
AND 数量 >= 3;

--level2-23
SELECT *
FROM 注文
WHERE 数量 >= 10 OR クーポン割引料 IS NOT NULL;

--level2-24
--商品テーブル:商品コード
--注文テーブル:注文番号