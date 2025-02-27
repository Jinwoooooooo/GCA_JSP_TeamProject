<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>
    <link rel="stylesheet" href="/farmStory/css/event/eventCalender.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js"></script>
    <script src="/js/eventCalendar.js"></script>
	<%@ include file="/../../header.jsp" %>
</head>
<body>
    <div id="wrapper">
        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/farmStory/images/sub_top_tit4.png" alt="이벤트">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/farmStory/images/sub_aside_cate4_tit.png" alt="이벤트">
                        </div>
                        <div>
                            <img src="/farmStory/images/sub_cate4_lnb1_ov.png" alt="이벤트" onclick="location.href='/farmStory/view/event/eventCalender.do'" class="aside_link">
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate4_tit1.png" alt="이벤트">
                            </nav>
                            <div>
                                <p>HOME > 이벤트 > <span style="color: #91ba23; font-weight: 700;">이벤트</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <div id='calendar'></div>
                        </div>
                    </article>
                </section>
            </div> 
        </main>

        <footer>
            <div class="footer_container">
                <div class="footer_img">
                    <img src="/farmStory/images/footer_logo.png" alt="팜스토리 로고">
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