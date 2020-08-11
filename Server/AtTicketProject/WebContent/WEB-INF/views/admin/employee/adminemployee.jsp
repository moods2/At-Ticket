<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
 	<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">

    <style>

       #right {
            border : 1px solid red;
            margin-left: 300px;
            margin-top: 100px;
            width : 700px;
            /* color : white;
            background-color: #C27BA0; */
        }
        #visitTitle {
            margin : 15px auto;
            border : 5px solid #C27BA0;
            color : #C27BA0;
            text-align: center;
            width : 120px;
            font-size: 2em;
        }
        #right2 {
            border : 1px solid black;
            /* text-align: center; */

        }
        
        #title{
            /* text-align: center; */
            margin-left: 280px;
            margin-top: 50px;
            width: 1500px;
            border-bottom: 1px dashed black;
        }

        #content {
            /* border: 1px solid red; */
            width: 80%;
            height: 1880px;
            position: absolute;
            left: 250px;
            top: 120px;
        }

        #tbl {
            /* border: 1px solid gray; */
            border-collapse: collapse;
            width: 880px;
            height: 80px;
            position: relative;
            margin: 0px auto;
        }
        #tbl th {
            text-align: center;            
            background-color: #999;
            height: 30px;
        
        }
        #tbl td {
            height: 30px;
        }
        #tbl th:nth-child(1), #tbl td:nth-child(7) {
            width: 100px;
            text-align: center;
        }
        #tbl th:nth-child(2), #tbl td:nth-child(1) {
            width: 80px;
            text-align: center;
        }
        #tbl th:nth-child(3), #tbl td:nth-child(2) {
            width: 50px;
            text-align: center;
        }
        #tbl th:nth-child(4), #tbl td:nth-child(3) {
            width: 200px;
            padding-left: 10px;
            text-align: center;
        }
        #tbl th:nth-child(5), #tbl td:nth-child(4) {
            width: 200px;
            text-align: center;
        }
        #tbl th:nth-child(6), #tbl td:nth-child(5) {
            width: 100px;
            text-align: center;
        }
        #tbl th:nth-child(7), #tbl td:nth-child(6) {
            width: 150px;
            text-align: center;
        }
        
        #btns {
            width: 800px;
            position: relative;
            /* margin: 10px auto; */
            margin-left: 470px;
            margin-top: -65px;

        }
        #btns > a {
            margin: 3px;
            box-shadow: none;
            border : 0px;
            border-radius: 5px;
            background-color: #999;
            outline: none;
            font-weight: border;
            color : rgb(220,220,220);
            height : 30px;
            font-weight: bold;  
        }
        #btns > a:hover {
            color : white;
        }

             /* 페이징바 색상 */
       .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {
           background-color:#999999;
           border-color: #eeeeee;
       }
        
      .pagination > li > a, .pagination > li > span{
          color: black;
      }

      #slctp1, #slctp2 {
            /* float : left; */
            /* margin-left : 100px; */
            margin-bottom: 0px;
            /* margin: 0 auto; */
            /* border: 1px solid red; */
        }
        #slctp1 {
            width: 250px;
            /* margin-top: px; */
            position: relative;
            left: 325px;
            top: 40px;
        }
        #slctp2 {
            margin-top : 10px;
            margin-bottom: 10px;
            margin-left: 900px;
            /* margin : 10px auto; */
            width : 300px;
        }
        .selectNotice {
                /* border: 1px solid black; */
                text-align: center;
                margin: 10px 0px;
                margin-bottom: -10px;
                background-color: white;
                border : 0px;
                height : 20px;
                border-right: 1px solid #999;
                color : #777;
                padding: 0px;
                padding-right: 5px;
                /* font-size: 1.5em; */
        }
        .selectNotice:last-child {
            border-right: 0px;
        }

        .selectNotice:hover {
            color : #111;
            font-weight: bold;
        }

</style>
        

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminEmployee</title>
</head>

<body>

    <div id = "title">
        <h1 style="color: #555;">인사 관리 <small> > Home  </small></h1>
    </div>
	<%@include file="/WEB-INF/views/inc/menu.jsp" %>


    <div id="content">
        <div id = "slctp1">
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i></span>등록순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>오름차순</button>
            <button class = "selectNotice" style = "outline : none;"><span><i class = "glyphicon glyphicon-sort"></i>내림차순</button>
            <!-- <input type="button" class = "selectNotice" value = "등록순">
            <input type="button" class = "selectNotice" value = "오름차순">
            <input type="button" class = "selectNotice" value = "내림차순"> -->
        </div>

        <div id = "slctp2">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="검색어를 입력하세요.">
				<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
			</div>
        </div>
        <!-- <div class="search" style="margin-left: 980px;">
            <div class="form-group">
                <div class="input-group">
                    <span style="cursor: pointer;" class="input-group-addon" id="btnsearch"><i
                            class="glyphicon glyphicon-search"></i></span>
                    <input style=" width: 200px;" type="text" class="form-control"
                        placeholder="검색어를 입력하세요.">
                </div>
            </div>
        </div> -->
        <table id="tbl" class="table table-striped table-bordered table-condensed">
            <tbody id="tbody">
                <tr>
                    <th>선택</th>
                    <th>번호</th>
                    <th>이름</th>
                    <th>주민번호</th>
                    <th>전화번호</th>
                    <th>직급</th>
                    <th>월급</th>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>1</td>
                    <td>홍길동</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2200000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="is_check" class="cb"></td>
                    <td>2</td>
                    <td>아무개</td>
                    <td>910101-1010101</td>
                    <td>010-9999-9999</td>
                    <td>대리</td>
                    <td>2100000</td>
                </tr>
            </tbody>
        </table>
        <!-- <hr style="width: 940px;"> -->

        <nav class="pagebar" style="width: 500px; position: relative; margin: 10px auto;">
            <ul class="pagination">
              <li>
                <a href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">6</a></li>
              <li><a href="#">7</a></li>
              <li><a href="#">8</a></li>
              <li><a href="#">9</a></li>
              <li><a href="#">10</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
            <div id="btns">
                <a class="btn" id="btnadd"><i class="glyphicon glyphicon-plus"></i> 추가</a>
                <a class="btn" id="btnmodify"><i class="glyphicon glyphicon-pencil"></i> 수정</a>
                <a class="btn" id="btndelete"><i class="glyphicon glyphicon-trash"></i> 삭제</a>
            </div>
        </nav>
        

    </div>



</body>
<script>
<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	

    // 추가
    $("#btnadd").click(function(){
        window.open("adminEmploAdd.html","EmployeeAdd","width=600, height=600");
        // window.location.href="adminEmploAdd.html";
    });
    // 수정
    $("#btnmodify").click(function(){
        // console.log($("input:checkbox[name=is_check]:checked").length);
        if ($("input:checkbox[name=is_check]:checked").length > 1 || $("input:checkbox[name=is_check]:checked").length < 1){
            alert("하나만 선택하세요.");
        }else {
            //선택된 체크박스의 내용 불러오기
            window.open("adminEmploModify.html","EmployeeModify","width=600, height=600");

            // window.location.href="adminEmploModify.html";
        }
    });
    // 삭제
    $("#btndelete").click(function(){
        var result = confirm("정말 삭제하시겠습니까?");
        console.log(result);
        if(result) {
            alert("삭제되었습니다.")
        }else {

        }
    });5

    
    

</script>

</html>