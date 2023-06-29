<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>orca</title>
    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  <!-- Font Awesome 아이콘 css CDN-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  <!-- 3. Bootstrap Icon용 CDN / font-awesome Icon용 CDN -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/selectjoin.css'>
  <link rel='icon' href="images/ui.ico">
  <!--font awesome용 스크립트 CDN-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
  
    <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/selectjoin.css'>

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
                    <li class="login"><a href="orcalogin.do">LOGIN</a></li>
                    <li class="join"><a href="orcaselectjoin.do">JOIN</a></li>
                    <li class="menu"><a href="#">Menu</a></li>
                </ul>
            </aside>
    </div>
</header>
<body>
        <div class="sj">
            <div class="btngroup">
            	<form action="orcacompanyjoin.do" method="get" id="form1" >
                <div class="com">
                	<input name="role" type="hidden" value="C" />
                    <button id="companyjoin" onclick="companyjoin()"><p>기업회원</p><i id="shipicon" class="fa-solid fa-ship"></i></button>
                </div>
                </form>
                <form action="orcaindividualjoin.do" method="get" id="form2" >
                <div class="ind">
                	<input name="role" type="hidden" value="I" />
                	<button id="individualjoin" onclick="individualjoin()"><p>개인회원</p><i id="personicon" class="fa-solid fa-person"></i></button>
                </div>
                </form>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
        <script>
        function companyjoin(){
        	document.getElementById("form1").submit();	
        }
        
        function individualjoin(){
        	document.getElementById("form2").submit();	
        }
        
        </script>
</body>
<footer id="footer">
    <div class="text_box">
        <p>
            <span>이메일 : adsfadf@naver.com</span><br>
            <span>Address : 부산 남구 신선로 365 부경대학교 </span><br>
            <span>call : 000-0000-0000</span>
        </p>
    </div>
</footer>
</html>