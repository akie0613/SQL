--LEVEL6-55
SELECT ���i�R�[�h,���i��,�P��,(SELECT SUM(����)
								FROM ����
								WHERE ���i�R�[�h = 'S0604') AS �̔�����
FROM ���i
WHERE ���i�R�[�h = 'S0604'; 

--LEVEL6-56
UPDATE ����
SET ���i�R�[�h = (SELECT ���i�R�[�h
					FROM ���i
					WHERE ���i�敪 = '2' 
					AND ���i�� LIKE '%�u�[�c%'
					AND ���i�� LIKE '%�J%'
					AND ���i�� LIKE '%���S%')
WHERE ������ = '2018-03-15' AND �����ԍ� = '201803150014' AND �����}��= '1';

--LEVEL6-57
SELECT ������, ���i�R�[�h
FROM ����
WHERE ���i�R�[�h IN (SELECT ���i�R�[�h
					FROM ���i
					WHERE ���i�� LIKE '%��������%')
ORDER BY ������;

--LEVEL6-58
SELECT ���i�R�[�h,SUM(����) AS '�̔�����'
FROM ����
GROUP BY (���i�R�[�h)
HAVING AVG(����) >= ALL(SELECT AVG(����)
					FROM ����
					GROUP BY (���i�R�[�h));

--LEVEL6-59
SELECT SUM(SUB.����) AS �����ɂ��̔��� ,AVG(SUB.�N�[�|��������) AS ���ϊ����z
	FROM(SELECT ���� , �N�[�|��������
		FROM ����
		WHERE �N�[�|���������@IS NOT NULL AND ���i�R�[�h = 'W0746')AS SUB;

--LEVEL6-60
INSERT ����
VALUES('2018-03-21','201803210080'
	,(SELECT MAX(�����}��) AS �����}��
		FROM ����
		WHERE �����ԍ� = 201803210080)+1
,'S1003',1,NULL);

INSERT ����
VALUES('2018-03-22','201803220901'
	,(SELECT MAX(�����}��) AS �����}��
		FROM ����
		WHERE �����ԍ� = 201803220901)+1
,'A0052',2,500);

--LEVEL6-60�ʉ�
INSERT INTO ����
SELECT'2018-03-21','201803210080'
	,(SELECT MAX(�����}��) AS �����}��
		FROM ����
		WHERE �����ԍ� = 201803210080)+1
,'S1003',1,NULL;

INSERT INTO ����
SELECT '2018-03-22','201803220901' 
	,(SELECT MAX(�����}��) AS �����}��
		FROM ����
		WHERE �����ԍ� = 201803220901)+1
,'A0052',2,500;




