--LEVEL4-34
SELECT ���i�R�[�h, �P��,FLOOR(�P��*0.95) AS �L�����y�[�����i 
FROM ���i
WHERE ���i�敪= '9'
ORDER BY ���i�敪;

--LEVEL4-35
UPDATE ����
SET �N�[�|�������� = �N�[�|�������� + 300
WHERE ������ BETWEEN '2018-03-12' AND '2018-03-14' AND ���� >= 2 AND �N�[�|�������� IS NOT NULL

--LEVEL4-36
UPDATE ����
SET ���� = ����-1
WHERE �����ԍ� = '201802250126' AND ���i�R�[�h = 'W0156';

--LEVEL4-37
SELECT ������,CONCAT(�����ԍ�,'-',�����}��) AS �����ԍ�,���i�R�[�h,����,�N�[�|��������
FROM ����
WHERE �����ԍ� BETWEEN'201710010001' AND '201710319999';

--LEVEL4-38
SELECT DISTINCT ���i�敪 AS �敪, 
	CASE ���i�敪
	  WHEN '1' THEN '�ߗ�'
	  WHEN '2' THEN '�C'
	  WHEN '3' THEN '�G��'
	  WHEN '9' THEN '������'END AS �敪��
FROM ���i;

--LEVEL4-39
SELECT ���i�R�[�h,���i��,�P��,
	CASE 
	  WHEN �P�� < 3000 THEN 'S'
	  WHEN �P�� < 10000 THEN 'M'
	  ELSE 'L' END AS �̔����i�����N,
	CASE ���i�敪
	  WHEN '1' THEN CONCAT(���i�敪,':','�ߗ�')
	  WHEN '2' THEN CONCAT(���i�敪,':','�C')
	  WHEN '3' THEN CONCAT(���i�敪,':','�G��')
	  WHEN '9' THEN CONCAT(���i�敪,':','������') END AS ���i�敪
FROM ���i
ORDER BY �P��,���i�R�[�h;

--LEVEL4-40
SELECT ���i��,LEN(���i��)AS ������
FROM ���i
WHERE LEN(���i��) > 10
ORDER BY ������;

--LEVEL4-41
SELECT ������,SUBSTRING(�����ԍ�,9,4) AS �����ԍ�
FROM ����;

--LEVEL4-42
UPDATE ���i 
SET ���i�R�[�h = CONCAT('E',SUBSTRING(���i�R�[�h,2,3))
WHERE ���i�R�[�h LIKE 'M%';

--LEVEL4-43
SELECT SUBSTRING(�����ԍ�,9,4) AS �����ԍ�
FROM ����
WHERE SUBSTRING(�����ԍ�,9,4) BETWEEN '1000' AND '2000'
ORDER BY �����ԍ�;

--LEVEL4-44
UPDATE �p�ԏ��i
--SET �p�ԓ� = FORMAT(CURRENT_TIMESTAMP,'yyyy-MM-dd')
SET �p�ԓ� = FORMAT(GETDATE(),'yyyy-MM-dd')
WHERE ���i�R�[�h = 'S1990';

--LEVEL4-45
SELECT ���i�R�[�h,���i��,�P�� AS ���݂̒P��, FLOOR(�P��*0.7) AS �l���������P��
FROM ���i
WHERE �P�� >= 10000;