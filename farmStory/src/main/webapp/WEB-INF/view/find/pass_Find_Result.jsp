<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>find::pass_Find_Result</title>
    <link rel="stylesheet" href="/css/find/pass_Find_Result.css">
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
        <main>
            <section class="id_find">             
                <form action="#">
                    <h2>비밀번호 찾기</h2>
                    <table>
                        <tbody>
                            <tr>
                                <td>아이디</td>
                                <td><input type="text" name="uid" placeholder="아이디 입력"></td>
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td>
                                    <div>
                                        <input type="email" name="email" placeholder="이메일 입력"/>
                                        <button>인증번호 받기</button>
                                    </div>
                                    <div>
                                        <input type="text" name="auth_code" placeholder="인증번호 입력">
                                        <button>확인</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <p>
                    비밀번호를 찾고자 하는 아이디와 이메일을 입력해 주세요. <br>
                    회원가입시 입력한 아이디와 이메일 주소가 같아야, 인증번호를 받을 수 있습니다. <br>
                    인증번호를 입력 후 확인 버튼을 누르세요.
                </p>
                <div>
                    <a href="#">취소</a>
                    <a href="#">다음</a>
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
</body>
</html>