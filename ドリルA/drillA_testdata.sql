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
(1234567,'サトウ　イチロウ',1,2000300,'2019-03-19'),
(8901234,'スズキ　ジロウ',1,345900,'2018-10-10'),
(5678901,'タカハシ　サブロウ',2,8989898,NULL);
