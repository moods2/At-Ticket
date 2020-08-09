<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminMain</title>
<style>
        .basicBox {
            /* border: 1px solid red; */
            margin-left: 330px;
            margin-top: 50px;
            width: 1400px;
            height : 540px;
            /* border: 1px solid black; */
            padding: 20px;
        }

</style>


<link rel="stylesheet" href="/AtTicketProject/css/adminmain.css">
</head>

<body>

	<div class = "basicBox" style = "height : 600px">
        <div id = "selectable">
           <div id = "empNoticeTitle"><span id = "empNoticeTitleImport"><span><i class = "glyphicon glyphicon-pushpin"></i></span></span>&nbsp;사내 공지사항 안내</div>
           <div id = "slctp2">
	    		<div class="input-group">
	    			<input type="text" class="form-control" placeholder = "ex) 코로나 부진에 의한 봉급제한">
	    			<span class="input-group-addon" id = "searchlogo"><i class="glyphicon glyphicon-search"></i></span>
	    		</div>
            </div>
            <table style = "width:1330px;" class = "table table-striped table-bordered table-condensed" id = "nttable">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td><span class = "starpoint">긴급</span>&nbsp;랜섬웨어로 인한 복구작업</td>
                        <td> 이몽룡</td>
                        <td> 2020.02.17(월)</td>
                        <td><span class = "seesee">180</span></td>
                    </tr>

                </tbody>
            </table>

        <!-- 하단 페이지 선택 바 -->
            <nav class = "pagebar">
              <ul class="pagination">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li class = "active"><a href="">1</a></li>
                <li><a href="">2</a></li>
                <li><a href="">3</a></li>
                <li><a href="">4</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>

              </ul>
            </nav>
        </div>       
    
    </div>
	<%@include file="/WEB-INF/views/inc/menu.jsp" %>


<script>
	<%@include file="/WEB-INF/views/inc/adminScript.jsp" %>	

</script>	


</body>
</html>