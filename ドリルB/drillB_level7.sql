--LEVEL7-61
SELECT �����ԍ�,�����}��,T.���i�R�[�h,���i��,����
FROM ���� AS T
	JOIN ���i AS S
	ON T.���i�R�[�h = S.���i�R�[�h
	AND �����ԍ� = '201801130115'
ORDER BY �����ԍ�, �����}��;

--LEVEL7-62
SELECT ������, �����ԍ�, �����}��, ����, �P��*���� AS �������z
FROM �p�ԏ��i AS H
	JOIN ���� AS T
	ON H.���i�R�[�h = T.���i�R�[�h
	AND H.���i�R�[�h = 'A0009'
WHERE H.�p�ԓ� < T.������; 

--LEVEL7-63
SELECT S.���i�R�[�h,���i��, �P��, ������, �����ԍ�, ����
,�P�� * ���� AS ������z
FROM ���i AS S
	JOIN ���� AS T
	ON S.���i�R�[�h = T.���i�R�[�h
	AND S.���i�R�[�h ='S0604'
ORDER BY ������;

--LEVEL7-64
SELECT S.���i�R�[�h , S.���i��
FROM ���i AS S
	JOIN ���� AS T
	ON S.���i�R�[�h = T.���i�R�[�h
	AND ������ BETWEEN '2016-08-01' AND '2016-08-31'

--LEVEL7-65
SELECT S.���i�R�[�h , S.���i��
FROM ���i AS S
	JOIN ���� AS T
	ON S.���i�R�[�h = T.���i�R�[�h
	AND ������ BETWEEN '2016-08-01' AND '2016-08-31'
UNION 
SELECT H.���i�R�[�h , '�p��' AS ���i��
FROM �p�ԏ��i AS H
	JOIN ���� AS T
	ON H.���i�R�[�h = T.���i�R�[�h
	AND ������ BETWEEN '2016-08-01' AND '2016-08-31';

--LEVEL7-66
SELECT ������,CONCAT(S.���i�R�[�h,':',���i��)AS ���i,
	CASE 
	  WHEN ���� IS NOT NULL THEN ����
	  ELSE 0 END AS ����
FROM ���i AS S
	LEFT JOIN ���� AS T
	ON S.���i�R�[�h = T.���i�R�[�h
WHERE S.���i�敪 ='3';

--LEVEL7-67
SELECT ������,CONCAT(S.���i�R�[�h,':',
	CASE 
	  WHEN S.���i�R�[�h = H.���i�R�[�h THEN '(�p�ԍς�)'
	  ELSE S.���i�� END) AS ���i,
	CASE 
	  WHEN ���� IS NOT NULL THEN ����
	  ELSE 0 END AS ����
FROM ���i AS S
	LEFT JOIN ���� AS T
	ON S.���i�R�[�h = T.���i�R�[�h
	LEFT JOIN �p�ԏ��i AS H
	ON S.���i�R�[�h = H.���i�R�[�h
WHERE S.���i�敪 ='3';

--LEVEL7-68
SELECT ������, �����ԍ�,�����}��,S.���i�R�[�h,���i��,�P��,����
,�P��*����-COALESCE(�N�[�|��������,0) AS �������z
FROM ���� AS T
	JOIN ���i AS S
	ON S.���i�R�[�h = T.���i�R�[�h
WHERE �����ԍ� = '201704030010'
UNION
SELECT ������, �����ԍ�,�����}��,H.���i�R�[�h,���i��,�P��,����
,�P��*����-COALESCE(�N�[�|��������,0) AS �������z
FROM ���� AS T
	JOIN �p�ԏ��i AS H
	ON H.���i�R�[�h = T.���i�R�[�h 
WHERE �����ԍ� = '201704030010';

--LEVEL7-69
SELECT DISTINCT S.���i�R�[�h ,S.���i�� , S.�P�� ,C.�����,C.��������z
FROM ���i AS S
	JOIN ���� AS T
	ON S.���i�R�[�h = T.���i�R�[�h
	JOIN (SELECT T.���i�R�[�h ,SUM(����) AS ����� ,�P��*SUM(����)AS ��������z
			FROM ���� AS T
			JOIN ���i AS S
			ON T.���i�R�[�h = S.���i�R�[�h
			WHERE T.���i�R�[�h LIKE 'B%'
			GROUP BY T.���i�R�[�h,�P��
			) AS C
	ON S.���i�R�[�h = C.���i�R�[�h
WHERE S.���i�R�[�h LIKE 'B%'
ORDER BY S.���i�R�[�h;

--LEVEL7-70
SELECT S1.���i�R�[�h,S1.���i��,S1.�֘A���i�R�[�h,S2.���i�� AS ���i��
FROM ���i AS S1
	JOIN ���i AS S2
	ON S1.�֘A���i�R�[�h = S2.���i�R�[�h;
