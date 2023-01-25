DROP SCHEMA shop;
CREATE SCHEMA shop;
USE shop;

CREATE TABLE MEMBER (
    mNo INT  PRIMARY KEY AUTO_INCREMENT,
    ID VARCHAR(30) NOT NULL UNIQUE,
    PASSWORD VARCHAR(100) NOT NULL,
    ROLE VARCHAR(10) DEFAULT 'ROLE_USER',
    NAME VARCHAR(15) NOT NULL,
    PHONE VARCHAR(13),
    EMAIL VARCHAR(100),
    ADDRESS VARCHAR(100),
    HOBBY 	VARCHAR(100),
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    ENROLLDATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    MODIFYDATE DATETIME DEFAULT CURRENT_TIMESTAMP
);

create table Product
(
	  pNo int auto_increment primary key,
	  title varchar(1000), 
	  link varchar(1000),
	  image varchar(1000),
	  lprice int,
	  hprice int,
	  mallName varchar(1000),
	  productId varchar(1000),
	  productType varchar(1000),
	  maker varchar(1000),
	  brand varchar(1000),
	  category1 varchar(1000),
	  category2 varchar(1000),
	  category3 varchar(1000),
	  category4 varchar(1000)  
);

create table News
(
	nNo int auto_increment primary key,
	title varchar(1000),
	originallink varchar(1000),
	link varchar(1000),
	description varchar(1000),
	pubDate datetime
);

create table Cart
(
	mNo int,
    pNo int,
    amount int,
	foreign key (mNo) references Member(mNo),
	foreign key (pNo) references Product(pNo),
    primary key (mNo, pNo)
);


create table Reply
(
	rNo int auto_increment primary key,
	mNo int,
    pNo int,
    content varchar(1000),
    score int, 
    createDate timestamp DEFAULT CURRENT_TIMESTAMP,
    foreign key (mNo) references Member(mNo),
	foreign key (pNo) references Product(pNo)
);


-- DML  시작
insert into Member (mNo, id, password, name, email) values(0, 'admin', '1212', '홍길동', 'admin@email.com');
insert into Member (mNo, id, password, name, email) values(0, 'test1', '1212', '최길동', 'test2@email.com');
insert into Member (mNo, id, password, name, email) values(0, 'test2', '1212', '박길동', 'test2@email.com');
select * from Member;

insert into Product 
	(pNo, title, link, image, lprice, hprice, mallName, 
	productId, productType, maker, brand, category1, category2, category3, category4) 
values(0, '키보드1', null,  null, 50000, 0, '키보드 전문샵', 'test1', '1', '웨이코스', '씽크웨이', 
'디지털/가전','주변기기','키보드','유선키보드');

insert into Product 
	(pNo, title, link, image, lprice, hprice, mallName, 
	productId, productType, maker, brand, category1, category2, category3, category4) 
values(0, '키보드2', null,  null, 50000, 0, '키보드 전문샵', 'test1', '1', '웨이코스', '씽크웨이', 
'디지털/가전','주변기기','키보드','유선키보드');
select * from Product;
select * from Product LIMIT 0, 10; 

insert into News (nNo, title, originallink, link, description, pubDate) values(0, '뉴스1', null, null, '뉴스 내용1', sysdate());
insert into News (nNo, title, originallink, link, description, pubDate) values(0, '뉴스2', null, null, '뉴스 내용2', sysdate());
select * from News;


insert into CART (mNo, pNo, amount) values (1,1,1);
UPDATE CART set amount = 2 where mNo = 1 and pNo = 1;
SELECT * FROM CART;

SELECT * FROM Cart 
INNER JOIN Product ON Cart.pNo = Product.pNo
INNER JOIN Member ON Cart.mNo = Member.mNo;

insert into Reply (rNo, mNo, pNo, content, score, createDate) values (0,1,1, '좋은 제품입니다.', 5, default);
SELECT * FROM Reply;

SELECT * FROM Reply 
INNER JOIN Member ON Reply.mNo = Member.mNo
WHERE pNo = 1;

commit;
