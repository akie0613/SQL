--LEVEL7-62
SELECT K.���[�g�ԍ�, I.�C�x���g�ԍ�, I.�C�x���g����, K.�N���A����
FROM �C�x���g AS I
	JOIN �o���C�x���g AS K
	ON I.�C�x���g�ԍ� = K.�C�x���g�ԍ�
WHERE �N���A�敪 = '1'
ORDER BY K.���[�g�ԍ�;

--LEVEL7-63
SELECT I.�C�x���g�ԍ�, I.�C�x���g����, �N���A�敪
FROM �C�x���g AS I
	JOIN �o���C�x���g AS K
	ON I.�C�x���g�ԍ� = K.�C�x���g�ԍ�
WHERE I.�^�C�v = '1';

--LEVEL7-64
SELECT I.�C�x���g�ԍ�, I.�C�x���g����, COALESCE(�N���A�敪,'���N���A') AS �N���A�敪
FROM �C�x���g AS I
	LEFT JOIN �o���C�x���g AS K
	ON I.�C�x���g�ԍ� = K.�C�x���g�ԍ�
WHERE I.�^�C�v = '1';

--LEVEL7-65
SELECT ID, P.���� AS �Ȃ܂�, KS.�R�[�h���� AS �E��, KJ.�R�[�h���� AS ���
FROM �p�[�e�B�[ AS P
	JOIN �R�[�h AS KS
	ON P.�E�ƃR�[�h = KS.�R�[�h�l
	AND KS.�R�[�h��� = '1'
	JOIN �R�[�h AS KJ
	ON P.��ԃR�[�h = KJ.�R�[�h�l
	AND KJ.�R�[�h��� = '2'
ORDER BY P.ID;

--LEVEL7-66
SELECT ID , COALESCE(����,'���ԂɂȂ��Ă��Ȃ��I') AS �Ȃ܂� ,KS.�R�[�h����
FROM �p�[�e�B�[ AS P
	RIGHT JOIN �R�[�h AS KS
	ON P.�E�ƃR�[�h = KS.�R�[�h�l
WHERE KS.�R�[�h��� = '1';

--LEVEL7-67
SELECT �C�x���g�ԍ�, �N���A�敪, CONCAT(KK.�R�[�h�l,':', KK.�R�[�h����) AS �N���A����
FROM �o���C�x���g AS K
	FULL JOIN �R�[�h AS KK
	ON K.�N���A���� =KK.�R�[�h�l
WHERE KK.�R�[�h��� = '4' OR KK.�R�[�h��� IS NULL;

--LEVEL7-68
SELECT I1.�C�x���g�ԍ�, I1.�C�x���g����, I1.�O��C�x���g�ԍ� , I2.�C�x���g���� AS �O��C�x���g����
FROM �C�x���g AS I1
	JOIN �C�x���g AS I2
	ON I1.�O��C�x���g�ԍ� = I2.�C�x���g�ԍ�;

--LEVEL7-69
SELECT I1.�C�x���g�ԍ�, I1.�C�x���g����, I1.�O��C�x���g�ԍ� , I2.�C�x���g���� AS �O��C�x���g����
,I1.�㑱�C�x���g�ԍ�, I3.�C�x���g����
FROM �C�x���g AS I1
	LEFT JOIN �C�x���g AS I2
	ON I1.�O��C�x���g�ԍ� = I2.�C�x���g�ԍ�
	LEFT JOIN �C�x���g AS I3
	ON I1.�㑱�C�x���g�ԍ� = I3.�㑱�C�x���g�ԍ�
WHERE  I1.�O��C�x���g�ԍ� IS NOT NULL AND I2.�㑱�C�x���g�ԍ� IS NOT NULL;

--LEVEL7-70
SELECT �C�x���g�ԍ�, �C�x���g����, C.�O��C�x���g��
FROM �C�x���g AS I
	JOIN (SELECT �O��C�x���g�ԍ�, COUNT(*) AS �O��C�x���g��
			FROM �C�x���g
			WHERE �O��C�x���g�ԍ� IS NOT NULL
			GROUP BY �O��C�x���g�ԍ�) AS C
	ON I.�O��C�x���g�ԍ� = C.�O��C�x���g�ԍ�
ORDER BY �C�x���g�ԍ�;
