--LEVEL6-53
SELECT ���� AS �Ȃ܂�, HP AS ���݂�HP,
	ROUND(CAST(HP AS FLOAT)/(SELECT SUM(HP) 
	FROM �p�[�e�B�[),2) AS �p�[�e�B�[�ł̊���
FROM �p�[�e�B�[
WHERE �E�ƃR�[�h�@=�@'01';

--LEVEL6-54
UPDATE �p�[�e�B�[
SET MP = MP+ ROUND((SELECT SUM(MP) 
				FROM �p�[�e�B�[
				WHERE �E�ƃR�[�h <> '20')*0.1,0)
WHERE �E�ƃR�[�h = '20';

--LEVEL6-55
SELECT �C�x���g�ԍ�,�N���A����
FROM �o���C�x���g
WHERE �C�x���g�ԍ� IN (SELECT �C�x���g�ԍ�
						FROM �C�x���g
						WHERE �^�C�v IN ('1','3'))
	AND �N���A�敪 = '1';

--LEVEL6-56
SELECT ����,MP
FROM �p�[�e�B�[
WHERE MP = (SELECT MAX(MP) 
			FROM �p�[�e�B�[);

--LEVEL6-57
SELECT �C�x���g�ԍ�, �C�x���g����
FROM �C�x���g
WHERE �C�x���g�ԍ� IN (SELECT �C�x���g�ԍ�
						FROM �C�x���g
						EXCEPT
						SELECT �C�x���g�ԍ�
						FROM �o���C�x���g)
ORDER BY �C�x���g�ԍ�;

--LEVEL6-57�C����
SELECT �C�x���g�ԍ�, �C�x���g����
FROM �C�x���g
WHERE �C�x���g�ԍ� NOT IN (SELECT �C�x���g�ԍ�
							FROM �o���C�x���g)
ORDER BY �C�x���g�ԍ�;

--LEVEL6-58
SELECT COUNT(*) AS �C�x���g��
FROM(SELECT �C�x���g�ԍ�
		FROM �C�x���g
	EXCEPT
	SELECT �C�x���g�ԍ�
		FROM �o���C�x���g
	) AS SUB;

--LEVEL6-59
SELECT �C�x���g�ԍ�,�C�x���g����
FROM �C�x���g
WHERE �C�x���g�ԍ� < (SELECT �C�x���g�ԍ�
						FROM �o���C�x���g
						WHERE �N���A�敪 = '1'
						ORDER BY ���[�g�ԍ�
						OFFSET 4 ROWS FETCH NEXT 1 ROWS ONLY);

--LEVEL6-60
SELECT �C�x���g�ԍ�,�C�x���g����,�O��C�x���g�ԍ�
FROM �C�x���g
WHERE �O��C�x���g�ԍ� IN (SELECT �C�x���g�ԍ�
							FROM �o���C�x���g
							WHERE �N���A�敪 = '1');

--LEVEL6-61
UPDATE �o���C�x���g
SET �N���A�敪 = '1'
,�N���A���� = 'B'
WHERE �C�x���g�ԍ� = 9;

INSERT �o���C�x���g
VALUES((SELECT �㑱�C�x���g�ԍ�
		FROM �C�x���g
		WHERE �C�x���g�ԍ� = 9)
,NULL,NULL,(SELECT ���[�g�ԍ�
			FROM �o���C�x���g
			WHERE �C�x���g�ԍ� = 9)+1);

