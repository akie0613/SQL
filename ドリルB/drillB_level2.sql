--level2-6
SELECT *
FROM ���i
WHERE ���i�R�[�h = 'W1252';

--level2-7
UPDATE ���i
SET �P�� = 500
WHERE ���i�R�[�h = 'S0023';

--level2-8
SELECT *
FROM ���i
WHERE �P�� <= 1000;

--level2-9
SELECT *
FROM ���i
WHERE �P�� >= 50000;

--level2-10
SELECT *
FROM ����
WHERE ������ >= '2018-01-01';

--level2-11
SELECT *
FROM ����
WHERE ������ <= '2017-11-31';

--level2-12
SELECT *
FROM ���i
WHERE ���i�敪 <> 1;

--level2-13
SELECT *
FROM ����
WHERE �N�[�|�������� IS NULL;

--level2-14
DELETE
FROM ���i
WHERE ���i�R�[�h LIKE 'N%';

--level2-15
SELECT ���i�R�[�h,���i��,�P��
FROM ���i
WHERE ���i�� LIKE '%�R�[�g%';

--level2-16
SELECT ���i�R�[�h,���i�敪
FROM ���i
WHERE ���i�敪 IN(2,3,9);

--level2-17
SELECT *
FROM ���i
WHERE ���i�R�[�h BETWEEN 'A0100' AND 'A0500';

--level2-18
SELECT *
FROM ����
WHERE ���i�R�[�h IN ('N0501','N1021','N0223');

--level2-19
SELECT *
FROM ���i
WHERE ���i�敪 = 3 AND ���i�� LIKE '%����%';

--level2-20
SELECT *
FROM ���i
WHERE ���i�� LIKE '%�y��%' OR ���i�� LIKE'%���ӂ�%';

--level2-21
SELECT *
FROM ���i
WHERE (���i�敪 = '1' AND �P�� <= 3000)
OR (���i�敪 = '3' AND �P�� >= 10000);

--level2-22
SELECT *
FROM ����
WHERE ������ BETWEEN '2018-03-01' AND '2018-03-31'
AND ���� >= 3;

--level2-23
SELECT *
FROM ����
WHERE ���� >= 10 OR �N�[�|�������� IS NOT NULL;

--level2-24
--���i�e�[�u��:���i�R�[�h
--�����e�[�u��:�����ԍ�