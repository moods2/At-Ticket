<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <%@include file="/WEB-INF/views/inc/asset.jsp" %>
        
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
            rel="stylesheet"
        />
        <link rel="stylesheet" href="css/slick-theme.css" />
        <link rel="stylesheet" href="css/slick.css" />
        <link rel="shortcut icon" href="./images/favicon.ico" />
        
        <style>
            * {
                outline: none;
            }
            body {
                margin: 0 auto;
            }
            h1 {
                font-family: "Noto Sans KR", sans-serif;
                font-size: 2em;
                margin: 30px 0;
            }
            h1 > i {
                color: #ff7d1e;
                margin-left: 5px;
                font-size: 0.9em;
            }
            #main {
                width: 100%;
            }
            #top {
                /* border: 1px solid black; */
                min-width: 1600px;
                height: 650px;
                margin: 0 auto;
            }
            #middle1,
            #middle2 {
                /* border: 1px solid black; */
                min-width: 1600px;
                margin: 0 auto;
            }
            #bottom {
                /* border: 1px solid black; */
                height: 200px;
                background-color: #eee;
                color: #333333;
            }
            #topmenu {
                border-bottom: 1px solid #ddd;
                background-color: transparent;
                width: 100%;
                min-width: 1600px;
                height: 40px;
                color: black;
                text-align: center;
                font-size: 18px;
                font-weight: bold;
                padding: 40px 0;
                position: absolute;
            }
            .menubar {
                margin: 0 5px;
                cursor: pointer;
            }
            #topleft {
                display: inline-block;
                /* border: 1px solid white; */
                width: 100px;
                height: 65px;
                background-image: url("./images//title.png");
                background-repeat: no-repeat;
                background-position: center center;
                position: absolute;
                left: 10px;
                top: 10px;
                cursor: pointer;
            }
            #topright {
                font-size: 13px;
                position: absolute;
                right: 5px;
                top: 42px;
                cursor: pointer;
            }
            .prev {
                float: left;
                padding-left: 20px;
                cursor: pointer;
            }
            .after {
                float: right;
                padding-right: 20px;
                cursor: pointer;
            }
            #search {
                border: 0;
                border-bottom: 1px solid black;
                background-color: transparent;
                outline: none;
                color: black;
            }
            .img {
                width: 230px;
                height: 325px;
                /* border: 1px solid black; */
                background-color: cornflowerblue;
                display: inline-block;
                margin: 10px 0 0 10px;
                cursor: pointer;
            }
            #banner {
                min-width: 1600px;
                height: 400px;
                margin-top: 20px;
                background-image: linear-gradient(
                    120deg,
                    #e0c3fc 0%,
                    #8ec5fc 100%
                );
                text-align: center;
            }
            #bannerimg {
                width: 286px;
                height: 400px;
                background-image: url("./images/bannerimg.jpg");
                display: inline-block;
                margin-right: 160px;
            }
            #middle1 input,
            #middle2 input {
                outline: none;
            }
            #rankpage {
                background-color: #f6f6f6;
                padding: 50px;
                margin: 0 auto;
                text-align: center;
            }
            #wrap_rankpage {
                width: 1200px;
                height: 490px;
                margin: 0 auto;
            }
            #weekly {
                border: 1px solid #ddd;
                background-color: white;
                width: 490px;
                height: 490px;
                padding: 40px;
                float: left;
            }

            #region {
                border: 1px solid #ddd;
                background-color: white;
                width: 690px;
                height: 490px;
                padding: 40px 0;
                float: right;
                text-align: center;
            }
            #wrap_region {
                padding: 15px 0;
            }
            #wrap_region > div {
                display: inline-block;
                margin-right: 30px;
                height: 300px;
                overflow: hidden;
                cursor: pointer;
            }
            #wrap_region > div p {
                font-size: 13px;
                height: 30px;
            }
            #wrap_region > div span {
                font-size: 12px;
                color: #888;
            }
            #wrap_region > div:last-child {
                margin-right: 0;
            }
            #wrap_region > div > div:first-child {
                overflow: hidden;
                height: 220px;
                margin-bottom: 10px;
                background-color: black;
            }
            .regionimg {
                width: 170px;
                height: 220px;
                margin-bottom: 10px;
                transition: all 0.3s;
            }

            #movetop {
                width: 40px;
                height: 40px;
                background-color: gray;
                position: fixed;
                bottom: 0;
                right: 0;
                text-align: center;
                padding-top: 3px;
                text-decoration: none;
                color: white;
                font-weight: bold;
                font-size: 1.5em;
            }
            #movetop:hover {
                background-color: orange;
                cursor: pointer;
            }
            #frogue-container,
            .frogue-chat {
                position: absolute;
                left: 20px;
                bottom: 0;
            }
            .slider {
                margin: 0px auto;
                position: relative;
                top: 150px;
            }
            .slick-slide img {
                transform: scale(0.9);
                transition: all 0.5s;
            }
            .slick-center img {
                transform: scale(1);
                transition: all 0.5s;
            }

            .img-cover {
                position: absolute;
                width: 420px;
                height: 675px;
                background-color: rgba(0, 0, 0, 0.7);
                z-index: 1;
                opacity: 0;
            }
            .text {
                /* border: 1px solid white; */
                position: absolute;
                text-align: center;
                color: white;
                margin-left: 150px;
                margin-top: 300px;
                z-index: 2;
                opacity: 0;
            }
            .img-cover1 {
                display: inline-block;
                position: relative;
                width: 230px;
                height: 325px;
                background-color: rgba(0, 0, 0, 0.7);
                z-index: 1;
                opacity: 0;
            }
            .text1 {
                display: inline-block;
                /* border: 1px solid white; */
                position: absolute;
                color: white;
                margin-top: 100px;
                margin-left: -70px;
                z-index: 2;
                opacity: 0;
            }

            #bigimg {
                background-image: url("./images/big_consert.jpeg");
            }
            .img1 {
                background-image: url("./images/consert1.jpeg");
                background-size: contain;
            }
            .img2 {
                background-image: url("./images/consert2.jpeg");
                background-size: contain;
            }
            .img3 {
                background-image: url("./images/consert3.jpeg");
                background-size: contain;
            }
            .img4 {
                background-image: url("./images/consert4.jpeg");
                background-size: contain;
            }
            .img5 {
                background-image: url("./images/consert5.jpeg");
                background-size: contain;
            }
            .img6 {
                background-image: url("./images/consert6.jpeg");
                background-size: contain;
            }
            .atimg1 {
                background-image: url("./images/consert2.jpeg");
                background-size: contain;
            }
            .atimg2 {
                background-image: url("./images/consert3.jpeg");
                background-size: contain;
            }
            .atimg3 {
                background-image: url("./images/consert4.jpeg");
                background-size: contain;
            }
            .atimg4 {
                background-image: url("./images/consert10.jpeg");
                background-size: contain;
            }
            .atimg5 {
                background-image: url("./images/consert11.jpeg");
                background-size: contain;
            }
            .atimg6 {
                background-image: url("./images/consert1.jpeg");
                background-size: contain;
            }

            #weekly_list {
                border-top: 2px solid black;
                border-bottom: 1px solid black;
                overflow: hidden;
                width: 410px;
                height: 270px;
            }
            #weekly_list dt,
            #weekly_list dd {
                display: inline-block;
            }
            #weekly_list dt {
                padding-right: 20px;
                font-size: 16px;
                text-decoration: underline;
            }
            #weekly_list dd p {
                font-weight: bold;
                /* border: 1px solid black; */
                width: 230px;
                height: 25px;
                font-size: 16px;
                text-overflow: ellipsis;
            }
            #weekly_list dd span {
                position: relative;
                top: 30px;
                font-size: 12px;
                color: #888;
            }
            #weekly_list img {
                width: 120px;
                height: 160px;
            }
            #weekly_list ul {
                list-style-type: none;
                padding: 0;
            }
            #weekly_list ul li {
                padding: 50px 0;
            }

            #submenu {
                border: 1px solid rgb(202, 202, 202);
                background-color: rgb(82, 82, 82);
                border-radius: 5px;
                color: white;
                position: fixed;
                left: 20px;
                top: 100px;

                width: 120px;
                text-align: center;
                display: none;
                box-shadow: 1px 1px 4px rgb(158, 158, 158);
            }
            #submenu > ul {
                list-style-type: none;
                padding: 10px;
                margin: 0;
            }
            #submenu > ul > li {
                padding: 15px 5px;
                cursor: pointer;
            }
            .subfont {
                color: white;
            }
            #bottom > div {
                float: left;
                position: relative;
                left: 12%;
                top: 22%;
            }
            #bottom .txt {
                margin-left: 30px;
                line-height: 1.1em;
                color: #666;
                top: 28%;
            }
            #bottom .txt .black {
                color: black;
            }
            #bottom #service {
                margin-left: 250px;
                top: 18%;
            }
            #bottom #service p:first-child {
                border-bottom: 1px solid #bbb;
                padding: 0 0 5px 20px;
                font-weight: bold;
                font-size: 1.1em;
            }
            #bottom #service p > span {
                color: #444;
                font-size: 1.3em;
            }
            #bottom #service p:nth-child(2) {
                text-align: center;
                font-size: 3em;
                padding-left: 10px;
            }
            #bottom #service p {
                margin-bottom: -2px;
                padding-left: 20px;
            }
        </style>
    </head>
    <body>
        <div id="main">
            <!-------------------------------- 화면 상단부 -------------------------------->
            <div id="top">
                <div id="topmenu">
                    <!-- 상단메뉴 좌측(메인화면으로 돌아가기) -->
                    <a href="main.html" id="topleft"></a>
                    <!-- 상단메뉴 센터(콘서트, 뮤지컬, 연극, 클래식, 전시) -->
                    <div id="topcenter">
                        <span data-lo="user_concert.html" class="menubar"
                            >콘서트</span
                        >
                        <span data-lo="user_musical.html" class="menubar"
                            >뮤지컬</span
                        >
                        <span data-lo="user_theater.html" class="menubar"
                            >연극</span
                        >
                        <span data-lo="user_classic.html" class="menubar"
                            >클래식</span
                        >
                        <span data-lo="user_Exhibition.html" class="menubar"
                            >전시</span
                        >
                    </div>
                    <!-- 상단메뉴 우측(랭킹, 이벤트, 검색창, 마이페이지) -->
                    <div id="topright">
                        <span data-lo="user_ranking.html" class="menubar"
                            >랭킹</span
                        >
                        <span data-lo="user_event.html" class="menubar"
                            >이벤트</span
                        >
                        <input type="text" value="" id="search" />
                        <label
                            for="search"
                            class="glyphicon glyphicon-search"
                            style="font-size: 14px; cursor: pointer;"
                        ></label>
                        <div
                            class="glyphicon glyphicon-user"
                            id="mypage"
                            style="
                                font-size: 14px;
                                cursor: pointer;
                                margin: 0 10px;
                            "
                        ></div>
                    </div>
                </div>
              
            <!-- 메인화면 슬라이더 -->
            <!-- 이미지 다시 만들어야함 ^^.. -->
                <!-- <div class="slider">
                    <div><img src="./consertSlide1.jpeg" /></div>
                    <div><img src="./consertSlide2.jpeg" /></div>
                    <div><img src="./consertSlide3.jpeg" /></div>
                    <div><img src="./consertSlide4.jpeg" /></div>
                    <div><img src="./consertSlide5.jpeg" /></div>
                </div>
            </div> -->
            <!-- <hr /> -->
              <!-- 메인화면 슬라이더 -->
                <div class="slider">
                    <div><img src="./images/theaterslide1.jpeg" /></div>
                    <div><img src="./images/theaterslide2.jpeg" /></div>
                    <div><img src="./images/theaterslide3.jpeg" /></div>
                    <div><img src="./images/theaterslide4.jpeg" /></div>
                    <div><img src="./images/theaterslide5.jpeg" /></div>
                </div>
            </div>
            <!-- <hr /> -->
            <!-------------------------------- 내용부분 -------------------------------->
            <div id="middle1">
                <div id="submenu">
                    <ul>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-list-alt"
                            ></span>
                            <br />
                            <a class="subfont" href="user_notice.html"
                                >공지사항</a
                            >
                        </li>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-pencil"
                            ></span>
                            <br />
                            <a class="subfont" href="user_localboard.html"
                                >커뮤니티</a
                            >
                        </li>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-search"
                            ></span>
                            <br />
                            <a class="subfont" href="user_concerthall.html"
                                >공연장 검색</a
                            >
                        </li>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-map-marker"
                            ></span>
                            <br />
                            <a class="subfont" href="user_local.html"
                                >지역 검색</a
                            >
                        </li>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-question-sign"
                            ></span>
                            <br />
                            <a class="subfont" href="user_qna.html">Q & A</a>
                        </li>
                        <li>
                            <span
                                style="font-size: 2.4em;"
                                class="glyphicon glyphicon-off"
                            ></span>
                            <br /><a class="subfont" id="login"
                                >로그인</a
                            >
                        </li>
                    </ul>
                </div>
                <!-- 최신, 인기 공연 목록(순위별) -->
                <div style="text-align: center;">
                    <h1>WHAT'S HOT</h1>
                    <div style="padding: 10px 0;">
                        <div
                            class="img img0"
                            id="bigimg"
                            style="
                                width: 420px;
                                height: 675px;
                                display: inline-block;
                            "
                            value="temp0"
                        >
                            <div class="img-cover cover0" value="cover0">
                                <div class="text temp0">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div style="display: inline-block;">
                            <div class="img img1" value="temp1">
                                <div class="img-cover1 cover1" value="cover1">
                                    <div class="text1 temp1">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img2" value="temp2">
                                <div class="img-cover1 cover2" value="cover2">
                                    <div class="text1 temp2">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img3" value="temp3">
                                <div class="img-cover1 cover3" value="cover3">
                                    <div class="text1 temp3">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div style="display: block;"></div>
                            <div class="img img4" value="temp4">
                                <div class="img-cover1 cover4" value="cover4">
                                    <div class="text1 temp4">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img5" value="temp5">
                                <div class="img-cover1 cover5" value="cover5">
                                    <div class="text1 temp5">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                            <div class="img img6" value="temp6">
                                <div class="img-cover1 cover6" value="cover6">
                                    <div class="text1 temp6">
                                        <h4>select shop</h4>
                                        <span>10cm X 데이브레이크</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
            </div>
            <!-- 동영상 들어갈 자리 -->
            <div id="banner">
                <div id="bannerimg"></div>
                <iframe
                    width="711"
                    height="400"
                    src="https://www.youtube.com/embed/o_nxIQTM_B0"
                    frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen
                ></iframe>
            </div>
            <hr />
            <!-- 주간 랭킹, 지역별 추천 -->
            <div id="rankpage">
                <div id="wrap_rankpage">
                    <!-- 주간 랭킹 -->
                    <div id="weekly">
                        <h1>WEEKLY RANKING</h1>
                        <div id="weekly_list">
                            <ul>
                                <li>
                                    <dt>1위</dt>
                                    <dd>
                                        <img
                                            src="./images/weekly_concert1.jpg"
                                        />
                                    </dd>
                                    <dd>
                                        <p>2020 WILD KARD IN SEOUL</p>
                                        <span>
                                            2020.08.22 ~ 2020.08.22<br />
                                            노들섬 라이브하우스
                                        </span>
                                    </dd>
                                </li>
                                <li>
                                    <dt>2위</dt>
                                    <dd>
                                        <img src="./images/rankbest2.jpg" />
                                    </dd>
                                    <dd>
                                        <p>2020 태사자 콘서트 [THE RETURN]</p>
                                        <span>
                                            2020.07.25 ~ 2020.07.26<br />
                                            YES24 LIVE HALL(구, 악스홀)
                                        </span>
                                    </dd>
                                </li>
                                <li>
                                    <dt>3위</dt>
                                    <dd>
                                        <img
                                            src="./images/weekly_concert3.jpg"
                                        />
                                    </dd>
                                    <dd>
                                        <p>
                                            가을방학 정규 4집 발매 기념 공연
                                            [세상은 한 장의 손수건]
                                        </p>
                                        <span>
                                            2020.09.05 ~ 2020.09.06<br />
                                            노들섬 라이브하우스
                                        </span>
                                    </dd>
                                </li>
                                <li>
                                    <dt>4위</dt>
                                    <dd>
                                        <img
                                            src="./images/weekly_concert4.jpg"
                                        />
                                    </dd>
                                    <dd>
                                        <p>
                                            2020 DMZPOP DRIVE IN CONCERT in
                                            CHEOLWON [무료공연]
                                        </p>
                                        <span>
                                            2020.08.15 ~ 2020.08.15<br />
                                            김화생활체육공원 특설무대
                                        </span>
                                    </dd>
                                </li>
                                <li>
                                    <dt>5위</dt>
                                    <dd>
                                        <img
                                            src="./images/weekly_concert5.jpg"
                                        />
                                    </dd>
                                    <dd>
                                        <p>
                                            SURL (설) concert 'Ah, ah, ah, ah
                                            What can I do?'
                                        </p>
                                        <span>
                                            2020.08.15 ~ 2020.08.16<br />
                                            노들섬 라이브하우스
                                        </span>
                                    </dd>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- 지역별 추천 -->
                    <div id="region">
                        <h1>
                            지역별 추천<i
                                class="glyphicon glyphicon-map-marker"
                            ></i>
                        </h1>
                        <div id="wrap_region">
                            <div>
                                <div>
                                    <img
                                        src="./images/consert3.jpeg"
                                        class="regionimg"
                                    />
                                </div>
                                <p>십센치X데이브레이크</p>
                                <span>KBS부산홀</span>
                            </div>
                            <div>
                                <div>
                                    <img
                                        src="./images/consert11.jpeg"
                                        class="regionimg"
                                    />
                                </div>
                                <p>
                                    2020 빅3 "행복한 만남"<br />(진성,김용임,강진)
                                </p>
                                <span>KBS부산홀</span>
                            </div>
                            <div>
                                <div>
                                    <img
                                        src="./images/consert5.jpeg"
                                        class="regionimg"
                                    />
                                </div>
                                <p>서울숲재즈페스티벌 2020</p>
                                <span>서울숲공원</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="middle2">
                <hr />
                <!-- 뮤지컬, 연극 목록 -->
                <div style="text-align: center; margin-bottom: 50px;">
                    <h1>AT'S PICKS</h1>
                    <div>
                        <div class="img atimg1" value="temp7">
                            <div class="img-cover1 cover7" value="cover7">
                                <div class="text1 temp7">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img atimg2" value="temp8">
                            <div class="img-cover1 cover8" value="cover8">
                                <div class="text1 temp8">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img atimg3" value="temp9">
                            <div class="img-cover1 cover9" value="cover9">
                                <div class="text1 temp9">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img atimg4" value="temp10">
                            <div class="img-cover1 cover10" value="cover10">
                                <div class="text1 temp10">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img atimg5" value="temp11">
                            <div class="img-cover1 cover11" value="cover11">
                                <div class="text1 temp11">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                        <div class="img atimg6" value="temp12">
                            <div class="img-cover1 cover12" value="cover12">
                                <div class="text1 temp12">
                                    <h4>select shop</h4>
                                    <span>10cm X 데이브레이크</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <!-- 챗봇 : 단비봇 -->
                <div
                    id="frogue-container"
                    class="position-right-bottom"
                    data-chatbot="e4957de9-dad9-448d-a709-e43eeb644f63"
                    data-user="사용자ID"
                    data-init-key="value"
                ></div>
                <!-- data-init-식별키=값 으로 셋팅하면 챗플로우에 파라미터와 연동가능. 식별키는 소문자만 가능 -->
                <script>
                    (function (d, s, id) {
                        var js,
                            fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) {
                            return;
                        }
                        js = d.createElement(s);
                        js.id = id;
                        js.src =
                            "https:\/\/danbee.ai/js/plugins/frogue-embed/frogue-embed.min.js";
                        fjs.parentNode.insertBefore(js, fjs);
                    })(document, "script", "frogue-embed");
                </script>
                <!-- 제일 위로 돌아가기 버튼 -->
                <div id="movetop">↑</div>
            </div>
            <!-------------------------------- 화면 하단부 -------------------------------->
            <div id="bottom">
                <div>
                    <!-- 회사 마크 -->
                    <img src="./images/title2.png" />
                </div>
                <div class="txt">
                    <p class="black">At-Ticket (주)</p>
                    <p>
                        서울시 강남구 역삼동 한독빌딩 8층 대표: 한시연 |
                        개인정보보호책임자: 한시연
                    </p>
                    <p>it1234@atticket.com 사업자등록번호 229-81-37000</p>
                    <p class="black">
                        Copyright &copy; At-Tickey Corp. All Rights Reserved.
                    </p>
                </div>
                <div id="service">
                    <p><span>☎</span> 고객센터 전화상담</p>
                    <p>1544-6399</p>
                    <p>평일 09:00 ~ 18:00</p>
                    <p>토요일 09:00 ~ 17:00</p>
                    <p>일요일 공휴일 휴무</p>
                </div>
            </div>
        </div>

        <script src="js/slick.min.js"></script>
        <script>
            //상단 메뉴 css
            $(".menubar").mouseover(function () {
                $(this).css("border-bottom", "5px solid orange");
            });
            $(".menubar").mouseout(function () {
                $(this).css("border-bottom", "");
            });
            //상단 메뉴 클릭시
            $(".menubar").click(function () {
                location.href = $(this).data("lo");
            });

            var flag = false;

            $(document).scroll(function () {
                //메뉴가 시야에서 사라지는 순간 -> 메뉴를 붙박이로 만들기
                if ($(document).scrollTop() > $("#middle1").position().top) {
                    $("#topmenu").css({
                        width: "100%",
                        "min-width": "0px",
                        position: "fixed",
                        top: "0px",
                        bottom: "",
                        zIndex: "1",
                        "background-color": "white",
                    });
                    $(window).resize(function () {
                        if ($(window).width() < 970) {
                            // console.log($(window).width());
                            $("#topcenter").css(
                                "transform",
                                "translate(-100px, 0)"
                            );
                        } else {
                            $("#topcenter").css("transform", "translate(0, 0)");
                        }
                    });
                    $("#submenu").css({
                        display: "block",
                        position: "fixed",
                        left: "50px",
                        top: "200px",
                        zIndex: "5",
                    });
                }

                //상단 헤더(top)이 눈에 보일때 쯤
                if ($(document).scrollTop() <= $("#middle1").position().top) {
                    $("#topmenu").css({
                        "min-width": "1600px",
                        position: "absolute",
                        top: "0px",
                        bottom: "",
                        "background-color": "transparent",
                    });
                    $("#submenu").css({
                        display: "none",
                    });
                }
            });

            //이미지에 마우스 올릴때
            $(".img-cover, .img-cover1").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "0.7");
            });
            //이미지에 마우스 뗄때
            $(".img-cover, .img-cover1").mouseout(function () {
                var add = "." + $(this).attr("value");
                $(this).css("transition", "all 0.5s");
                $(add).css("opacity", "0");
            });

            //이미지에 마우스 올릴때
            $(".img").mouseover(function () {
                var add = "." + $(this).attr("value");
                $(add).css("opacity", "1");
                $(this).css("transform", "scale(1)");
            });

            //이미지에 마우스 뗄때
            $(".img").mouseout(function () {
                var add = "." + $(this).attr("value");
                $(add).css("opacity", "0");
                $(this).css("transform", "scale(0.97)");
            });

            //이미지 클릭시 이동
            $(".img").click(function () {
                location.href = "#";
            });

            //상단 이미지 슬라이더
            $(".slider").slick({
                centerMode: true,
                infinite: true,
                autoplay: true,
                autoplaySpeed: 3000,
                dots: true,
                dotsClass: "slick-dots",
                centerPadding: "180px",
                slidesToShow: 3,
                responsive: [
                    {
                        breakpoint: 768,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: "180px",
                            slidesToShow: 3,
                        },
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: "180px",
                            slidesToShow: 1,
                        },
                    },
                ],
            });

            //마이페이지 클릭시 이동
            $("#mypage").click(function () {
                location.href = "mypage.html";
            });

            //movetop
            $("#movetop").click(function () {
                event.preventDefault();
                $("html, body").animate(
                    {
                        scrollTop: 0,
                    },
                    1000
                );
            });

            //지역별 추천 이미지
            $("#wrap_region div").mouseover(function () {
                $(this)
                    .children()
                    .children("img")
                    .css("transform", "scale(1.1, 1.1)")
                    .css("opacity", ".8");
            });
            $("#wrap_region div").mouseout(function () {
                $(this)
                    .children()
                    .children("img")
                    .css("transform", "scale(1, 1)")
                    .css("opacity", "1");
            });

            //주간 랭킹
            $(document).ready(function () {
                var banner = $("#weekly_list").find("ul");
                var bannerHeight = banner.children().outerHeight();
                var bannerLength = banner.children().length;

                var rollingTimer;

                rollingTimer = setInterval(function () {
                    rollingStart();
                }, 3000);

                banner.mouseover(function () {
                    clearInterval(rollingTimer);
                    $(this).css("cursor", "pointer");
                });
                banner.mouseout(function () {
                    rollingTimer = setInterval(function () {
                        rollingStart();
                    }, 3000);
                    $(this).css("cursor", "default");
                });

                function rollingStart() {
                    banner.animate({ top: bannerHeight + "px" }, function () {
                        $(this).append(
                            "<li>" + $(this).find("li:first").html() + "</li>"
                        );

                        $(this).find("li:first").remove();

                        $(this).css("top", 0);
                    });
                }
            });

            //팝업창 가운데 배치
            var popupWidth = 600;
            var popupheight = 630;
            var popupX = (window.screen.width / 2) - (popupWidth / 2);
            var popupY = (window.screen.height / 2) - (popupheight / 2);
            //관심 공연 담기 팝업창
            $("#login").click(function() {
                window.open("login.html","_black",`left=${popupX}, top=${popupY}, width=${popupWidth}, height=${popupheight};`);
            });

        </script>
    </body>
</html>
        