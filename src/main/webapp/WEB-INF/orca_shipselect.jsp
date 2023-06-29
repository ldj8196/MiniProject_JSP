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
    <!-- 1. Bootstrap용 css CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <!-- bootstrap용 아이콘-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- 3. Bootstrap Icon용 CDN / font-awesome Icon용 CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/shipselect.css'>

   
    
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
                    <li class="login"><a href="#">LOGIN</a></li>
                    <li class="join"><a href="#">JOIN</a></li>
                    <li class="menu"><a href="#">Menu</a></li>
                </ul>
            </aside>
    </div>
</header>
<body>
    <div class="input-group"> <!-- 서치창과 서치버튼을 붙임-->
        <input id="csearch" class="form-control" type="text" placeholder="검색어 입력..." aria-label="검색어 입력..." aria-describedby="btnSearch">
        <button class="btn btn-primary" id="btnSearch" type="button">
            <i class="bi bi-search"></i>
        </button>
    </div>
    <div class="cnt02">
    <form id="form" action="orcashipupdate.do" method="get">
        <div class="tablediv">
            <table class="table">
                <caption>선박 정보 목록</caption>
                <thead>
                <tr>
                    <th>배등록번호</th>
                    <th>배이름</th>
                    <th>배종류</th>
                    <th>최대적재량</th>
                    <th>지점</th>
                    <th>선박무게</th>
                </tr>
                </thead>
                <c:forEach var="obj" items="${list}">
                <tbody class="ot1">
                  <tr>
	                  <th scope="row"><input type="checkbox" name="chk[]" value="${obj.srn}" />${obj.srn}</th>
	                  <td>${obj.sname}</td>
	                  <td>${obj.type}</td>
	                  <td>${obj.maxCargo}</td>
	                  <td>${obj.point}</td>
	                  <td>${obj.shipWeight}</td>
	              </tr>
                </tbody>
                </c:forEach>
            </table>
            
        </div>
    <a href="orcashipupdate.do?no=${obj.srn}"><input class="btn btn-primary" type="submit" value="수정"/></a>
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
function NoMultiChk(chk){
	  var obj = document.getElementsByName("chk[]");
	   for(var i=0; i<obj.length; i++){
	     if(obj[i] != chk){
	       obj[i].checked = false;
	     }
	   }
	}
</script>
</html>