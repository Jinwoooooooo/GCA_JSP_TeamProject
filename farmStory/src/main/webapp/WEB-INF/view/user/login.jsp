<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user::login</title>
    <link rel="stylesheet" href="/css/user/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
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

        <main id="user">
            <section class="login">
                <form action="#">
                    <table>
                        <tbody>
                            <tr>
                                <td><img src="/images/user/login_ico_id.png" alt="아이디"></td>
                                <td><input type="text" name="uid" placeholder="아이디 입력"></td>
                            </tr>
                            <tr>
                                <td><img src="/images/user/login_ico_pw.png" alt="비밀번호"></td>
                                <td>
                                    <input type="password" name="pass" placeholder="비밀번호 입력"></td>
                            </tr>
                        </tbody>
                    </table>
                    <input type="submit" style="border-color: #bbbbbb;" value="로그인" class="btnLogin">
                </form>
                <div class="social_login">
                    <a href="#"><img src="/images/user/naver_login.PNG" alt="네이버 로그인"></a>
                    <a href="#"><img src="/images/user/kakao_login.PNG" alt="카카오 로그인"></a>
                    <a href="#"><img src="/images/user/google_login.PNG" alt="구글 로그인"></a>
                </div>
                <div>
                    <h3>회원 로그인 안내</h3>
                    <p>아직 회원이 아니시면 회원으로 가입하세요.</p>
                    <div style="text-align: right;">
                        <a href="#">아이디 | </a>
                        <a href="#">비밀번호찾기 | </a>
                        <a href="#">회원가입</a>
                    </div>
                </div>
            </section>
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