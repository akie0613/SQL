--LEVEL6-59
UPDATE ����
SET �c�� =�c��+ (SELECT SUM(�����z)-SUM(�o���z)
					FROM ���
					WHERE �����ԍ�='0351333' AND ���t='2018-01-11')
WHERE �����ԍ� = '0351333';

--LEVEL6-60
SELECT �c��,(SELECT SUM(�����z) 
				FROM ���
				WHERE �����ԍ� = '1115600' AND ���t = '2017-12-28') AS �����z
			,(SELECT SUM(�o���z)
				FROM ���
				WHERE �����ԍ� = '1115600' AND ���t = '2017-12-28') AS �o���z
FROM ����
WHERE �����ԍ� = '1115600';

--LEVEL6-61
SELECT �����ԍ�,���`,�c��
FROM ����
WHERE �����ԍ� IN (SELECT DISTINCT �����ԍ�
					FROM ���
					WHERE �����z > 1000000);

--LEVEL6-62
SELECT *
FROM ����
WHERE �X�V�� < ALL (SELECT ���t 
				  FROM ���
				  WHERE ����.�����ԍ�= ���.�����ԍ�  );

--LEVEL6-63�@�����Əo���̗����������������t�̒��o���ł��Ȃ�
SELECT  MAX(SUB.�����z) AS�@�ő�����z ,MAX(SUB.�o���z) AS �ő�o���z 
FROM(SELECT �����z,�o���z,���t
	FROM ���
	WHERE �����ԍ� = '3104451')AS SUB

--LEVEL6-64
INSERT INTO �p�~����
SELECT *
FROM ����
WHERE �����ԍ�='2761055';

DELETE ����
WHERE �����ԍ�='2761055';


