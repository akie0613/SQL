--level2-9
SELECT *
FROM 口座
WHERE 口座番号 = '0037651';

--level2-10
SELECT *
FROM 口座
WHERE 残高 > '0';

--level2-11
SELECT *
FROM 口座
WHERE 口座番号 < 1000000;

--level2-12
SELECT *
FROM 口座
WHERE 更新日 < '2018-01-01';

--level2-13
SELECT *
FROM 口座
WHERE 残高 >= 1000000;

--level2-14
SELECT *
FROM 口座
WHERE 種別 <> '1';

--level2-15
SELECT *
FROM 口座
WHERE 更新日 IS NULL;

--level2-16
SELECT *
FROM 口座
WHERE 名義 LIKE '%ハシ%';

--level2-17
SELECT *
FROM 口座
WHERE 更新日 BETWEEN '2018-01-01' AND '2018-01-31';

--level2-18
SELECT *
FROM 口座
WHERE 種別 IN ('2','3');

--level2-19
SELECT *
FROM 口座
WHERE 名義 IN ('サカタ　リョウヘイ','マツモト　ミワコ','ハマダ　サトシ');

--level2-20
SELECT *
FROM 口座
WHERE 更新日 BETWEEN '2017-12-30' AND '2018-01-04';

--level2-21
SELECT *
FROM 口座
WHERE 残高 < 10000 AND 更新日 IS NOT NULL;

--level2-22
SELECT *
FROM 口座
WHERE 口座番号 BETWEEN 2000000 AND 2999999 OR (名義 LIKE 'エ__　%' AND 名義 LIKE '%コ');

--level2-23
--口座テーブル：口座番号
--取引テーブル：取引番号
--取引事由テーブル：取引事由ID
