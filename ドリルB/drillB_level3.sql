--level3-25
SELECT ���i�R�[�h,���i��
FROM ���i
WHERE ���i�敪 = '1'
ORDER BY ���i�R�[�h DESC;

--level3-26
SELECT ������,�����ԍ�,�����}��,���i�R�[�h,����
FROM ����
WHERE ������ >= '2018-03-01'
ORDER BY ������,�����ԍ�,�����}��;

--level3-27
SELECT DISTINCT ���i�R�[�h
FROM ����
ORDER BY ���i�R�[�h;

--level3-28
SELECT ������
FROM ����
ORDER BY ������ DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--level3-29
SELECT *
FROM ���i
ORDER BY �P��,���i�敪,���i�R�[�h
OFFSET 5 ROWS FETCH NEXT 15 ROWS ONLY;

--level3-30
SELECT *
FROM �p�ԏ��i
WHERE �p�ԓ� BETWEEN '2016-12-01' AND '2016-12-31'
OR �����>100
ORDER BY ����� DESC;

--level3-31
SELECT ���i�R�[�h
FROM ���i
EXCEPT
SELECT ���i�R�[�h
FROM ����
ORDER BY ���i�R�[�h;

--level3-32
SELECT ���i�R�[�h
FROM ���i
INTERSECT
SELECT ���i�R�[�h
FROM ����
ORDER BY ���i�R�[�h DESC;

--level3-33
SELECT ���i�R�[�h,���i��,�P��
FROM ���i
WHERE ���i�敪 = '9'
AND (�P��<=1000 OR �P��>=10000)
ORDER BY �P��,���i�R�[�h;