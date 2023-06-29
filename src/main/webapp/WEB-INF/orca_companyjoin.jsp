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

    <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/companyjoin.css'>
	
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
                    <li class="login"><a href="#">LOGIN</a></li>
                    <li class="join"><a href="#">JOIN</a></li>
                    <li class="menu"><a href="#">Menu</a></li>
                </ul>
            </aside>
    </div>
</header>
<body>
    <div>
       <div class="my-page">
          <form action="orcacompanyjoin.do" method="post" id="form">
              <div class="my-header">
                  <div class="my-tex">
                      <span>기업 회원가입</span>
                      <hr>
                  </div>
              </div>
              <div class="jcnt">
              
                  <div class="joincnt">
                      <div class="join_row1">
                      <label for="id" id="idchk">아이디</label>
                      <input type="text" id="id" name="id" onkeyup="ajaxIDCheck(this)" />
                  </div>
                      
                    <div class="join_row1">
                         <label>아이디 찾기 질문</label>
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
                         <label for="idChkA">질문 답변</label>
                         <input type="text" id="idChkA" name="idChkA">
         
                     </div>
                      <div class="join_row1">
                          <label for="brn">사업자등록번호</label>
                          <input type="text" id="brn" name="brn"> 
                          <button type="button" onclick="brncheck()">확인</button>
                      </div>
              
                      <div class="join_row1">
                          <label for="password">비밀번호</label>
                          <input type="password" id="password" name="password"> 
                      </div>
              
                      <div class="join_row1">
                          <label for="password2">비밀번호 확인</label>
                          <input type="password" id="password2" name="password2"> 
                      </div>
               
                      <div class="join_row1">
                          <label for="name">회사명</label>
                          <input type="text" id="name" name="name"> 
                      </div>
              
                      <div class="join_row1">
                          <label for="phone">회사연락처</label>
                          <input type="text" id="phone" name="phone"> 
                      </div>
              
                      <div class="join_row1">
		                   <label for="address">이메일</label>
		                   <input type="text" id="email" name="email" >
		                   <input type="button" value="인증번호받기" class="btn btn-primary" onclick="sendMail()"/>
		              </div>
		               
		              <div class="join_row1">
		                <label for="emailChk">인증코드</label>
		                <input type="text" id="emailChk" name="emailChk" >
		                <input type="button" value="인증번호확인" class="btn btn-primary" onclick="checkcode()"/>
		             </div>
		                           
                   	<div class="join_row1">
                       	<label for="address">주소</label>
                       	<input type="text" name="postcode" id="sample6_postcode" placeholder="우편번호"><br />
                       	<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
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
                      <input type="button" value="회원가입" class="btn btn-primary" onclick="joinAction()" />
                  </div>
              </div>
           </form>
       </div>
   </div>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.5/axios.min.js"></script>
    <!-- jquery 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- 2. Bootstrap용 js는 body에 위치해야 함! -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    var idcheck = 0;
    const id = document.getElementById("id");
    var chk;
    
    async function ajaxIDCheck(e){
          if(e.value.length > 0){
             // rest api호출
             const url = '${pageContext.request.contextPath}/api/client/idcheck.json?id=' +e.value;
             const headers = {"content-type":"application/json"};
             const {data} = await axios.get(url, {headers}); // 데이터를 받아옴
             console.log(data);
             
          if(data.ret === 1){ //사용불가
             idcheck = 0;
             document.getElementById("idchk").innerText = '아이디 사용불가';
             }
             else if(data.ret === 0) { //사용가능
                idcheck = 1;
                document.getElementById("idchk").innerText = '아이디 사용가능';
                }
          }
          else {
            idcheck = 0;
            document.getElementById("idchk").innerText = '아이디';
             }
       }
    
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
    function joinAction(){
      const pw = document.getElementById("password");
      const pw2 = document.getElementById("password2");
      const brn = document.getElementById("brn");
      const name = document.getElementById("name");
      const phone = document.getElementById("phone");
      const email = document.getElementById("email");
      const emailChk = document.getElementById("emailChk");
      const idChkA = document.getElementById("idChkA");
      const postcode = document.getElementById("sample6_postcode");
      const address = document.getElementById("sample6_address");
      const address1 = document.getElementById("sample6_detailAddress");
      const address2 = document.getElementById("sample6_extraAddress");
      var idChkQ = document.getElementById("idChkQ");
      var brnchk;
      idChkQ.options[idChkQ.selectedIndex].value
       
      // 필수 입력항목
      if(name.value.length <= 0) {
         alert('회사명을 입력하세요.');
         name.focus();
         return false;
       }
      
      if(id.value.length <= 0) {
         alert('아이디를 입력하세요.');
         id.focus();
         return false;
       }

      if(idChkQ.options[idChkQ.selectedIndex].value == "1") {
          alert('질문을 선택하세요.');
          idChkQ.focus();
          return false;
       }

      if(idChkA.value.length <= 0) {
         alert('답변을 입력하세요.');
         idChkA.focus();
         return false;
       }
      
      if(pw.value.length <= 7) {
         alert('비밀번호를 8자 이상 입력하세요.');
         pw.focus();
         return false;
       }
      
      if(phone.value.length <= 0) {
         alert('연락처를 입력하세요');
         phone.focus();
         return false;
       }
      if(brn.value.length <= 0) {
         alert('사업자등록번호를 입력하세요');
         brn.focus();
         return false;
       }
      
      if(email.value.length <= 0) {
         alert('이메일을 입력하세요');
         email.focus();
         return false;
       }
      
      if(postcode.value.length <= 0) {
         alert('우편번호를 입력하세요.');
         postcode.focus();
         return false;
      }
      if(address.value.length <= 0) {
         alert('주소를 입력하세요.');
         address.focus();
         return false;
      }
      if(address1.value.length <= 0) {
         alert('상세주소를 입력하세요.');
         address1.focus();
         return false;
      }
       
      // 암호와 암호확인이 일치
      if(pw.value !== pw2.value) {
          alert('암호가 일치하지 않습니다.');
          password2.focus();
          return false;
       }
      
      if(idcheck === 0) {
          alert('아이디 중복확인이 필요합니다.')
          id.focus();
          return false;
       }
      if(chk !== 1){
          alert('사업자 등록번호 확인이 필요합니다.')
          brn.focus();
          return false;
       }
      if(emailChk.value !== localStorage.getItem("c")){
          alert('인증번호 확인이 필요합니다.');
          emailChk.focus();
          return false;
      }
      document.getElementById("form").submit();
    }
    
    function brncheck(){
        var data = {
                 "b_no": [brn.value] // 사업자번호 "xxxxxxx" 로 조회 시,
                }; 
             console.log(brn.value);
             $.ajax({
               url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=8BvDGVC7KHvxk21Hnl6v%2FHYPZdbTLgbBkyHlaQJt05qU8lLZEsa5Dt7SX%2BnXmVsZzEoGQxaB5zxHQUvEv8ud7w%3D%3D",  // serviceKey 값을 xxxxxx에 입력
               type: "POST",
               data: JSON.stringify(data), // json 을 string으로 변환하여 전송
               dataType: "JSON",
               contentType: "application/json",
               accept: "application/json",
               success: function(result) {
                   console.log(result);
                   console.log(result.data[0].b_stt_cd);
                   if(result.data[0].b_stt_cd !== "01") {
                      alert('유효하지 않은 사업자등록번호 입니다.')
                      brn.focus();
                      chk=0;
                      return false;
                   }
                   if(result.data[0].b_stt_cd === "01"){
                      alert('유효한 사업자등록번호 입니다.')
                      chk=1;
                      return false;
                   }
               },
               error: function(result) {
                   console.log(result.responseText); //responseText의 에러메세지 확인
               }
             });
       
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