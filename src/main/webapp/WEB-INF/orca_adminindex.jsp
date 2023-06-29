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

     <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel='stylesheet' type='text/css' media='screen' href='css/main.css'>
    <!--aos css-->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <!--aos js-->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
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
                    <li class="login"><a href="">LOGIN</a></li>
                    <li class="join"><a href="./orca_join.html">JOIN</a></li>
                    <li class="menu"><a href="#">Menu</a></li>
                </ul>
            </aside>
    </div>
</header>
<body>
    <div class="cnt2">
        <div class="btn text01" data-aos="fade-right" data-aos-delay="50" data-aos-duration="2000"> <!-- aos 속도 조절 -->
                <p>부산의 큰 한 발자국<br>
                    첨단산업도시로 나아가다.</p>
        </div>
        <!-- Swiper -->
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
            <div class="swiper-slide slide01">

            </div>
            <div class="swiper-slide slide02">

            </div>
            <div class="swiper-slide slide03">

            </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>
        <div class="main-box">
            <div class="box-btn">
                <div class="btn btn01" onclick="location.href='#'">
                    <div class="ico-box">
                        <i class="fa-solid fa-magnifying-glass fa-lg custom"></i>
                    </div>
                    <p>운행등록</p>
                </div>
                <div class="btn btn02" onclick="location.href='#'">
                    <div class="ico-box">
                        <i class="fa-solid fa-magnifying-glass fa-lg custom"></i>
                    </div>
                    <p>선박관리</p>
                </div>
                <div class="btn btn03" onclick="location.href='#'">
                    <div class="ico-box">
                        <i class="fa-solid fa-magnifying-glass fa-lg custom"></i>
                    </div>
                    <p>견적심사</p>
                </div>
            </div>
        </div>
        <script>
            var swiper = new Swiper(".mySwiper", {
              cssMode: true,
              navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
              },
              pagination: {
                el: ".swiper-pagination",
              },
              mousewheel: true,
              keyboard: true,
              loop:true, 
              autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
                delay : 3000,   // 시간 설정
                disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
                },
            });
        </script>
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
    AOS.init(); /* 글자 샤라락 */

    // 스크롤시 헤더 색상 변경
    $(window).on('scroll',function(){
                if($(window).scrollTop()){
                    $('header').addClass('active');
                }else{
                    $('header').removeClass('active');
                }
            });
</script>