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
WHERE �X�V�� > ALL (SELECT ���t 
				  FROM ���  );

--LEVEL6-63�@�����Əo���̗����������������t�̒��o���ł��Ȃ�
SELECT  MAX(SUB.�����z) AS�@�ő�����z ,MAX(SUB.�o���z) AS �ő�o���z 
FROM(SELECT �����z,�o���z,���t
	FROM ���
	WHERE �����ԍ� = '3104451')AS SUB

--LEVEL6-63��
SELECT A. ���t,
       (SELECT MAX(�����z) FROM ��� WHERE �����ԍ� = '3104451') AS �ő�����z,
       (SELECT MAX(�o���z) FROM ��� WHERE �����ԍ� = '3104451') AS �ő�o���z
  FROM (SELECT ���t
          FROM ���
         WHERE �����ԍ� = '3104451'
         GROUP BY ���t
        HAVING SUM(�����z) > 0 AND SUM(�o���z) > 0) AS A;
--LEVEL6-63��2

SELECT A.���t,
       B.�ő�����z,
       B.�ő�o���z
  FROM (SELECT ���t,�����ԍ�
          FROM ���
         WHERE �����ԍ� = '3104451'
         GROUP BY ���t,�����ԍ�
        HAVING SUM(�����z) > 0 AND SUM(�o���z) > 0) AS A
        FULL OUTER JOIN
        (SELECT MAX(�����z) AS �ő�����z,MAX(�o���z) AS �ő�o���z,�����ԍ�
         FROM ���
         WHERE �����ԍ� = '3104451'
		 GROUP BY �����ԍ�) AS B
		 ON A.�����ԍ� = B.�����ԍ�;

--LEVEL6-64
INSERT INTO �p�~����
SELECT *
FROM ����
WHERE �����ԍ�='2761055';

DELETE ����
WHERE �����ԍ�='2761055';


