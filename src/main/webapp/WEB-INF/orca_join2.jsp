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

    <link rel='stylesheet' type='text/css' media='screen' href='../orca/css/join2.css'>
    

       <!-- jquery cdn -->
       <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>

    
</head>
<header class="he">
    <div class="cnt">
        <h3>Orca</h3>
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
                    <label for="oname">이름</label>
                    <input type="text" id="oname"> 
                </div>
    
                <div class="join_row1">
                    <label for="id">아이디</label>
                    <input type="text" id="id">
                    <button><a href="">확 인</a></button> 
                </div>
    
                <div class="join_row1">
                    <label>아이디 확인 질문</label>
                    <select name="
                    question" id="">
                        <option value="none">===선택===</option>
                        <option value="none" >기억에 남는 추어긔 장소는?></option>
                        <option value="none">자신의 보물 제1호는?</option>
                        <option value="none">추억하고 싶은 날짜가 있다면?</option>
                        <option value="none">받았던 선물 중 기억에 남는 독특했던 선물은?</option>
                        <option value="none">유년시절 가장 기억나는 친구 이름은?
                        <option value="none">유년시절 가장 기억나는 친구 이름은?
                        <option value="none">인상 깊게 읽은 책 이름은?</option>
                        <option value="none">자신이 두번째로 존경하는 인물은?</option>
                        <option value="none">친구들에게 공개하지 않은 어릴적 별명은?</option>
                        <option value="none">초등학교 대 기억에 남는 짝꿍 이름은?</option>
                        <option value="none">다시 태어나면 되고 싶은 것은?</option>
                        <option value="none">내가 좋아하는 캐릭터는?</option>
                    </select>
                </div>
    
                <div class="join_row1">
                    <label for="
                    answer">질문 답변</label>
                    <input type="text" id="
                    answer">
    
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
                    <label for="ophone">연락처</label>
                    <input type="text" id="ophone"> 
                </div>
    
                <div class="join_row1">
                    <label for="oemail">이메일</label>
                    <input type="text" id="oemail">
                    <button><a href="">인증번호 발송</a></button>
                </div>

                <div class="join_row1">
                    <label for="oaddresscode">인증코드</label>
                    <input type="text" id="oaddresscode">
                    <button><a href="">인 증</a></button>
                </div>
    
                <div class="join_row1">
                    <label for="oaddress">주소</label>
                    <input type="text" id="oaddress">
                </div>
            </div>
        </div>
        <div class="ok">
            <div class="btn-ok">
                <button><a href="">확 인</a></button>
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