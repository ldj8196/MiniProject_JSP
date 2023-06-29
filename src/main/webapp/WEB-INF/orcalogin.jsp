<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Login</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- 1. Bootstrap용 css CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <style>
        .container{
            border: 1px solid #ccc;
            padding: 100px;
            margin-top: 50px;
        }
        .container input{
            width: 400px;
        }
    </style>
</head>

<body>
    <div class="container space">
        <div class="row">
            <div class="col-sm">
                <h1>LOGIN</h1>
                    <div class="form-floating mb-2">
                        <input type="text" id="id" name="id" class="form-control" >
                        <label for="id" class="form-label">ID</label>
                    </div>

                    <div class="form-floating mb-2">
                        <input type="password" id="password" name="password" class="form-control">
                        <label for="pw" class="form-label">PASSWORD</label>
                    </div>
                    
                    <input type="button" value="로그인" class="btn btn-primary" onclick="loginAction()" />
                    <a href="orcaselectjoin.do" class="btn btn-primary">회원가입</a>
                    <div>
                        <a href="orcafindid.do">아이디찾기</a>
                        <a href="orcafindpw.do">비밀번호찾기</a>
                    </div>
            </div>
        </div>
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
	async function loginAction() {
	    	 const id = document.getElementById("id");
	    	 const pw = document.getElementById("password");
	    	 
	    	 const url = '${pageContext.request.contextPath}/api/Client/login.json';
	    	 const headers = { "Content-Type":"application/x-www-form-urlencoded" };
	    	 const body = { id : id.value, pw : pw.value };
	    	 const{ data } = await axios.post(url, body, {headers});
	    	 console.log(data);
	    	 if(data.ret === 1) {
	    		 alert('로그인 되었습니다.');
	    		 window.location.href='orcahome.do';
	    	 }
	    	 else {
	    		 alert('아이디 또는 암호가 틀렸습니다.')
	    		 
	    	 }
	     }

	</script>

</body>

</html>