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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel='stylesheet' type='text/css' media='screen' href='./resources/css/shipupdate.css'>

   
    
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
    <div>
    <div class="Join">
    <form id="form" action="orcaship.do" method="post">
        <div class="my-header">
            <div class="my-tex">
                <span>선박 정보 수정</span>
                <hr>
            </div>
        </div>
        <div class="jcnt">
            <div class="joincnt">
            
            	<div class="join_row1">
                    <label for="srn">배번호</label>
                    <input value="${obj.srn}" id="sname" name="srn"> 
                </div>
                
                <div class="join_row1">
                    <label for="sname">배이름</label>
                    <input type="text" value="${obj.sname}" name="sname" id="sname"> 
                </div>
        
                <div class="join_row1">
                    <label for="stype">선박종류</label>
                    <input type="text" value="${obj.type}" name="type" id="stype"> 
                </div>
        
                <div class="join_row1">
                    <label class="maxcargo">최대적재량</label>
                    <input type="number" value="${obj.maxCargo}" name="maxCargo" id="maxcargo"> 
                </div>
        
                <div class="join_row1">
                    <label for="point">지점</label>
                    <input type="text" value="${obj.point}" name="point" id="point"> 
                </div>
         
                <div class="join_row1">
                    <label for="sweight">선박무게</label>
                    <input type="number" value="${obj.shipWeight}" name="shipWeight" id="sweight"> 
                </div>
            </div>
        </div>
         
        <div class="ok">
            <div class="btn-ok">
               <input id="shipupdatebtn2" type="submit" class="btn btn-primary" value="완료">
            </div>
        </div>  
        </form>
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