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
   
    <!-- bootstrap용 아이콘-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- 3. Bootstrap Icon용 CDN / font-awesome Icon용 CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' type='text/css' media='screen' href='/orca/css/estimate.css'>

        <!-- jquery cdn -->
        <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
   
    
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
    <div class="box"> 
        <div class="cnt1">
            <div class="cnt02">
                    <div class="tablediv">
                        <table class="table">
                            <caption>심사 정보 목록</caption>
                            <thead>
                            <tr>
                                <th>견적번호</th>
                                <th>부담금액</th>
                                <th>항만시설사용료</th>
                                <th>배등록번호</th>
                                <th>화물번호</th>
                                <th>운행시퀀스</th>
                                <th>진행상태</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            <tr>
                                <td>견적번호</td>
                                <td>부담금액</td>
                                <td>항만시설사용료</td>
                                <td>배등록번호</td>
                                <td>화물번호</td>
                                <td>운행시퀀스</td>
                                <td>진행상태</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
        <div class="estimate_form">

                <div class="estimate_title">
                    <h3>견적심사내용</h3>
                </div>
            <div class="estimate_form_inner">
                <div class="estimate_client_data">
                    <div class="estimate_client_content">
                        <div class="estimate_cargo_title">
                            <h2>신청자정보</h2>
                        </div>
                        <div class="row01">
                            <label for="clientid">신청자명</label>
                            <input type="text" id="clientid" value="아이디">
                        </div>
                        
                        <div class="row01">
                            <label for="clientphone">연락처</label>
                            <input type="tel" id="clientphone" value="연락처">
                        </div class="row01">
            
                        <div class="row01">
                            <label for="clientemail">이메일</label>
                            <input type="email" id="clientemail" value="이메일">
                        </div>
                    </div>
                </div>

                <div class="estimate_cargo_content">
                    <div class="estimate_cargo_title">
                        <h2>화물정보</h2>
                    </div>
        
                    <div class="row01">
                        <label for="cargono">화물번호</label>
                        <input type="text" id="cargono" value="화물번호">
                    </div>
        
                    <div class="row01">
                        <label for="cargotype">화물분류</label>
                        <input type="text" id="cargotype" value="화물분류">
                    </div>
        
                    <div class="row01">
                        <label for="cargoweight">화물무게</label>
                        <input type="text" id="cargoweight" value="화물번호">
                    </div>
                </div>

                <div class="estimate_shipschedule_content">
                    <div class="estimate_cargo_title">
                        <h2>운행정보</h2>
                    </div>
                    <div class="row01">
                        <label for="scheduleno">운행번호</label>
                        <input type="text" id="scheduleno" value="운행번호">
                    </div>
        
                    <div class="row01">
                        <label for="portcode">항구청코드</label>
                        <input type="text" id="portcode" value="항구청코드">
                    </div>

                    <div class="row01">
                        <label for="dport">출발항</label>
                        <input type="text" id="dport" value="출발항">
                    </div>

                    <div class="row01">
                        <label for="aport">도착항</label>
                        <input type="text" id="aport" value="도착항">
                    </div>

                    <div class="row01">
                        <label for="atime">출발일</label>
                        <input type="text" id="atime" value="출발일">
                    </div>

                    <div class="row01">
                        <label for="dtime">도착일</label>
                        <input type="text" id="dtime" value="도착일">
                    </div>

                    <div class="row01">
                        <label for="etime">예상시간</label>
                        <input type="text" id="etime" value="예상시간">
                    </div>
                </div>

                <div class="estimate_ship_content">
                    <div class="estimate_ship_title">
                        <h2>선박정보</h2>
                    </div>
        
                    <div class="row01">
                        <label for="shipno">배 등록번호</label>
                        <input type="text" id="shipno" value="화물번호">
                    </div>
        
                    <div class="row01">
                        <label for="shipname">배 이름</label>
                        <input type="text" id="shipname" value="화물분류">
                    </div>
        
                    <div class="row01">
                        <label for="shiptype">종류</label>
                        <input type="text" id="shiptype" value="화물번호">
                    </div>

                    <div class="row01">
                        <label for="shipmaxcargo">최대적재량</label>
                        <input type="text" id="shipmaxcargo" value="화물번호">
                    </div>

                    <div class="row01">
                        <label for="shippoint">지점</label>
                        <input type="text" id="shippoint" value="화물번호">
                    </div>

                    <div class="row01">
                        <label for="shipweight">선박무게</label>
                        <input type="text" id="shipweight" value="화물번호">
                    </div>
                </div>

                <div class="estimate_pay_content">
                    <div class="estimate_pay_title">
                        <h2>금액정보</h2>
                    </div>
                    <div class="row01">
                        <label for="portfacfare">항만시설사용료</label>
                        <input type="text" id="portfacfare" value="항만시설사용료">
                    </div>
        
                    <div class="row01">
                        <label for="totalfare">부담금액</label>
                        <input type="text" id="totalfare" value="부담금액">
                    </div>
                </div>
            </div>
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