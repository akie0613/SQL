--LEVEL4-33
SELECT ���� AS �Ȃ܂�, HP AS ���݂�HP, HP+50 AS �������HP
FROM �p�[�e�B�[
WHERE �E�ƃR�[�h IN (11,21);

--LEVEL4-34
UPDATE �p�[�e�B�[
SET MP = MP +20
WHERE ID IN ('A01','A03');

--LEVEL4-35
SELECT ���� AS �Ȃ܂�, HP AS ���݂�HP, HP*2 AS �\�z�����_���[�W
FROM �p�[�e�B�[
WHERE �E�ƃR�[�h = 11;

--LEVEL4-36
SELECT ���� AS �Ȃ܂�, CONCAT(HP,'/',MP) AS HP��MP, 
	CASE ��ԃR�[�h
	  WHEN 00 THEN ''
	  WHEN 01 THEN '����'
	  WHEN 02 THEN '��'
	  WHEN 03 THEN '����'
	  WHEN 04 THEN '����'
	  WHEN 09 THEN '�C��' END AS �X�e�[�^�X
FROM �p�[�e�B�[;

--LEVEL4-37
SELECT �C�x���g�ԍ�,�C�x���g����,
	CASE �^�C�v
	  WHEN '1' THEN '����'
	  WHEN '2' THEN '�t���['
	  WHEN '3' THEN '����' END AS �^�C�v,
	CASE 
	  WHEN �C�x���g�ԍ� BETWEEN 1 AND 10 THEN '����'
	  WHEN �C�x���g�ԍ� BETWEEN 11 AND 17 THEN '����'
	  ELSE '�I��' END AS ��������
FROM �C�x���g

--LEVEL4-38
SELECT ���� AS �Ȃ܂�, HP AS ���݂�HP, LEN(����)*10 AS �\�z�_���[�W
FROM �p�[�e�B�[;

--LEVEL4-39
UPDATE �p�[�e�B�[
SET ��ԃR�[�h = '04'
WHERE MP % 4 = 0;

--LEVEL4-40
SELECT FLOOR(777 *0.7) AS �x���������z;

--LEVEL4-41
UPDATE �p�[�e�B�[
SET HP = FLOOR(ROUND(HP*1.3,1)),
MP = FLOOR(ROUND(MP*1.3,1));

--LEVEL4-42
SELECT ���� AS �Ȃ܂�,HP, 
POWER(HP,0) AS �U��1���,
POWER(HP,1) AS �U��2���,
POWER(HP,2) AS �U��3���
FROM �p�[�e�B�[;

--LEVEL4-43
SELECT ���� AS �Ȃ܂�,HP,��ԃR�[�h,
	(CASE 
	  WHEN HP <= 50 THEN 3 
	  WHEN HP <= 100 THEN 2 
	  WHEN HP <=150 THEN 1 
	  ELSE 0 END)
	  +��ԃR�[�h AS ���X�N�l
FROM �p�[�e�B�[
ORDER BY ���X�N�l DESC ,HP;

--LEVEL4-44
SELECT COALESCE(CAST(�O��C�x���g�ԍ� AS CHAR),'�O��Ȃ�') AS �O��C�x���g�ԍ�, 
�C�x���g�ԍ�, 
COALESCE(CAST(�㑱�C�x���g�ԍ� AS CHAR) ,'�㑱�Ȃ�') AS �㑱�C�x���g�ԍ�
FROM �C�x���g
ORDER BY �C�x���g�ԍ�;
