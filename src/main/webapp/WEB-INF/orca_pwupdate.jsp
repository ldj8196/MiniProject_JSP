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
    <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/pwupdate.css'>
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
    <form action="orcamypagepwchange.do" method="post" id="form">
        <div class="my-header">
            <div class="my-tex">
                <span>비밀번호 변경</span>
                <hr>
            </div>
        </div>
        <div class="jcnt">
            <div class="joincnt">
                <div class="join_row1">
                	<input type="hidden" id="id" value="${sessionScope.id}" />
                    <label class="password">현재 비밀번호</label>
                    <input type="password" id="password" name="password"> 
                    <input type="button" value="확인" class="btn btn-primary" onclick="pwAction()" />
                </div>
        
                <div class="join_row1">
                    <label for="newPassword">변경할 비밀번호</label>
                    <input type="password" id="newPassword" name="newPassword"> 
                </div>
                
                <div class="join_row1">
                    <label for="newPassword2">변경할 비밀번호 확인</label>
                    <input type="password" id="newPassword2"> 
                </div>
                
            </div>
        </div>
        <div class="ok">
            <div class="btn-ok">
                <input type="button" value="변경하기" class="btn btn-primary" onclick="changeAction()" />
            </div>
        </div>  
    </form>
    </div>
        <!-- axios 추가 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    <!-- 2. Bootstrap용 js는 body에 위치해야 함! -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- jquery 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
    var pwChk = 0;
    async function pwAction() {
    	const id = document.getElementById("id");
   	 	const pw = document.getElementById("password");
   	 
   	 	const url = '${pageContext.request.contextPath}/api/Client/UpdatePw.json';
   	 	const headers = { "Content-Type":"application/x-www-form-urlencoded" };
   	 	const body = { id : id.value, pw : pw.value };
   	 	const{ data } = await axios.post(url, body, {headers});
   	 	console.log(data);
   	 	if(data.ret === 1) {
   		 	alert('올바른 비밀번호입니다.');
   		 	pwChk = 1;
   	 	}
   	 	else {
   		 	alert('비밀번호가 틀립니다.');
   		 	pwChk = 0;
   	 	}
    }
    function changeAction(){
    	const pw = document.getElementById("password");
    	const nPw = document.getElementById("newPassword");
    	const nPw2 = document.getElementById("newPassword2");

    	
    	if(pwChk !== 1){
    		alert('현재 비밀번호 확인이 필요합니다.');
    		return false;
    	}
    	
    	if(nPw.value.length <= 7) {
            alert('변경할 비밀번호를 8자 이상 입력하세요.');
            nPw.focus();
            return false;
        }
    	
    	if(pw.value === nPw.value){
    		alert('변경할 비밀번호가 현재 비밀번호와 일치합니다.');
    		nPw.focus();
    		return false;
    	}
    	
    	if(nPw.value !== nPw2.value) {
    		alert('변경할 비밀번호 확인이 일치하지 않습니다.')
    		return false;
    	}
    	alert('비밀번호 변경이 완료되었습니다. 다시 로그인 해주세요.')
    	document.getElementById("form").submit();
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