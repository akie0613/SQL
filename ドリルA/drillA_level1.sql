--level1-1
SELECT id,name,kind,balance,date 
FROM Account

--level1-2
SELECT id 
FROM Account

--level1-3
SELECT id,balance 
FROM Account

--level1-4
SELECT * 
FROM Account

--level1-5
UPDATE Account 
SET name = 'XXXXX' 

--level1-6
UPDATE Account
SET balance = 99999999,date = '2018-03-31'

--level1-7
INSERT INTO Account VALUES (0642191,'アオキ　ハルカ',1,3640551,'2018-03-13')
INSERT INTO Account VALUES (1039410,'キノシタ　リュウジ',1,259017,'2017-11-30')
INSERT INTO Account VALUES (1239855,'タカシナ　ミツル',2,6509773,NULL)

--level1-8
DELETE FROM Account

