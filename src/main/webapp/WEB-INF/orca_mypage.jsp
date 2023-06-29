<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>orca</title>
    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

    <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/mypage.css'>

     <!-- jquery cdn -->
     <script src="https://code.jquery.com/jquery-3.6.4.js" ></script>

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
        <div class="my-header">
            <div class="my-tex">
                <span>MyPage</span>
                <hr>
            </div>
        </div>
            <div class="my-body">          
                <div class="my-wrap">
                    <div class="my-box">
                        <img src="${pageContext.request.contextPath}/resources/images/b.jpg">
                        <div class="my-info">
                            <h1>${sessionScope.name} 님</h1>
                            <p>${sessionScope.address}</p>
                            <c:if test="${sessionScope.role eq 'C'}" >
                            <h4>${sessionScope.brn}</h4>
                            </c:if>
                            <h5>${sessionScope.phone}</h5>
                            
                            <div class="my-btn">
                            	<c:if test="${sessionScope.role eq 'C'}" >
                            	<button>
                                <a href="orcamypagecompanychange.do" >정보수정</a>
                                </button>
                                </c:if>
                                
                                <c:if test="${sessionScope.role eq 'I'}" >
                                <button>
                                <a href="orcamypageindividualchange.do" >정보수정</a>
                                </button>
                                </c:if>
                                
                                <button>
                                <a href="orcamypagepwchange.do" >비밀번호변경</a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="or-box">
                <div class="or-bt">
                    <div class="bt1">
                        <div class="btn txt1">
                            <div class="icon1">
                            </div>
                            <p>주문 접수 대기</p><span><a href="orcamypage.do?menu=1">0 건</a></span>
                        </div>
                    </div>

                    <div class="bt1">
                        <div class="btn txt2">
                            <div class="icon2">    
                            </div>
                            <p>주문 심사중</p><span><a href=#>0 건</a></span>
                        </div>
                    </div>

                    <div class="bt1">
                        <div class="btn txt3"> 
                        
                            <div class="icon3">
                            </div>
                            <p>주문 심사 완료</p><span><a href="orcamypage.do?menu=3">0 건</a></span>
                        </div>
                    </div>
                    </div>
                    <c:if test="${param.menu==1}">
		            	<jsp:include page="./orca_ordertable1.jsp"></jsp:include>
		            </c:if>
		            <c:if test="${param.menu==2}">
		            	<jsp:include page="./orca_ordertable2.jsp"></jsp:include>
		            </c:if>
		            <c:if test="${param.menu==3}">
		            	<jsp:include page="./orca_ordertable3.jsp"></jsp:include>
		            </c:if>
                </div>
                  
    </div>
    <script>
  function logoutAction(){
	   // <form action="logout.do" method="post" display="none" ></form>
	   var form = document.createElement("form");
	   form.setAttribute("action", "orcalogout.do");
	   form.setAttribute("method", "post");
	   form.style.display="none";
	   // 위에 생성된 form을 body안에 자식으로 추가시킴
	   document.body.appendChild(form);
	   // form을 실행시킴
	   form.submit();
  	}
  </script>
</body>

</html>

<script>

    // 스크롤시 헤더 색상 변경
    $(window).on('scroll',function(){
                if($(window).scrollTop()){
                    $('header').addClass('active');
                }else{
                    $('header').removeClass('active');
                }
            });
</script>