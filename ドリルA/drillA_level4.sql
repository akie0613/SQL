--LEVEL4-34
SELECT �����ԍ�,ROUND(�c��,-3,1) AS ��~�P�ʂ̎c��
FROM ����
WHERE �c��>=1000000;

--LEVEL4-35
INSERT ����
VALUES('0652281','�^�J�M�@�m�u�I','1',100000+3000,'2018-04-01');
INSERT ����
VALUES('1026413','�}�c���g�@�T���R','1',300000+3000,'2018-04-02');
INSERT ����
VALUES('2239710','�T�T�L�@�V�Q�m��','1',1000000+3000,'2018-04-03');

--LEVEL4-36
UPDATE ����
SET �c�� = (�c��-3000)*1.003
WHERE �����ԍ� IN ('0652281','1026413','2239710');

--LEVEL4-37
SELECT �����ԍ�,�X�V��,DATEADD(DAY,180,�X�V��) AS �ʒ�������
FROM ����
WHERE �X�V�� <= '2016-12-31';

--LEVEL4-38
SELECT �����ԍ�,CONCAT('�J�j',���`) AS ���` 
FROM ����
WHERE ��� ='3';

--LEVEL4-39
SELECT ��� AS ��ʃR�[�h, CASE ���
	WHEN '1' THEN '����'
	WHEN '2' THEN '����'
	WHEN '3' THEN '�ʒi'END AS ��ʖ�
FROM ����;

--LEVEL4-40
SELECT �����ԍ�,���`, CASE 
	WHEN �c�� < 100000 THEN 'C'
	WHEN �c�� < 1000000 THEN 'B'
	ELSE 'A' END AS �c�������N
FROM ����;

--LEVEL4-41
SELECT �����ԍ�,REPLACE(���`,'�@',''),LEN(�c��) AS �c���̕�����
FROM ����;

--LEVEL4-42
SELECT *
FROM ����
WHERE SUBSTRING(���`,1,5) LIKE '%�J��%';

--LEVEL4-43
SELECT *
FROM ����
WHERE LEN(�c��) >= 4 AND SUBSTRING(CAST(�c�� AS CHAR),LEN(�c��)-2,3)='000';

--LEVEL4-44
SELECT �����ԍ�,�c��,FLOOR(�c��*0.02) AS ���� 
FROM ����
ORDER BY �c�� DESC;

--LEVEL4-45
SELECT �����ԍ�,�c��,CASE
	WHEN �c�� < 500000 THEN FLOOR(�c��*0.01) 	
	WHEN �c�� < 2000000 THEN FLOOR(�c��*0.02) 
	ELSE FLOOR(�c��*0.03) END AS �c���ʗ��� 
FROM ����
ORDER BY �c���ʗ��� DESC, �����ԍ�;

--LEVEL4-46
INSERT INTO ����
VALUES('0351262','�C�g�J���@�_�C','2',635110,FORMAT(CURRENT_TIMESTAMP,'yyyy-MM-dd'));
INSERT INTO ����
VALUES('1015513','�A�L�c�@�W�����W','1',88463,FORMAT(CURRENT_TIMESTAMP,'yyyy-MM-dd'));
INSERT INTO ����
VALUES('1739298','�z�V�m�@�T�g�~','1',704610,FORMAT(CURRENT_TIMESTAMP,'yyyy-MM-dd'));

--LEVEL4-47
SELECT �����ԍ�,���`,���,�c��,FORMAT(�X�V��,'yyyy�NMM��dd��')AS �X�V��
FROM ����
WHERE �X�V��>='2018-01-01'

--LEVEL4-48
SELECT COALESCE(CONVERT(CHAR,�X�V��),'�ݒ�Ȃ�')AS �X�V��
FROM ����;

