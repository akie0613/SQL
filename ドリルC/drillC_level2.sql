--level2-6
SELECT *
FROM �p�[�e�B�[
WHERE Id ='C02';

--level2-7
UPDATE �p�[�e�B�[
SET HP=120
WHERE Id ='A01';

--level2-8
SELECT ID,����,HP
FROM �p�[�e�B�[
WHERE HP < 100;

--level2-9
SELECT ID,����,MP
FROM �p�[�e�B�[
WHERE MP >= 100;

--level2-10
SELECT �C�x���g�ԍ�,�C�x���g����,�^�C�v
FROM �C�x���g
WHERE �^�C�v <> '3';

--level2-11
SELECT �C�x���g�ԍ�,�C�x���g����
FROM �C�x���g
WHERE �C�x���g�ԍ� <= 5;

--level2-12
SELECT �C�x���g�ԍ�,�C�x���g����
FROM �C�x���g
WHERE �C�x���g�ԍ� > 20;

--level2-13
SELECT �C�x���g�ԍ�,�C�x���g����
FROM �C�x���g
WHERE �O��C�x���g�ԍ� IS NULL;

--level2-14
SELECT �C�x���g�ԍ�,�C�x���g����,�㑱�C�x���g�ԍ�
FROM �C�x���g
WHERE �㑱�C�x���g�ԍ� IS NOT NULL;

--level2-15
UPDATE �p�[�e�B�[
SET ��ԃR�[�h = '01'
WHERE ���� LIKE '%�~%';

--level2-16
SELECT ID,����,HP
FROM �p�[�e�B�[
WHERE HP BETWEEN 120 AND 160;

--level2-17
SELECT ����,�E�ƃR�[�h
FROM �p�[�e�B�[
WHERE �E�ƃR�[�h IN('01','10','11');

--level2-18
SELECT ����,��ԃR�[�h
FROM �p�[�e�B�[
WHERE ��ԃR�[�h NOT IN('01','09');

--level2-19
SELECT *
FROM �p�[�e�B�[
WHERE HP > 100 AND MP > 100;

--level2-20
SELECT *
FROM �p�[�e�B�[
WHERE ID LIKE 'A%'
AND �E�ƃR�[�h LIKE '2%';

--level2-21
SELECT *
FROM �C�x���g
WHERE �^�C�v = '1'
AND �O��C�x���g�ԍ� IS NOT NULL
AND �㑱�C�x���g�ԍ� IS NOT NULL;

--level2-22
--�p�[�e�B�[�e�[�u��:ID
--�C�x���g�e�[�u��:�C�x���g�ԍ�