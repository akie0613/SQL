--level3-24
SELECT *
FROM ����
ORDER BY �����ԍ�;

--level3-25
SELECT DISTINCT ���`
FROM ����
ORDER BY ���`;

--level3-26
SELECT *
FROM ����
ORDER BY 4 DESC, 1;

--level3-27
SELECT �X�V��
FROM ����
WHERE �X�V�� IS NOT NULL
ORDER BY �X�V��
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--level3-28
SELECT �X�V��,�c��
FROM ����
WHERE �c�� <> 0 AND �X�V�� IS NOT NULL
ORDER BY �c��,�X�V�� DESC
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

--level3-29
SELECT �����ԍ�
FROM ����
UNION
SELECT �����ԍ�
FROM �p�~����
ORDER BY �����ԍ�;

--level3-30
SELECT DISTINCT ���`
FROM ����
EXCEPT
SELECT ���`
FROM �p�~����
ORDER BY ���` DESC;

--level3-31
SELECT ���`
FROM ����
INTERSECT
SELECT ���`
FROM �p�~����
ORDER BY ���` DESC;

--level3-32
SELECT �����ԍ�,�c��
FROM ����
WHERE �c�� = 0
UNION
SELECT �����ԍ�,��񎞎c��
FROM �p�~����
WHERE ��񎞎c�� <>0
ORDER BY �����ԍ�;

--level3-33
SELECT �����ԍ�,���`,������='�Z'
FROM ����
UNION 
SELECT �����ԍ�,���`,������='�~'
FROM �p�~����
ORDER BY ���`;

