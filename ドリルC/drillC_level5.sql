--LEVEL5-45
SELECT MAX(HP) AS HP�ő�l,MIN(HP) AS HP�ŏ��l, AVG(HP) AS HP���ϒl
	,MAX(MP) AS MP�ő�l,MIN(MP) AS MP�ŏ��l, AVG(MP) AS MP���ϒl
FROM �p�[�e�B�[;

--LEVEL5-46
SELECT 
	CASE �^�C�v
	  WHEN '1' THEN '����'
	  WHEN '2' THEN '�t���['
	  WHEN '3' THEN '����' END AS �^�C�v,
	COUNT(*) AS �C�x���g�̐�
FROM �C�x���g
GROUP BY �^�C�v;

--LEVEL5-47
SELECT �N���A���� ,COUNT(*) AS �C�x���g�̐�
FROM �o���C�x���g
WHERE �N���A���� IS NOT NULL
GROUP BY �N���A����
ORDER BY �N���A����;

--LEVEL5-48
SELECT 
	CASE
	  WHEN SUM(MP) < 500 THEN '�G�͌��Ƃ�Ă���I'
	  WHEN SUM(MP) <1000 THEN '�G�͕�R�Ƃ��Ă���'
	  WHEN SUM(MP) >=1000 THEN '�G�͂Ђꕚ���Ă���' END AS �G�̍s��
FROM �p�[�e�B�[

--LEVEL5-49
SELECT 
	CASE �N���A�敪
	  WHEN '1' THEN '�N���A����'
	  WHEN '0' THEN '�Q���������N���A���Ă��Ȃ�' END AS �敪
	,COUNT(*) AS �C�x���g��
FROM �o���C�x���g
GROUP BY �N���A�敪;

--LEVEL5-50
SELECT SUBSTRING(�E�ƃR�[�h,1,1) AS �E�ƃ^�C�v
	,MAX(HP) AS HP�ő�l,MIN(HP) AS HP�ŏ��l, AVG(HP) AS HP���ϒl
	,MAX(MP) AS MP�ő�l,MIN(MP) AS MP�ŏ��l, AVG(MP) AS MP���ϒl
FROM �p�[�e�B�[
GROUP BY SUBSTRING(�E�ƃR�[�h,1,1);

--LEVEL5-51
SELECT SUBSTRING(ID,1,1) AS ID�ɂ�镪��
	,AVG(HP) AS HP�̕���
	,AVG(MP) AS MP�̕���
FROM �p�[�e�B�[
GROUP BY SUBSTRING(ID,1,1)
HAVING AVG(HP)>100;

--LEVEL5-52
SELECT SUM(
	CASE 
	  WHEN HP < 100 THEN 1 
	  WHEN HP < 150 THEN 2
	  WHEN HP < 200 THEN 3
	  WHEN HP >= 200 THEN 5 END) AS ���̐�
FROM �p�[�e�B�[;