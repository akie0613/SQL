--LEVEL7-65
SELECT �����ԍ�,���t,������R��,
	CASE
	  WHEN �����z IS NOT NULL THEN �����z
	  WHEN �o���z IS NOT NULL THEN �o���z 
	  ELSE 0 END AS ������z
FROM ��� AS T1
	JOIN ������R AS J1
	ON T1.������RID = J1.������RID
WHERE �����ԍ� IN ('0311240','1234161','2750902')
ORDER BY �����ԍ�,����ԍ�;

--LEVEL7-66
SELECT K.�����ԍ�,���`,�c��,���t,�����z,�o���z
FROM ���� AS K
	JOIN ��� AS T
	ON K.�����ԍ� = T.�����ԍ�
WHERE K.�����ԍ� = '0887132'
ORDER BY ���t;

--LEVEL7-67
SELECT K.�����ԍ�,���`,�c��
FROM ���� AS K
	JOIN ��� AS T
	ON K.�����ԍ� = T.�����ԍ�
WHERE ���t = '2016-03-01';

--LEVEL7-68
SELECT K.�����ԍ�,���` ,�c��
FROM ���� AS K
	JOIN ��� AS T
	ON K.�����ԍ� = T.�����ԍ�
WHERE ���t = '2016-03-01'
UNION
SELECT K.�����ԍ�,'���ς�' AS ���`, 0 AS �c�� 
FROM �p�~���� AS K
	JOIN ��� AS T
	ON K.�����ԍ� = T.�����ԍ�
WHERE ���t = '2016-03-01';

--LEVEL7-69
SELECT ����ԍ�, CONCAT(J.������RID,':',������R��) AS ������R
,���t,�����ԍ�,�����z,�o���z
FROM ��� AS T
	RIGHT JOIN ������R AS J
	ON T.������RID = J.������RID;

--LEVEL7-70
SELECT T.������RID, J.������R��
FROM (SELECT ������RID
		FROM ���
		UNION
		SELECT ������RID
		FROM ������R )AS T
	LEFT JOIN ������R AS J
	ON T.������RID = J.������RID;

--LEVEL7-71
SELECT K.�����ԍ�,���`,�c��,���t,������R��,�����z,�o���z
FROM ���� AS K
	JOIN ��� AS T
	ON K.�����ԍ� = T.�����ԍ�
	JOIN ������R AS J
	ON T.������RID = J.������RID
WHERE K.�����ԍ� = '0887132'
ORDER BY ���t;

--LEVEL7-72
SELECT K.�����ԍ�,���`,�c��,���t,������RID,�����z,�o���z
FROM ���� AS K
	JOIN ��� AS T
	ON K.�����ԍ� = T.�����ԍ�
	AND ���t > '2018-01-01'
WHERE �c�� >= 5000000 AND (�����z >= 1000000 OR �o���z >= 1000000);

--LEVEL7-73
SELECT *
FROM(SELECT K.�����ԍ�,���`,�c��,���t,������RID,�����z,�o���z
	FROM ���� AS K
		JOIN ��� AS T
		ON K.�����ԍ� = T.�����ԍ�
		AND ���t > '2018-01-01') AS SUB
WHERE �c�� >= 5000000 AND (�����z >= 1000000 OR �o���z >= 1000000);

--LEVEL7-74
SELECT DISTINCT T.�����ԍ�, C.�� ,���`
FROM ��� AS T
	JOIN ���� AS K
	ON T.�����ԍ� = K.�����ԍ�
	JOIN (SELECT �����ԍ�, ���t, COUNT(*) AS ��
		FROM ���
		GROUP BY �����ԍ�,���t
		HAVING COUNT(*) >= 3) AS C
		ON T.�����ԍ� = C.�����ԍ�;
			
--LEVEL7-74(�ʉ�)
SELECT T.�����ԍ� ,COUNT(*)AS �� ,���`
FROM ��� AS T
	JOIN ���� AS K
	ON T.�����ԍ� = K.�����ԍ�
GROUP BY T.�����ԍ�,���t,���`
HAVING COUNT(*) >= 3;

--LEVEL7-75
SELECT ���`,K.�����ԍ�,���,�c��,�X�V��
FROM ���� AS K
	JOIN (SELECT �����ԍ�, COUNT(*) AS ������
			FROM ����
			GROUP BY �����ԍ�
			HAVING COUNT(*) >= 2) AS N 
	ON K.�����ԍ� = N.�����ԍ�
ORDER BY ���`, K.�����ԍ�;
