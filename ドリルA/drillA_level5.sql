--LEVEL5-49
SELECT SUM(�c��) AS �c���̍��v,MAX(�c��) AS �ő�,
MIN(�c��) AS �ŏ�,AVG(�c��) AS ����, COUNT(*) AS �f�[�^����
FROM ���� ;

--LEVEL5-50
SELECT COUNT(*) AS �f�[�^����
FROM ���� 
WHERE ��� NOT IN ('1') AND �c�� >=1000000 AND �X�V�� <= '2017-12-31'; 

--LEVEL5-51
SELECT COUNT(*) - COUNT(�X�V��) AS �f�[�^����
FROM ����;

--LEVEL5-52
SELECT MAX(���`) AS �ő�l,MIN(���`) AS �ŏ��l
FROM ���� ;

--LEVEL5-53
SELECT MAX(�X�V��) AS �ő�l,MIN(�X�V��) AS �ŏ��l
FROM ���� ;

--LEVEL5-54
SELECT SUM(�c��) AS �c���̍��v,MAX(�c��) AS �ő�,
MIN(�c��) AS �ŏ�,AVG(�c��) AS ����, COUNT(*) AS �f�[�^����
FROM ���� 
GROUP BY ���;

--LEVEL5-55
SELECT SUBSTRING(�����ԍ�,7,1)AS ���P��, COUNT(*) AS �f�[�^����
FROM ���� 
GROUP BY SUBSTRING(�����ԍ�,7,1)

--LEVEL5-56
SELECT COALESCE(CAST(YEAR(�X�V��) AS CHAR),'XXXX�N') AS �N,
SUM(�c��) AS �c���̍��v,MAX(�c��) AS �ő�,
MIN(�c��) AS �ŏ�,AVG(�c��) AS ����, COUNT(*) AS �f�[�^����
FROM ���� 
GROUP BY YEAR(�X�V��);

--LEVEL5-57
SELECT SUM(�c��) AS �c���̍��v, COUNT(*) AS �f�[�^����
FROM ���� 
GROUP BY ���
HAVING SUM(�c��) > 3000000;

--LEVEL5-58
SELECT SUBSTRING(���`,1,1)AS ���`�P������, COUNT(*) AS �f�[�^����, AVG(LEN(REPLACE(���`,'�@','')))AS ���`�������̕���
FROM ���� 
GROUP BY SUBSTRING(���`,1,1)
HAVING COUNT(*) >= 10 OR AVG(LEN(REPLACE(���`,'�@',''))) >5;

