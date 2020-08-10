<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        
        <%@include file="/WEB-INF/views/inc/asset.jsp" %>
        
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet"/>
        <link rel="shortcut icon" href="./images/favicon.ico" />
		<link rel="stylesheet" href="css/usermain.css" />
		
    <style>

        body { margin: 0 auto; }
        h1 { font-family: "Arial Black"; }
        #main { width: 100%; }
        #top {
            /* border: 1px solid black; */
            min-width: 1600px;
            height: 50px;
            margin: 0 auto;
        }
        /*-------------------------------- 화면 하단부 -------------------------------*/
        #bottom {
            /* border: 1px solid black; */
            min-width: 1300px;
            height: 250px;
            background-color: #eee;
        }
        #bottom > div {
            float: left;
            position: relative;
            left: 21%;
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
            margin-left: 200px;
            top: 18%;
        }
        #bottom #service p:first-child {
            border-bottom: 1px solid #BBB;
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
        #topmenu {
            border-bottom: 1px solid #eee;
            background-color: white;
            width: 100%;
            height: 40px;
            color: black;
            text-align: center;
            font-size: 15px;
            padding: 40px 0;
            position: absolute;
            /* margin-top: -120px; */
        }
        .menubar {
            margin: 0 5px;
            cursor: pointer;
        }
        #topmenu > span {
            cursor: pointer;
        }
        .switch {
            /* border: 1px solid white; */
            position: relative;
            top: 50%;
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
            left : 10px;
            top: 10px;
            cursor: pointer;
        }
        #topright {
            font-size: 13px;
            position: absolute;
            right : 5px;
            top: 42px;
            cursor: pointer;
        }

        #search {
            border: 0;
            border-bottom: 1px solid black;
            background-color: transparent;
            outline: none;
            color: black;

        }
        /*-------------------------------- 태그 --------------------------------*/
        #tagsearch {
            border: 1px solid #111;
            width: 170px;
            height: 205px;
            position: relative;
            float: right;
            background-color: white;
            margin-right: 60px;
	        margin-top: 2px;
            /* text-align: center; */
            display: none;
	        top: 24px;
        }
        #tagsearch::after {
            content: "";
            display: none;
            clear: both;
        }
        #tag {
            width: 168px;
            /* background-color: rgb(253, 236, 236); */
            background-color: #f6f6f6;
            height: 25px;
            }
        #tag > span {
            color: #222;
            font-size: 14px;
            width: 50px;
            height: 30px;
            font-weight: normal;
            font-family: "IBMPlexSansKR-Regular";
            position: relative;
            left: -20px;
        }

        #tag > label {
            color: #111;
            float: right;
            cursor: pointer;
            font-size: 20px;
            font-weight: 100;
        }
        #tagsearch > a {
            display: block;
            color: #555;
            font-size: 14px;
            font-family: "IBMPlexSansKR-Regular";
            font-weight: normal;
            text-align: left;
            margin-left: 20px;
            margin-top: 2px;
        }
        #tagsearch > span {
            font-size: 12px;
            color: #999;
            font-weight: normal;
            font-family: "IBMPlexSansKR-Regular";

            float: right;
            margin-top: 5px;
            margin-right: 5px;
        }


        #chatbot {
            width: 88px;
            height: 88px;
            position: fixed;
            bottom: 10px;
            left: 10px;
            cursor: pointer;
            z-index: 1;
        }

        #frogue-container, .frogue-chat {
            position: absolute;
            left:20px;
            bottom: 0;
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
        }
        #movetop:hover {
            background-color: orange;
        }
        #movetop a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 1.5em;
        }
        /* 내용======================================================================================================== */

        #mainBox {
            width: 1200px;
            /* text-align: center; */
            margin: 120px auto;
            min-height: 890px;
        }

        #mainBox h1 {
            text-align: center;
            font-weight: bold;
        }

        /* 글 */
        #tbl {
            width: 1200px;
            margin-top: 100px;
            border-bottom: 2px solid gray;
            border-collapse: collapse;
        }

        #tbl th {
            height: 40px;
            /* background-color: #7E9CB6; */
            background-color: gray;
        }

        #tbl th:nth-child(1) {width: 110px; text-align: center; color: #d2e1ee;}
        #tbl th:nth-child(2) {width: 700px; text-align: left; color: white;}
        #tbl th:nth-child(3) {text-align: right; color: white; padding-right: 20px;}

        #tbl tr:nth-child(1) td{
            border-bottom: 1px solid #ddd;
        }

        #tbl tr:first-child td:nth-child(1) a{
            padding-left: 25px;
            color: #ccc;
            text-decoration: none;
        }

        #tbl tr:first-child td:nth-child(2),#tbl tr:first-child td:nth-child(3) {text-align: right; width: 100px; height: 40px;}

        #tbl tr:first-child td:nth-child(2) span {
            color: #7E9CB6;
        }
        #tbl tr:first-child td:nth-child(3) span {
            color: #d18b78;
            padding-right: 20px;
        }

        #tbl tr:nth-child(2) p{
            min-height: 500px;
            padding: 25px; 
        }

        /* 버튼 */
        .btn-primary {
            outline: none;
            width: 120px;
            height: 40px;
            background-color: #7E9CB6;
            border-color: #7E9CB6;
            float: right;
            outline: none;
            margin-top: 60px;
            margin-left: 10px;
            margin-bottom: 100px;

        }

        .btn-primary::after {
            content: ' ';
            display: block;
            clear: both;
        }

        #delete {
            background-color: #d18b78;
            border-color: #d18b78;
            outline: none;
        }

        #list {
            background-color: #bbb;
            border-color: #bbb;
            position: relative;
            right: 250px;
            outline: none;
        }


        /* 답변 */
        #tbl2 {
            width: 1200px;
            margin-top: 100px;
            border-bottom: 2px solid gray;
            border-collapse: collapse;
        }

        #tbl2 th {
            height: 40px;
            /* background-color: #d18b78; */
            background-color: gray;
        }
 
        #tbl2 th:nth-child(1) {width: 110px; text-align: center; color: #d2e1ee;}
        #tbl2 th:nth-child(2) {width: 700px; text-align: left; color: white;}
        #tbl2 th:nth-child(3) {text-align: right; color: white; padding-right: 20px;}

        #tbl2 tr:nth-child(1) p{
            min-height: 500px;
            padding: 25px; 
        }

    </style>

</head>
<body>

    <div id="main">

        <!-------------------------------- 화면 상단부 -------------------------------->
        <%@include file="/WEB-INF/views/inc/usertopbar.jsp" %>
            
            <!-- 챗봇 : 단비봇 --------------------------------------------------------------------------------------------------------------------------------->
            <!-- <img src="./images/face35.png" id="chatbot"> -->

            <%@include file="/WEB-INF/views/inc/userchat.jsp" %>

        <!-- 내용============================================================================================================================================= -->
        <div id="mainBox">
            <h1>Q&A</h1>

            <!-- <div id = "right"> -->

                <table id="tbl">

                    <thead>
                        <th>예매방법</th>
                        <th colspan="2">제목입니다.</th>
                        <th colspan="2">2020-07-21 19:30</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="3"><a href="user_qna_content.html">페이지 새로고침</a></td>
                            <td>조회수 <span>10</span></td>
                            <td>답변 <span>완료</span></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="min-height: 600px;">
                                <p>
                                내용입니다.
                                </p>
                            </td>
                        </tr>
                    </tbody>

                </table>

                <table id="tbl2">

                    <thead>
                        <th>답변</th>
                        <th colspan="2">[ <span>제목입니다.</span> ] 에 대한 답변입니다.</th>
                        <th colspan="2">2020-07-21 19:30</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="5" style="min-height: 600px;">
                                <p>
                                답변입니다.
                                </p>
                            </td>
                        </tr>
                    </tbody>

                </table>

                        
                <button class="btn btn-primary" id="update">
                    <span class="glyphicon glyphicon-pencil"></span>
                    수정하기
                </button>
                <button class="btn btn-primary" id="delete">
                <span class="
                glyphicon glyphicon-trash"></span>
                삭제하기
                </button>
                <button class="btn btn-primary" id="list">
                <span class="glyphicon glyphicon-list"></span>
                목록
                </button>
        
        
                
            <!-- </div> -->


        </div>


<!-------------------------------- 화면 하단부 -------------------------------->
	<%@include file="/WEB-INF/views/inc/userbottombar.jsp" %>	

    <script>

      //상단 메뉴 css
      $(".menubar").mouseover(function() {
        $(this).css("border-bottom", "5px solid orange");
        });
        $(".menubar").mouseout(function() {
            $(this).css("border-bottom", "");
        });

        //상단 메뉴 클릭시
        $(".menubar").click(function () {
            location.href = $(this).data("lo");
        });

        var flag = false;

        $(document).scroll(function() {
            //메뉴가 시야에서 사라지는 순간 -> 메뉴를 붙박이로 만들기
            // if (!flag) {
                if ($(document).scrollTop() > $("#tabs").position().top) {
                    $("#topmenu").css({
                        width: "100%",
                        position: "fixed",
                        top: "0px",
                        bottom: "",
                        zIndex: "1"
                    });
                };

            //상단 헤더(top)이 눈에 보일때 쯤
            if ($(document).scrollTop() <= $("#tabs").position().top) {
                $("#topmenu").css({
                    position: "absolute",
                    top: "0px",
                    bottom: ""
                });
                // flag = false;                
            }
        });

        //검색창 커서 있을때 팝업 띄우기
        $("#search").focusin(function () {
            $("#tagsearch").css("display", "block");
            $("#search").css("border-bottom", "2px solid black");
        });
        //검색창 팝업 닫기
        $("#search").focusout(function () {
            $("#tagsearch").css("display", "none");
        });
        $("#tagremove").click(function () {
            $("#tagsearch").css("display", "none");
        });

        //챗봇 클릭시 행동
        $("#chatbot").dblclick(function() {
            alert("챗봇입니다!");
        });
        //챗봇 이동 가능
        $("#chatbot").draggable();

        $("#movetop").click(function() {
            //<a> 본연의 기능을 제거
			event.preventDefault();

            $("html,body").animate({
                scrollTop: 0
            }, 1000);
        });

        // 내용==================================================================================================================================================================


        // 수정하기 링크
        $("#update").click(function() {
            $(location).attr('href','user_qna_update.html');
        });
        // 목록 링크
        $("#list").click(function() {
            $(location).attr('href','user_qna.html');
        });
        // 삭제
        $("#delete").click(function() {
            // alert("삭제하시겠습니까?");

            if (confirm("삭제하시겠습니까?")) {
                $(location).attr('href','user_qna.html');
            } else {
            }

        });


    </script>



        </div>
    </div>



</body>
</html>