--LEVEL5-46
SELECT SUM(����) AS ���ʂ̍��v
FROM ����;

--LEVEL5-47
SELECT ������, SUM(����) AS ���ʂ̍��v
FROM ����
GROUP BY ������
ORDER BY ������;

--LEVEL5-48
SELECT ���i�敪, MIN(�P��) AS �ŏ��z , MAX(�P��) AS �ō��z
FROM ���i
GROUP BY ���i�敪
ORDER BY ���i�敪;

--LEVEL5-49
SELECT ���i�R�[�h, SUM(����) AS ���ʂ̍��v
FROM ����
GROUP BY ���i�R�[�h
ORDER BY ���i�R�[�h;

--LEVEL5-50
SELECT ���i�R�[�h, SUM(����) AS ���ʂ̍��v
FROM ����
GROUP BY ���i�R�[�h
ORDER BY ���ʂ̍��v DESC , ���i�R�[�h
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--LEVEL5-51
SELECT ���i�R�[�h, SUM(����) AS ���ʂ̍��v
FROM ����
GROUP BY ���i�R�[�h
HAVING SUM(����) < 5;

--LEVEL5-52
SELECT COUNT(�N�[�|��������) AS ��������, SUM(�N�[�|��������) AS �����z�̍��v
FROM ����;

--LEVEL5-53
SELECT FORMAT(������,'yyyyMM') AS �N��, COUNT(*) AS ��������
FROM ����
WHERE �����}�� = '1'
GROUP BY FORMAT(������,'yyyyMM')
ORDER BY �N�� DESC;

--LEVEL5-52
SELECT ���i�R�[�h
FROM ����
WHERE ���i�R�[�h LIKE 'Z%'
GROUP BY ���i�R�[�h
HAVING SUM(����) >= 100;