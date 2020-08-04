/* 회원 */
CREATE TABLE tblCustomer (
	seq NUMBER NOT NULL, /* 회원 번호 */
	name VARCHAR2(50) NOT NULL, /* 이름 */
	ssn VARCHAR2(50) NOT NULL, /* 주민번호 */
	id VARCHAR2(50) NOT NULL, /* 아이디 */
	pw VARCHAR2(50) NOT NULL, /* 비밀번호 */
	egg NUMBER NOT NULL, /* 에그머니 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblCustomer IS '회원';

COMMENT ON COLUMN tblCustomer.seq IS '회원 번호';

COMMENT ON COLUMN tblCustomer.name IS '이름';

COMMENT ON COLUMN tblCustomer.ssn IS '주민번호';

COMMENT ON COLUMN tblCustomer.id IS '아이디';

COMMENT ON COLUMN tblCustomer.pw IS '비밀번호';

COMMENT ON COLUMN tblCustomer.egg IS '에그머니';

COMMENT ON COLUMN tblCustomer.delflag IS 'deflag';

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

COMMENT ON TABLE tblAdmin IS '관리자';

COMMENT ON COLUMN tblAdmin.seq IS '관리자 번호';

COMMENT ON COLUMN tblAdmin.img IS '이미지';

COMMENT ON COLUMN tblAdmin.id IS '아이디';

COMMENT ON COLUMN tblAdmin.pw IS '비밀번호';

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
	buseoSeq NUMBER NOT NULL, /* 부서 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblEmployee IS '직원';

COMMENT ON COLUMN tblEmployee.seq IS '직원 번호';

COMMENT ON COLUMN tblEmployee.name IS '이름';

COMMENT ON COLUMN tblEmployee.jikwi IS '직급';

COMMENT ON COLUMN tblEmployee.salary IS '월급';

COMMENT ON COLUMN tblEmployee.ssn IS '주민번호';

COMMENT ON COLUMN tblEmployee.tel IS '전화번호';

COMMENT ON COLUMN tblEmployee.buseoSeq IS '부서 번호';

COMMENT ON COLUMN tblEmployee.delflag IS 'deflag';

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
	agencySeq NUMBER NOT NULL, /* 기획사 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblShow IS '공연';

COMMENT ON COLUMN tblShow.seq IS '공연 번호';

COMMENT ON COLUMN tblShow.title IS '제목';

COMMENT ON COLUMN tblShow.startDate IS '시작기간';

COMMENT ON COLUMN tblShow.endDate IS '종료기간';

COMMENT ON COLUMN tblShow.price IS '가격';

COMMENT ON COLUMN tblShow.poster IS '포스터';

COMMENT ON COLUMN tblShow.content IS '공연내용';

COMMENT ON COLUMN tblShow.openDate IS '오픈일시';

COMMENT ON COLUMN tblShow.age IS '연령';

COMMENT ON COLUMN tblShow.genre IS '장르';

COMMENT ON COLUMN tblShow.agencySeq IS '기획사 번호';

COMMENT ON COLUMN tblShow.delflag IS 'deflag';

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
	showSeq NUMBER NOT NULL, /* 공연 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblTag IS '공연 태그';

COMMENT ON COLUMN tblTag.seq IS '태그 번호';

COMMENT ON COLUMN tblTag.name IS '태그이름';

COMMENT ON COLUMN tblTag.showSeq IS '공연 번호';

COMMENT ON COLUMN tblTag.delflag IS 'deflag';

ALTER TABLE tblTag
	ADD
		CONSTRAINT PK_tblTag
		PRIMARY KEY (
			seq
		);

/* 방문자 */
CREATE TABLE tblVisitor (
	seq NUMBER NOT NULL, /* 방문자 번호 */
	vdate DATE NOT NULL, /* 날짜 */
	cnt NUMBER NOT NULL /* 방문자 수 */
);

COMMENT ON TABLE tblVisitor IS '방문자';

COMMENT ON COLUMN tblVisitor.seq IS '방문자 번호';

COMMENT ON COLUMN tblVisitor.vdate IS '날짜';

COMMENT ON COLUMN tblVisitor.cnt IS '방문자 수';

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
	eindex VARCHAR2(20) NOT NULL, /* 구분 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	showSeq NUMBER NOT NULL, /* 공연 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblEvent IS '이벤트';

COMMENT ON COLUMN tblEvent.seq IS '이벤트 번호';

COMMENT ON COLUMN tblEvent.title IS '제목';

COMMENT ON COLUMN tblEvent.startDate IS '시작기간';

COMMENT ON COLUMN tblEvent.endDate IS '종료기간';

COMMENT ON COLUMN tblEvent.eindex IS '구분';

COMMENT ON COLUMN tblEvent.content IS '내용';

COMMENT ON COLUMN tblEvent.showSeq IS '공연 번호';

COMMENT ON COLUMN tblEvent.delflag IS 'deflag';

ALTER TABLE tblEvent
	ADD
		CONSTRAINT PK_tblEvent
		PRIMARY KEY (
			seq
		);

/* 회차정보 */
CREATE TABLE tblRoundInfo (
	seq NUMBER NOT NULL, /* 회차 번호 */
	rdate DATE NOT NULL, /* 날짜 */
	startDate DATE NOT NULL, /* 공연 시작시간 */
	endDate DATE NOT NULL, /* 공연 종료시간 */
	showSeq NUMBER, /* 공연 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblRoundInfo IS '회차정보';

COMMENT ON COLUMN tblRoundInfo.seq IS '회차 번호';

COMMENT ON COLUMN tblRoundInfo.rdate IS '날짜';

COMMENT ON COLUMN tblRoundInfo.startDate IS '공연 시작시간';

COMMENT ON COLUMN tblRoundInfo.endDate IS '공연 종료시간';

COMMENT ON COLUMN tblRoundInfo.showSeq IS '공연 번호';

COMMENT ON COLUMN tblRoundInfo.delflag IS 'deflag';

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

COMMENT ON TABLE tblAgency IS '기획사';

COMMENT ON COLUMN tblAgency.seq IS '기획사 번호';

COMMENT ON COLUMN tblAgency.host IS '주최';

COMMENT ON COLUMN tblAgency.management IS '주관';

COMMENT ON COLUMN tblAgency.tel IS '문의번호';

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

COMMENT ON TABLE tblBuseo IS '직원 부서';

COMMENT ON COLUMN tblBuseo.seq IS '부서 번호';

COMMENT ON COLUMN tblBuseo.name IS '부서명';

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
	endDate DATE NOT NULL, /* 종료일시 */
	discount NUMBER NOT NULL, /* 할인율 */
	img VARCHAR2(50) NOT NULL, /* 이미지 */
	showSeq NUMBER NOT NULL, /* 공연 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblCoupon IS '쿠폰';

COMMENT ON COLUMN tblCoupon.seq IS '쿠폰 번호';

COMMENT ON COLUMN tblCoupon.title IS '제목';

COMMENT ON COLUMN tblCoupon.startDate IS '시작일시';

COMMENT ON COLUMN tblCoupon.endDate IS '종료일시';

COMMENT ON COLUMN tblCoupon.discount IS '할인율';

COMMENT ON COLUMN tblCoupon.img IS '이미지';

COMMENT ON COLUMN tblCoupon.showSeq IS '공연 번호';

COMMENT ON COLUMN tblCoupon.delflag IS 'deflag';

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
	bdate DATE NOT NULL, /* 관람일시 */
	state NUMBER NOT NULL, /* 예매상태 */
	cnt NUMBER NOT NULL, /* 매수 */
	roundSeq NUMBER, /* 회차 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblBooking IS '예매';

COMMENT ON COLUMN tblBooking.seq IS '예매번호';

COMMENT ON COLUMN tblBooking.bookdate IS '예매일';

COMMENT ON COLUMN tblBooking.bdate IS '관람일시';

COMMENT ON COLUMN tblBooking.state IS '예매상태';

COMMENT ON COLUMN tblBooking.cnt IS '매수';

COMMENT ON COLUMN tblBooking.roundSeq IS '회차 번호';

COMMENT ON COLUMN tblBooking.delflag IS 'deflag';

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
	cusSeq NUMBER NOT NULL, /* 회원 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblCusCoupon IS '쿠폰-회원';

COMMENT ON COLUMN tblCusCoupon.seq IS '쿠회 번호';

COMMENT ON COLUMN tblCusCoupon.regDate IS '등록일';

COMMENT ON COLUMN tblCusCoupon.couponSeq IS '쿠폰 번호';

COMMENT ON COLUMN tblCusCoupon.cusSeq IS '회원 번호';

COMMENT ON COLUMN tblCusCoupon.delflag IS 'deflag';

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
	cusSeq NUMBER NOT NULL, /* 회원 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblMyShow IS '관심공연';

COMMENT ON COLUMN tblMyShow.seq IS '관심공연 번호';

COMMENT ON COLUMN tblMyShow.regdate IS '등록일';

COMMENT ON COLUMN tblMyShow.showSeq IS '공연 번호';

COMMENT ON COLUMN tblMyShow.cusSeq IS '회원 번호';

COMMENT ON COLUMN tblMyShow.delflag IS 'deflag';

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
	region VARCHAR2(50) NOT NULL, /* 지역 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblHall IS '공연장';

COMMENT ON COLUMN tblHall.seq IS '공연장 번호';

COMMENT ON COLUMN tblHall.name IS '이름';

COMMENT ON COLUMN tblHall.addr IS '주소';

COMMENT ON COLUMN tblHall.region IS '지역';

COMMENT ON COLUMN tblHall.delflag IS 'deflag';

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
	thSeq NUMBER NOT NULL, /* 상영관 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblSeat IS '좌석';

COMMENT ON COLUMN tblSeat.seq IS '좌석 번호';

COMMENT ON COLUMN tblSeat.seat IS '좌석';

COMMENT ON COLUMN tblSeat.reserv IS '예약여부';

COMMENT ON COLUMN tblSeat.thSeq IS '상영관 번호';

COMMENT ON COLUMN tblSeat.delflag IS 'deflag';

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
	showSeq NUMBER, /* 공연 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblTheater IS '공연 상영관';

COMMENT ON COLUMN tblTheater.seq IS '상영관 번호';

COMMENT ON COLUMN tblTheater.name IS '이름';

COMMENT ON COLUMN tblTheater.totalSeat IS '총 좌석 수';

COMMENT ON COLUMN tblTheater.hallSeq IS '공연장 번호';

COMMENT ON COLUMN tblTheater.showSeq IS '공연 번호';

COMMENT ON COLUMN tblTheater.delflag IS 'deflag';

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
	cusSeq NUMBER NOT NULL, /* 회원 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblPay IS '결제';

COMMENT ON COLUMN tblPay.seq IS '결제 번호';

COMMENT ON COLUMN tblPay.total IS '총 결제 가격';

COMMENT ON COLUMN tblPay.opSeq IS '옵션 번호';

COMMENT ON COLUMN tblPay.bookseq IS '예매번호';

COMMENT ON COLUMN tblPay.cusSeq IS '회원 번호';

COMMENT ON COLUMN tblPay.delflag IS 'deflag';

ALTER TABLE tblPay
	ADD
		CONSTRAINT PK_tblPay
		PRIMARY KEY (
			seq
		);

/* 결제 옵션 */
CREATE TABLE tblOption (
	seq NUMBER NOT NULL, /* 옵션 번호 */
	op VARCHAR2(50) NOT NULL /* 옵션 */
);

COMMENT ON TABLE tblOption IS '결제 옵션';

COMMENT ON COLUMN tblOption.seq IS '옵션 번호';

COMMENT ON COLUMN tblOption.op IS '옵션';

ALTER TABLE tblOption
	ADD
		CONSTRAINT PK_tblOption
		PRIMARY KEY (
			seq
		);

/* 공지사항 게시판 */
CREATE TABLE tblNotice (
	seq NUMBER NOT NULL, /* 공지사항번호 */
	nindex VARCHAR2(50) NOT NULL, /* 구분 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	openDate DATE NOT NULL, /* 티켓오픈날짜 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	regdate DATE NOT NULL, /* 등록일 */
	nview NUMBER NOT NULL /* 조회수 */
);

COMMENT ON TABLE tblNotice IS '공지사항 게시판';

COMMENT ON COLUMN tblNotice.seq IS '공지사항번호';

COMMENT ON COLUMN tblNotice.nindex IS '구분';

COMMENT ON COLUMN tblNotice.title IS '제목';

COMMENT ON COLUMN tblNotice.openDate IS '티켓오픈날짜';

COMMENT ON COLUMN tblNotice.content IS '내용';

COMMENT ON COLUMN tblNotice.regdate IS '등록일';

COMMENT ON COLUMN tblNotice.nview IS '조회수';

ALTER TABLE tblNotice
	ADD
		CONSTRAINT PK_tblNotice
		PRIMARY KEY (
			seq
		);

/* 리뷰 */
CREATE TABLE tblReview (
	seq NUMBER NOT NULL, /* 리뷰 번호 */
	title VARCHAR2(100) NOT NULL, /* 제목 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	regdate DATE NOT NULL, /* 등록일 */
	rview NUMBER NOT NULL, /* 조회수 */
	heart NUMBER NOT NULL, /* 좋아요 */
	hate NUMBER NOT NULL, /* 비추 */
	cusSeq NUMBER NOT NULL, /* 회원 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblReview IS '리뷰';

COMMENT ON COLUMN tblReview.seq IS '리뷰 번호';

COMMENT ON COLUMN tblReview.title IS '제목';

COMMENT ON COLUMN tblReview.content IS '내용';

COMMENT ON COLUMN tblReview.regdate IS '등록일';

COMMENT ON COLUMN tblReview.rview IS '조회수';

COMMENT ON COLUMN tblReview.heart IS '좋아요';

COMMENT ON COLUMN tblReview.hate IS '비추';

COMMENT ON COLUMN tblReview.cusSeq IS '회원 번호';

COMMENT ON COLUMN tblReview.delflag IS 'deflag';

ALTER TABLE tblReview
	ADD
		CONSTRAINT PK_tblReview
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
	qview NUMBER NOT NULL, /* 조회수 */
	cusSeq NUMBER NOT NULL, /* 회원 번호 */
	delflag NUMBER NOT NULL, /* deflag */
	ansSeq NUMBER /* 답변번호 */
);

COMMENT ON TABLE tblQnA IS 'QnA게시판';

COMMENT ON COLUMN tblQnA.seq IS 'qa번호';

COMMENT ON COLUMN tblQnA.title IS '제목';

COMMENT ON COLUMN tblQnA.content IS '내용';

COMMENT ON COLUMN tblQnA.tag IS '태그';

COMMENT ON COLUMN tblQnA.regdate IS '등록일';

COMMENT ON COLUMN tblQnA.qview IS '조회수';

COMMENT ON COLUMN tblQnA.cusSeq IS '회원 번호';

COMMENT ON COLUMN tblQnA.delflag IS 'deflag';

COMMENT ON COLUMN tblQnA.ansSeq IS '답변번호';

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
	nview NUMBER NOT NULL, /* 조회수 */
	emSeq NUMBER NOT NULL, /* 직원 번호 */
	delflag NUMBER NOT NULL /* deflag */
);

COMMENT ON TABLE tblEmploNotice IS '사내공지게시판';

COMMENT ON COLUMN tblEmploNotice.seq IS '사내공지번호';

COMMENT ON COLUMN tblEmploNotice.title IS '제목';

COMMENT ON COLUMN tblEmploNotice.content IS '내용';

COMMENT ON COLUMN tblEmploNotice.regdate IS '등록일';

COMMENT ON COLUMN tblEmploNotice.nview IS '조회수';

COMMENT ON COLUMN tblEmploNotice.emSeq IS '직원 번호';

COMMENT ON COLUMN tblEmploNotice.delflag IS 'deflag';

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

COMMENT ON TABLE tblBanner IS '배너';

COMMENT ON COLUMN tblBanner.seq IS '배너 번호';

COMMENT ON COLUMN tblBanner.name IS '배너이름';

COMMENT ON COLUMN tblBanner.img IS '이미지이름';

COMMENT ON COLUMN tblBanner.link IS '링크';

COMMENT ON COLUMN tblBanner.backColor IS '배경색';

ALTER TABLE tblBanner
	ADD
		CONSTRAINT PK_tblBanner
		PRIMARY KEY (
			seq
		);

/* Q&A답변 */
CREATE TABLE tblAnswer (
	seq NUMBER NOT NULL, /* 답변번호 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	regdate DATE NOT NULL, /* 등록일 */
	adSeq NUMBER NOT NULL, /* 관리자 번호 */
	deflag NUMBER NOT NULL /* delflag */
);

COMMENT ON TABLE tblAnswer IS 'Q&A답변';

COMMENT ON COLUMN tblAnswer.seq IS '답변번호';

COMMENT ON COLUMN tblAnswer.content IS '내용';

COMMENT ON COLUMN tblAnswer.regdate IS '등록일';

COMMENT ON COLUMN tblAnswer.adSeq IS '관리자 번호';

COMMENT ON COLUMN tblAnswer.deflag IS 'delflag';

ALTER TABLE tblAnswer
	ADD
		CONSTRAINT PK_tblAnswer
		PRIMARY KEY (
			seq
		);
