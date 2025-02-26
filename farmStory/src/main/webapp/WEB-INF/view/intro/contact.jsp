<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>찾아오시는길</title>
    <link rel="stylesheet" href="/css/intro/contact.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <header>
            <div>
                <div class="top">
                    <div>
                        <a href="#">HOME |</a>
                        <a href="#">로그인 |</a>
                        <a href="#">회원가입 |</a>
                        <a href="#">나의정보 |</a>
                        <a href="#">로그아웃 |</a>
                        <a href="#">관리자 |</a>
                        <a href="#">고객센터</a>
                    </div>
                </div>
            </div>
            
            <div>
                <article>
                    <a href="#" class="logo">
                        <img src="/images/logo.png" alt="팜스토리 로고">
                    </a>
                    <a href="#" class="freeShipping">
                        <img src="/images/head_txt_img.png" alt="팜스토리 로고">
                    </a>
                </article>
            </div>

            <div>
                <ul>
                    <li>
                        <a href="#">
                            <img src="/images/head_menu_line.png" alt="라인">
                            <img src="/images/head_menu1.png" alt="팜스토리소개">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/images/head_menu_badge.png" alt="30%" class="head_badge">
                            <img src="/images/head_menu_line.png" alt="라인">
                            <img src="/images/head_menu2.png" alt="장보기">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/images/head_menu_line.png" alt="라인">
                            <img src="/images/head_menu3.png" alt="농작물이야기">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/images/head_menu_line.png" alt="라인">
                            <img src="/images/head_menu4.png" alt="이벤트">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/images/head_menu_line.png" alt="라인">
                            <img src="/images/head_menu5.png" alt="커뮤니티">
                        </a>
                    </li>
                </ul>
            </div>
        </header>

        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/images/sub_top_tit1.png" alt="인트로">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/images/sub_aside_cate1_tit.png" alt="팜스토리소개">
                        </div>
                        <div>
                            <img src="/images/sub_cate1_lnb1.png" alt="인사말" onclick="location.href='/html/intro/greeting.html'" class="aside_link">
                            <img src="/images/sub_cate1_lnb2_ov.png" alt="찾아오시는길" onclick="location.href='/html/intro/contact.html'" class="aside_link">
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/images/sub_nav_tit_cate1_tit2.png" alt="찾아오시는길">
                            </nav>
                            <div>
                                <p>HOME > 팜스토리소개 > <span style="color: #91ba23; font-weight: 700;">찾아오시는길</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <div class="sub_page_p">
                                <p>
                                    <span style="color: #91ba23; font-weight: 700;">팜스토리</span><br>
                                    주소: 경기도 이천시 잘한다구 신난다동 123<br>
                                    전화: 01-234-5678
                                </p>
                                <p>
                                    <span style="color: #91ba23; font-weight: 700;">찾아오시는길</span><br>
                                </p>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3261.0597793341053!2d129.07202137637717!3d35.18006257275311!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356893545e9bb879%3A0xb3fe515128fe55dd!2z67aA7IKw6rSR7Jet7IucIOyXsOygnOq1rCDspJHslZnrjIDroZwgMTAwMQ!5e0!3m2!1sko!2skr!4v1739175569540!5m2!1sko!2skr" width="760" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                    </article>
                </section>
            </div> 
        </main>

        <footer>
            <div class="footer_container">
                <div class="footer_img">
                    <img src="/images/footer_logo.png" alt="팜스토리 로고">
                </div>
                <div class="footer_p">
                    <p>
                        (주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호<br>
                        등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br>
                        대표 : 홍길동 / 이메일 : honggildong@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123
                    </p>
                    <p>
                        copyrightⓒ 홍길동 All rights reserved.
                    </p>
                    <p>
                        farmstory ver1.0.1
                    </p>
                </div>
            </div>
        </footer>
        
    </div>
</body>
</html>