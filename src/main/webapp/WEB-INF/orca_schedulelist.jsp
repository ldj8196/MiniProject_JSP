<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>orca</title>
    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />


    <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/schedule.css'>

     <!-- jquery cdn -->
     <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
</head>
<header class="he">
    <div class="cnt">

       <div onclick="location.href='orcahome.do'">
        	<h3>Orca</h3>
        </div>
            <nav>
               <ul id="topMenu">
                    <li><a href="#">회사소개</a>
                        <ul> <!-- 순서없는 리스트 -->
                            <li><a href="#">연혁</a></li> <!-- li = º 이모양 -->
                            <li><a href="#">조직도</a></li>
                            <li><a href="#">CI</a></li>
                            <li><a href="#">설립</a></li>
                            <li><a href="#">M.V.V</a></li>
                        </ul>
                    </li>
                    <li><a href="#">해운정보</a>
                        <ul>
                            <li><a href="#">배송</a></li>
                            <li><a href="#">주문</a></li>
                            <li><a href="#">조회</a></li>
                        </ul>
                    </li>
                    <li><a href="#">사업분야</a>
                        <ul>
                            <li><a href="#">항만운영</a></li>
                            <li><a href="#">항만하역</a></li>
                            <li><a href="#">해운</a></li>
                            <li><a href="#">항만부대사업</a></li>
                        </ul>
                    </li>
                    <li><a href="#">운행정보</a></li>
                </ul>               
            </nav>

           
            <aside class="top_menu">           
                <ul class="btns">
                   <a href="#" id="search"><i class="fa-solid fa-magnifying-glass fa-lg"></i></a>
                    <li class="mypage"><a href="orcamypage.do">MYPAGE</a></li>
                   	<li class="logout"><a href="#" onclick="logoutAction()">LOGOUT</a></li>
                   	<li class="menu"><a href="#">Menu</a></li>
                </ul>
            </aside>
    </div>
</header>
<body>
    <div class="my-page">
    <form action="orcaestimate.do" method="post" id="form">
        <div class="my-header">
            <div class="my-tex">
                <span>운행정보</span>
                <hr>
            </div>
        </div>
            <div class="or-box">              
                <div class="or-table">        
                    <div class="ot">
                            <table class="table table-hover">
                                <thead class="ot1">
                                    <tr>
                                        <th>순번</th>
                                        <th>항구청코드</th>
                                        <th>출발항</th>
                                        <th>도착항</th>
                                        <th>출발일</th>
                                        <th>도착일</th>
                                        <th>예상시간</th>         
                                    </tr>
                                </thead>
                            <c:forEach var="obj" items="${list}">
                            <tbody class="ot1">
                            	<tr>
	                                <td><input name="box" type="checkbox" name="chk[]" value="${obj.schedule_No}" onclick="NoMultiChk(this)"/>${obj.schedule_No}</td>
	                                <td>${obj.departurePort}</td>
	                                <td>${obj.expectingTime}</td>
	                                <td>${obj.arrivalPort}</td>
	                                <td>${obj.portCode}</td>
	                                <td>${obj.arrivalDate}</td>
	                                <td>${obj.departureDate}</td>
	                            </tr>
                            </tbody>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
                   <div class="ok">
            <div class="btn-ok">
                <input type="submit" value="확 인"> 
            </div>
        </div>  
        </form>
    </div>
</body>
<footer id="footer">
    <div class="text_box">
        <p>
            <span>이메일 : adsfadf@naver.com</span><br>
            <span>Address : 부산 남구 신선로 365 부경대학교 </span><br>
            <span>call : 000-0000-0000</span>
        </p>
    </div>
</div>
</footer>


<script>

    // 스크롤시 헤더 색상 변경
    $(window).on('scroll',function(){
                if($(window).scrollTop()){
                    $('header').addClass('active');
                }else{
                    $('header').removeClass('active');
                }
            });
    
    function NoMultiChk(chk){
    	  var obj = document.getElementsByName("box");
    	   for(var i=0; i<obj.length; i++){
    	     if(obj[i] != chk){
    	       obj[i].checked = false;
    	     }
    	   }
    	}

</script>
</html>