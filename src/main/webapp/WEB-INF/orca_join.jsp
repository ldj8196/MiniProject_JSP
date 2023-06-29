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

    <link rel='stylesheet' type='text/css' media='screen' href='/orca/css/join.css'>

     <!-- jquery cdn -->
     <script src="https://code.jquery.com/jquery-3.6.4.js" ></script>
    
</head>
<header class="he">
    <div class="cnt">
        <div onclick="location.href='#'">
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
    <div class="my-page">
        <div class="my-header">
            <div class="my-tex">
                <span>Join</span>
                <hr>
            </div>
        </div>
        <div class="jcnt">
            <div class="joincnt">
                <div class="join_row1">
                    <label for="oid">아이디</label>
                    <input type="text" id="oid"> 
                </div>
        
                <div class="join_row1">
                    <label for="bnumber">사업자등록번호</label>
                    <input type="text" id="bnumber"> 
                    <button><a href="">확 인</a></button>
                </div>
        
                <div class="join_row1">
                    <label class="pw">비밀번호</label>
                    <input type="password" id="pw"> 
                </div>
        
                <div class="join_row1">
                    <label for="pw2">비밀번호 확인</label>
                    <input type="password" id="pw2"> 
                </div>
         
                <div class="join_row1">
                    <label for="oname">회사명</label>
                    <input type="text" id="oname"> 
                </div>
        
                <div class="join_row1">
                    <label for="phone">회사연락처</label>
                    <input type="text" id="phone"> 
                </div>
        
                <div class="join_row1">
                    <label for="oaddress">주소</label>
                    <input type="text" id="oaddress"> 
                </div>
        
                <div class="join_row1">
                    <label for="email">이메일</label>
                    <input type="text" id="email"> 
                    <button><a href="">인증번호 발송</a></button>
                </div>

                <div class="join_row1">
                    <label for="ocode">인증코드</label>
                    <input type="text" id="ocode">
                    <button><a href="">인 증</a></button>
                </div>
                
            </div>
        </div>
         
        <div class="ok">
            <div class="btn-ok">
                <button><a href="">가입하기</a></button>
            </div>
        </div>  
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
</footer>
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