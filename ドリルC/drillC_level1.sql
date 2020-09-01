--level1-1
SELECT ID,名称,職業コード,HP,MP,状態コード
FROM パーティー;

--level1-2
SELECT 名称 as なまえ,HP as 現在のHP,MP as 現在のHP
FROM パーティー;

--level1-3
SELECT *
FROM イベント;

--level1-4
SELECT イベント番号 as 番号, イベント名称 as 場面
FROM イベント;

--level1-5
INSERT INTO パーティー
VALUES
('A01','スガワラ',21,131,232,'03'),
('A02','オーエ',10,156,84,'00'),
('A02','イズミ',20,84,190,'00');