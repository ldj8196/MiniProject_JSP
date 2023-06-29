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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

    <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/findid.css'>

    
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
                    <li class="login"><a href="orcalogin.do">LOGIN</a></li>
                    <li class="join"><a href="orcaselectjoin.do">JOIN</a></li>
                    <li class="menu"><a href="#">Menu</a></li>
                </ul>
            </aside>
    </div>
</header>
<body>
    <div class="my-page">
        <div class="my-header">
            <div class="my-tex">
                <span>아이디 찾기</span>
                <hr>
            </div>
        </div>
        <div class="jcnt">
            <div class="joincnt">
                
                <div class="join_row1">
                    <label>Q. 가입시 등록한 질문</label>
                    <select name="idChkQ" id="idChkQ">
                          <option value="1">===선택===</option>
                          <option value="기억에 남는 추억의 장소는?" >기억에 남는 추억의 장소는?</option>
                          <option value="자신의 보물 제1호는?">자신의 보물 제1호는?</option>
                          <option value="추억하고 싶은 날짜가 있다면?">추억하고 싶은 날짜가 있다면?</option>
                          <option value="받았던 선물 중 기억에 남는 독특했던 선물은?">받았던 선물 중 기억에 남는 독특했던 선물은?</option>
                          <option value="유년시절 가장 기억나는 친구 이름은?">유년시절 가장 기억나는 친구 이름은?</option>
                          <option value="유년시절 가장 기억나는 친구 이름은?">유년시절 가장 기억나는 친구 이름은?</option>
                          <option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
                          <option value="자신이 두번째로 존경하는 인물은?">자신이 두번째로 존경하는 인물은?</option>
                          <option value="친구들에게 공개하지 않은 어릴적 별명은?">친구들에게 공개하지 않은 어릴적 별명은?</option>
                          <option value="초등학교 때 기억에 남는 짝꿍 이름은?">초등학교 때 기억에 남는 짝꿍 이름은?</option>
                          <option value="다시 태어나면 되고 싶은 것은?">다시 태어나면 되고 싶은 것은?</option>
                          <option value="내가 좋아하는 캐릭터는?">내가 좋아하는 캐릭터는?</option>
                    </select>
                </div>
    
                <div class="join_row1">
                    <label for="idChkA">A. 질문 답변</label>
                    <input type="text" id="idChkA" name="idChkA">
                </div>

                <div class="join_row1">
                    <label for="name">이름 또는 회사명</label>
                    <input type="text" id="name" name="name"> 
                </div>
            
                <div class="join_row1">
                    <label for="phone">연락처</label>
                    <input type="text" id="phone" name="phone"> 
                </div>

            </div>
        </div>
        <div class="ok">
            <div class="btn-ok">
                <button onclick="findIdAction()" >확인</button>
            </div>
        </div>  
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>
	<!-- jquery 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js" ></script>
   <!-- 2. Bootstrap용 js는 body에 위치해야 함! -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
    async function findIdAction(){
    	var idChkQ = document.getElementById("idChkQ");
    	const idChkA = document.getElementById("idChkA");
    	const name = document.getElementById("name");
    	const phone = document.getElementById("phone");
    	
    	const url = '${pageContext.request.contextPath}/api/client/idfind.json';
   	 	const headers = { "Content-Type":"application/x-www-form-urlencoded" };
   	 	const body = { idChkQ : idChkQ.options[idChkQ.selectedIndex].value, idChkA : idChkA.value, name : name.value, phone : phone.value };
   	 	const{ data } = await axios.post(url, body, {headers});
   	 	console.log(data);
   	 	
 
   	 	
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