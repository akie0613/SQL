--level3-23
SELECT DISTINCT ��ԃR�[�h
FROM �p�[�e�B�[;

--level3-24
SELECT ID,����
FROM �p�[�e�B�[
ORDER BY ID;

--level3-25
SELECT ����,�E�ƃR�[�h
FROM �p�[�e�B�[
ORDER BY ���� DESC;

--level3-26
SELECT ����,HP,��ԃR�[�h
FROM �p�[�e�B�[
ORDER BY ��ԃR�[�h,HP DESC;

--level3-27
SELECT �^�C�v,�C�x���g�ԍ�,�C�x���g����,�O��C�x���g�ԍ�,�㑱�C�x���g�ԍ�
FROM �C�x���g
ORDER BY 1,2;

--level3-28
SELECT *
FROM �p�[�e�B�[
ORDER BY HP DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;

--level3-29
SELECT *
FROM �p�[�e�B�[
ORDER BY MP DESC
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY;

--level3-30
SELECT 'S' AS �E�Ƌ敪,�E�ƃR�[�h,ID,����
FROM �p�[�e�B�[
WHERE �E�ƃR�[�h LIKE '1%'
UNION
SELECT 'M' AS �E�Ƌ敪,�E�ƃR�[�h,ID,����
FROM �p�[�e�B�[
WHERE �E�ƃR�[�h LIKE '2%'
UNION
SELECT 'A' AS �E�Ƌ敪,�E�ƃR�[�h,ID,����
FROM �p�[�e�B�[
WHERE �E�ƃR�[�h NOT LIKE '1%' AND �E�ƃR�[�h NOT LIKE '2%'
ORDER BY �E�ƃR�[�h;

--level3-31
SELECT �C�x���g�ԍ�
FROM �C�x���g
WHERE �^�C�v = '2'
INTERSECT
SELECT �C�x���g�ԍ�
FROM �o���C�x���g
WHERE �N���A�敪 = '1';


