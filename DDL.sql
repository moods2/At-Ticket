/* 회원 */
CREATE TABLE tblCustomer (
	seq NUMBER NOT NULL, /* 회원 번호 */
	name VARCHAR2(50) NOT NULL, /* 이름 */
	ssn VARCHAR2(50) NOT NULL, /* 주민번호 */
	id VARCHAR2(50) NOT NULL, /* 아이디 */
	pw VARCHAR2(50) NOT NULL, /* 비밀번호 */
	egg NUMBER NOT NULL /* 에그머니 */
);

ALTER TABLE tblCustomer
	ADD
		CONSTRAINT PK_tblCustomer
		PRIMARY KEY (
			seq
		);

/* 관리자 */
CREATE TABLE tblAdmin (
	seq NUMBER NOT NULL, /* 관리자 번호 */
	img VARCHAR2(50) NOT NULL, /* 이미지 */
	id VARCHAR2(50) NOT NULL, /* 아이디 */
	pw VARCHAR2(50) NOT NULL /* 비밀번호 */
);

ALTER TABLE tblAdmin
	ADD
		CONSTRAINT PK_tblAdmin
		PRIMARY KEY (
			seq
		);

/* 직원 */
CREATE TABLE tblEmployee (
	seq NUMBER NOT NULL, /* 직원 번호 */
	name VARCHAR2(50) NOT NULL, /* 이름 */
	jikwi VARCHAR2(50) NOT NULL, /* 직급 */
	salary NUMBER NOT NULL, /* 월급 */
	ssn VARCHAR2(50) NOT NULL, /* 주민번호 */
	tel VARCHAR2(50) NOT NULL, /* 전화번호 */
	buseoSeq NUMBER NOT NULL /* 부서 번호 */
);

ALTER TABLE tblEmployee
	ADD
		CONSTRAINT PK_tblEmployee
		PRIMARY KEY (
			seq
		);

/* 공연 */
CREATE TABLE tblShow (
	seq NUMBER NOT NULL, /* 공연 번호 */
	title VARCHAR2(50) NOT NULL, /* 제목 */
	startDate DATE NOT NULL, /* 시작기간 */
	endDate DATE NOT NULL, /* 종료기간 */
	price NUMBER NOT NULL, /* 가격 */
	poster VARCHAR2(50) NOT NULL, /* 포스터 */
	content VARCHAR2(1000) NOT NULL, /* 공연내용 */
	openDate DATE NOT NULL, /* 오픈일시 */
	age NUMBER NOT NULL, /* 연령 */
	genre VARCHAR2(50) NOT NULL, /* 장르 */
	agencySeq NUMBER NOT NULL /* 기획사 번호 */
);

ALTER TABLE tblShow
	ADD
		CONSTRAINT PK_tblShow
		PRIMARY KEY (
			seq
		);

/* 공연 태그 */
CREATE TABLE tblTag (
	seq NUMBER NOT NULL, /* 태그 번호 */
	name VARCHAR2(50) NOT NULL, /* 태그이름 */
	showSeq NUMBER NOT NULL /* 공연 번호 */
);

ALTER TABLE tblTag
	ADD
		CONSTRAINT PK_tblTag
		PRIMARY KEY (
			seq
		);

/* 방문자 */
CREATE TABLE tblVisitor (
	seq NUMBER NOT NULL, /* 방문자 번호 */
	date DATE NOT NULL, /* 날짜 */
	cnt NUMBER NOT NULL /* 방문자 수 */
);

ALTER TABLE tblVisitor
	ADD
		CONSTRAINT PK_tblVisitor
		PRIMARY KEY (
			seq
		);

/* 이벤트 */
CREATE TABLE tblEvent (
	seq NUMBER NOT NULL, /* 이벤트 번호 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	startDate DATE NOT NULL, /* 시작기간 */
	endDate DATE NOT NULL, /* 종료기간 */
	index VARCHAR2(20) NOT NULL, /* 구분 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	showSeq NUMBER NOT NULL /* 공연 번호 */
);

ALTER TABLE tblEvent
	ADD
		CONSTRAINT PK_tblEvent
		PRIMARY KEY (
			seq
		);

/* 회차정보 */
CREATE TABLE tblRoundInfo (
	seq NUMBER NOT NULL, /* 회차 번호 */
	date DATE NOT NULL, /* 날짜 */
	startDate DATE NOT NULL, /* 공연 시작시간 */
	endDate DATE NOT NULL, /* 공연 종료시간 */
	showSeq NUMBER /* 공연 번호 */
);

ALTER TABLE tblRoundInfo
	ADD
		CONSTRAINT PK_tblRoundInfo
		PRIMARY KEY (
			seq
		);

/* 기획사 */
CREATE TABLE tblAgency (
	seq NUMBER NOT NULL, /* 기획사 번호 */
	host VARCHAR2(50) NOT NULL, /* 주최 */
	management VARCHAR2(50) NOT NULL, /* 주관 */
	tel NUMBER NOT NULL /* 문의번호 */
);

ALTER TABLE tblAgency
	ADD
		CONSTRAINT PK_tblAgency
		PRIMARY KEY (
			seq
		);

/* 직원 부서 */
CREATE TABLE tblBuseo (
	seq NUMBER NOT NULL, /* 부서 번호 */
	name VARCHAR2(50) NOT NULL /* 부서명 */
);

ALTER TABLE tblBuseo
	ADD
		CONSTRAINT PK_tblBuseo
		PRIMARY KEY (
			seq
		);

/* 쿠폰 */
CREATE TABLE tblCoupon (
	seq NUMBER NOT NULL, /* 쿠폰 번호 */
	title VARCHAR2(50) NOT NULL, /* 제목 */
	startDate DATE NOT NULL, /* 시작일시 */
	endDate DATE, /* 종료일시 */
	discount NUMBER NOT NULL, /* 할인율 */
	img VARCHAR2(50) NOT NULL, /* 이미지 */
	showSeq NUMBER NOT NULL /* 공연 번호 */
);

ALTER TABLE tblCoupon
	ADD
		CONSTRAINT PK_tblCoupon
		PRIMARY KEY (
			seq
		);

/* 예매 */
CREATE TABLE tblBooking (
	seq NUMBER NOT NULL, /* 예매번호 */
	bookdate DATE NOT NULL, /* 예매일 */
	date DATE NOT NULL, /* 관람일시 */
	state NUMBER NOT NULL, /* 예매상태 */
	cnt NUMBER NOT NULL, /* 매수 */
	roundSeq NUMBER /* 회차 번호 */
);

ALTER TABLE tblBooking
	ADD
		CONSTRAINT PK_tblBooking
		PRIMARY KEY (
			seq
		);

/* 쿠폰-회원 */
CREATE TABLE tblCusCoupon (
	seq NUMBER NOT NULL, /* 쿠회 번호 */
	regDate DATE NOT NULL, /* 등록일 */
	couponSeq NUMBER NOT NULL, /* 쿠폰 번호 */
	cusSeq NUMBER NOT NULL /* 회원 번호 */
);

ALTER TABLE tblCusCoupon
	ADD
		CONSTRAINT PK_tblCusCoupon
		PRIMARY KEY (
			seq
		);

/* 관심공연 */
CREATE TABLE tblMyShow (
	seq NUMBER NOT NULL, /* 관심공연 번호 */
	regdate DATE NOT NULL, /* 등록일 */
	showSeq NUMBER NOT NULL, /* 공연 번호 */
	cusSeq NUMBER NOT NULL /* 회원 번호 */
);

ALTER TABLE tblMyShow
	ADD
		CONSTRAINT PK_tblMyShow
		PRIMARY KEY (
			seq
		);

/* 공연장 */
CREATE TABLE tblHall (
	seq NUMBER NOT NULL, /* 공연장 번호 */
	name VARCHAR2(50) NOT NULL, /* 이름 */
	addr VARCHAR2(50) NOT NULL, /* 주소 */
	region VARCHAR2(50) NOT NULL /* 지역 */
);

ALTER TABLE tblHall
	ADD
		CONSTRAINT PK_tblHall
		PRIMARY KEY (
			seq
		);

/* 좌석 */
CREATE TABLE tblSeat (
	seq NUMBER NOT NULL, /* 좌석 번호 */
	seat VARCHAR2(50) NOT NULL, /* 좌석 */
	reserv NUMBER NOT NULL, /* 예약여부 */
	thSeq NUMBER NOT NULL /* 상영관 번호 */
);

ALTER TABLE tblSeat
	ADD
		CONSTRAINT PK_tblSeat
		PRIMARY KEY (
			seq
		);

/* 공연 상영관 */
CREATE TABLE tblTheater (
	seq NUMBER NOT NULL, /* 상영관 번호 */
	name VARCHAR2(50) NOT NULL, /* 이름 */
	totalSeat NUMBER NOT NULL, /* 총 좌석 수 */
	hallSeq NUMBER NOT NULL, /* 공연장 번호 */
	showSeq NUMBER /* 공연 번호 */
);

ALTER TABLE tblTheater
	ADD
		CONSTRAINT PK_tblTheater
		PRIMARY KEY (
			seq
		);

/* 결제 */
CREATE TABLE tblPay (
	seq NUMBER NOT NULL, /* 결제 번호 */
	total NUMBER NOT NULL, /* 총 결제 가격 */
	opSeq NUMBER NOT NULL, /* 옵션 번호 */
	bookseq NUMBER NOT NULL, /* 예매번호 */
	cusSeq NUMBER NOT NULL /* 회원 번호 */
);

ALTER TABLE tblPay
	ADD
		CONSTRAINT PK_tblPay
		PRIMARY KEY (
			seq
		);

/* 결제 옵션 */
CREATE TABLE tblOption (
	seq NUMBER NOT NULL, /* 옵션 번호 */
	option VARCHAR2(50) NOT NULL /* 옵션 */
);

ALTER TABLE tblOption
	ADD
		CONSTRAINT PK_tblOption
		PRIMARY KEY (
			seq
		);

/* 공지사항 게시판 */
CREATE TABLE tblNotice (
	seq NUMBER NOT NULL, /* 공지사항번호 */
	index VARCHAR2(50) NOT NULL, /* 구분 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	openDate DATE NOT NULL, /* 티켓오픈날짜 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	regdate DATE NOT NULL, /* 등록일 */
	view NUMBER NOT NULL /* 조회수 */
);

ALTER TABLE tblNotice
	ADD
		CONSTRAINT PK_tblNotice
		PRIMARY KEY (
			seq
		);

/* 자유게시판 */
CREATE TABLE tblCommunity (
	seq NUMBER NOT NULL, /* 자유게시판 번호 */
	tag VARCHAR2(50) NOT NULL, /* 태그 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	regdate DATE NOT NULL, /* 등록일 */
	view NUMBER NOT NULL, /* 조회수 */
	heart NUMBER NOT NULL, /* 좋아요 */
	cusSeq NUMBER NOT NULL /* 회원 번호 */
);

ALTER TABLE tblCommunity
	ADD
		CONSTRAINT PK_tblCommunity
		PRIMARY KEY (
			seq
		);

/* Q&A게시판 */
CREATE TABLE tblQnA (
	seq NUMBER NOT NULL, /* qa번호 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	tag VARCHAR2(50) NOT NULL, /* 태그 */
	regdate DATE NOT NULL, /* 등록일 */
	view NUMBER NOT NULL, /* 조회수 */
	cusSeq NUMBER NOT NULL /* 회원 번호 */
);

ALTER TABLE tblQnA
	ADD
		CONSTRAINT PK_tblQnA
		PRIMARY KEY (
			seq
		);

/* 사내공지게시판 */
CREATE TABLE tblEmploNotice (
	seq NUMBER NOT NULL, /* 사내공지번호 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	regdate DATE NOT NULL, /* 등록일 */
	view NUMBER NOT NULL, /* 조회수 */
	emSeq NUMBER NOT NULL /* 직원 번호 */
);

ALTER TABLE tblEmploNotice
	ADD
		CONSTRAINT PK_tblEmploNotice
		PRIMARY KEY (
			seq
		);

/* 배너 */
CREATE TABLE tblBanner (
	seq NUMBER NOT NULL, /* 배너 번호 */
	name VARCHAR2(50) NOT NULL, /* 배너이름 */
	img VARCHAR2(50) NOT NULL, /* 이미지이름 */
	link VARCHAR2(50) NOT NULL, /* 링크 */
	backColor VARCHAR2(50) NOT NULL /* 배경색 */
);

ALTER TABLE tblBanner
	ADD
		CONSTRAINT PK_tblBanner
		PRIMARY KEY (
			seq
		);