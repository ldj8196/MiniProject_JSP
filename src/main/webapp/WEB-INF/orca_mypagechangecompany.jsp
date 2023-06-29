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

    <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/individuaupdate.css'>

    
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
    <form action="orcamypagecompanychange.do" method="post" id="form">
        <div class="my-header">
            <div class="my-tex">
                <span>정보수정</span>
                <hr>
            </div>
        </div>
        <div class="jcnt">
            <div class="joincnt">
                <div class="join_row1">
                    <label for="name">회사명</label>
                    <input type="text" id="name" name="name" placeholder="${sessionScope.name}" value="${sessionScope.name}"> 
                </div>
        
                <div class="join_row1">
                    <label for="phone">회사연락처</label>
                    <input type="text" id="phone" name="phone" placeholder="${sessionScope.phone}" value="${sessionScope.phone}"> 
                </div>
        
                <div class="join_row1">
		             <label for="email">이메일</label>
		             <input type="text" id="email" name="email" placeholder="${sessionScope.email}" value="${sessionScope.email}">
		             <input type="button" value="인증번호받기" class="btn btn-primary" onclick="sendMail()"/>
		        </div>
		               
		        <div class="join_row1">
		             <label for="emailChk">인증코드</label>
		             <input type="text" id="emailChk" name="emailChk" >
		             <input type="button" value="인증번호확인" class="btn btn-primary" onclick="checkcode()"/>
		        </div>
		        
                     <div class="join_row1">
                        <label for="address">주소</label>
                        <input type="text" name="postcode" id="sample6_postcode" placeholder="${sessionScope.postCode}" value="${sessionScope.postCode}"><br />
                        <input class="j3button" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                     </div>
 
                <div class="join_row1">
                	<label for="address"></label>
                		<div class="address01">
                     		<input type="text" name="address" id="sample6_address" placeholder="주소">
                     		<input type="text" name="address1" id="sample6_detailAddress" placeholder="상세주소">
                     		<input type="text" name="address2" id="sample6_extraAddress" placeholder="참고항목">
	                	</div>
	                </div>      
	            </div>
	        </div>
        <div class="ok">
            <div class="btn-ok">
                <input type="button" value="수정하기" onclick="changeAction()" />
            </div>
        </div>  
    </form>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>
    <!-- jquery 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- 2. Bootstrap용 js는 body에 위치해야 함! -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
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
    
    function changeAction(){
    	const name = document.getElementById("name");
    	const phone = document.getElementById("phone");
    	const email = document.getElementById("email");
    	const postCode = document.getElementById("sample6_postcode");
    	if(email.value !== "ldj8196@gmail.com" ){
    		alert('이메일 인증이 필요합니다.');
    		email.focus();
    		return false;	
    	}
    	if(name.value.length <= 0){
    		alert('이름을 입력하세요.');
    		name.focus();
    		return false;
    	}
    	if(phone.value.length <= 0){
    		alert('연락처를 입력하세요.');
    		phone.focus();
    		return false;
    	}
    	if(postCode.value.length <= 3){
    		alert('주소를 입력하세요.');
    		phone.focus();
    		return false;
    	}
    	alert('수정이 완료되었습니다.')
    	document.getElementById("form").submit();
    }
    
    function checkcode(){
        console.log(localStorage.getItem("c"));
        if(emailChk.value !== localStorage.getItem("c")){
            alert('인증코드가 다릅니다.');
            emailChk.focus();
            return false;
        }
        
        alert('인증 성공');
    }

    async function sendMail(){
        const email = document.getElementById("email");
        
        const url ='${pageContext.request.contextPath}/api/orca/mail.json';
        const headers = {"Content-Type":"application/x-www-form-urlencoded"};
        const body = {"check" : "1", "email" : email.value};
        const {data} = await axios.post(url, body, {headers});
        if(email.value.length <= 0) {
            alert('이메일을 입력하세요');
            email.focus();
            return false;
         }
        alert('인증코드발송');
        localStorage.setItem("c",data.code);
        
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