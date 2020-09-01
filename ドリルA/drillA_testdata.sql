CREATE TABLE Account( 
	id char(7) primary key, 
	name VARCHAR(40) not null, 
	kind CHAR(1) NOT NULL , 
	balance INTEGER , 
	date date
);

INSERT INTO Account 
(id,name,kind,balance,date) 
VALUES 
(1234567,'�T�g�E�@�C�`���E',1,2000300,'2019-03-19'),
(8901234,'�X�Y�L�@�W���E',1,345900,'2018-10-10'),
(5678901,'�^�J�n�V�@�T�u���E',2,8989898,NULL);
