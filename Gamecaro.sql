CREATE DATABASE GAME_CARO;
Use GAME_CARO;

CREATE TABLE INFO
(

	TENTK VARCHAR(40) PRIMARY KEY,
	PW CHAR(40),
	NGDK SMALLDATETIME,
	TONG INT,
	WIN INT,
	LOSE INT,
	SCORE INT,
);

CREATE TABLE GAME_HISTORY
(
	MAVG CHAR(4) PRIMARY KEY,
	TENTK VARCHAR(40),
	MAWIN CHAR(4),
	MALOSE CHAR(4),
	CONSTRAINT GH_TENTK_FK FOREIGN KEY (TENTK) REFERENCES INFO(TENTK),
);

CREATE TABLE RANK_BOARD
(
	TENTK VARCHAR(40) PRIMARY KEY,
	SCORE INT,
	CONSTRAINT RB_TENTK_FK FOREIGN KEY (TENTK) REFERENCES INFO(TENTK),
);

select * from (select  TENTK,SCORE,ROW_NUMBER() over(order by SCORE DESC) as RANK_ from INFO)
as foo where TENTK = 'hehe';

alter table INFO 
alter column NGDK DATE;

set dateformat ddmmyyyy;

select TENTK as MA_TAI_KHOAN, TENTK as TEN_DANG_NHAP, PW as MAT_KHAU, NGDK as NGAY_DANG_KY, TONG as SO_VAN_DA_CHOI, WIN as SO_VAN_THANG, LOSE as SO_VAN_THUA, SCORE as TONG_DIEM
from INFO;

select MAVG as MA_VAN_GAME, TENTK as MA_TAI_KHOAN, MAWIN as NGUOI_THANG, MALOSE as NGUOI_THUA
from GAME_HISTORY;

select TENTK as MA_TAI_KHOAN, SCORE as TONG_DIEM 
from RANK_BOARD;

select * from INFO where TENTK = 'nghinguyen'

select * from INFO

select  TENTK,SCORE,ROW_NUMBER() over(order by SCORE DESC) as RANK_ from INFO

select * 
from (select  TENTK,SCORE,ROW_NUMBER() over(order by SCORE DESC) as RANK_ from INFO)


