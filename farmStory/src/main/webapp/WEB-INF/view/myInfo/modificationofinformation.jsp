<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>정보수정</title>
    <link rel="stylesheet" href="/css/myInfo/modificationofinformation.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
<div id="wrapper">
    <header>
        <div>
            <div class="top">
                <p>
                    <a href="#">HOME |</a>
                    <a href="#">로그인 |</a>
                    <a href="#">회원가입 |</a>
                    <a href="#">나의정보 |</a>
                    <a href="#">로그아웃 |</a>
                    <a href="#">관리자 |</a>
                    <a href="#">고객센터</a>
                </p>
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
                <img src="/images/myinfo/myinfo_top_tit.png" alt="나의정보">
            </div>
            <section>
                <aside>
                    <div>
                        <img src="/images/myinfo/myinfo_menu_tit.png" alt="나의정보">
                    </div>
                    <div>
                        <img src="/images/myinfo/myinfo_menu1.png" alt="장바구니">
                        <img src="/images/myinfo/myinfo_menu2.png" alt="주문내역">
                        <img src="/images/myinfo/myinfo_menu3_ov.png" alt="정보수정">
                    </div>
                </aside>
                <article>
                    <div class="nav_bar">
                        <nav>
                            <img src="/images/myinfo/myinfo_nav_tit3.png" alt="정보수정">
                        </nav>
                        <div>
                            <p>HOME > 주문내역 ><span style="color: #91ba23; font-weight: 700;">정보수정</span></p>
                        </div>
                    </div>

                    <section>
                        <form action="#">
                            <p>회원정보 설정</p>
                            <table class="table_1">
                                <tr>
                                    <td class="td_left">아이디</td>
                                    <td>chhak1234</td>
                                </tr>
                                <tr>
                                    <td class="td_left">비밀번호</td>
                                    <td><input type="text" placeholder="비밀번호 입력"></td>
                                </tr>
                                <tr>
                                    <td class="td_left">비밀번호 확인</td>
                                    <td>
                                        <input type="text" placeholder="비밀번호 입력 확인">
                                        <button type="button"><span>비밀번호 수정</span></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td_left">회원가입날짜</td>
                                    <td>2022-01-01 12:45:12</td>
                                </tr>
                            </table>

                            <p class="my">개인정보 수정</p>
                            <table class="table_2">
                                <tr>
                                    <td class="td_left">이름</td>
                                    <td><input type="text"></td>
                                </tr>
                                <tr>
                                    <td class="td_left">별명</td>
                                    <td>
                                        <p>공백없는 한글, 영문, 숫자 입력</p>
                                        <div class="div_btn">
                                            <input type="text" placeholder="별명 입력">
                                            <img src="/images/myinfo/chk_id.gif" alt="중복확인">
                                        </div>
                                    </td>
                                </tr>
                               
                                    <tr>
                                        <td class="td_left">이메일</td>
                                        <td>
                                            <div class="div_btn">
                                            <input type="text" placeholder="이메일 입력">
                                            <img src="/images/myinfo/chk_auth.gif" alt="인증번호 받기">
                                        </div>
                                        </td>
                                    </tr>
                           
                                
                                <tr>
                                    <td class="td_left">휴대폰</td>
                                    <td>
                                        <input type="text" placeholder="휴대폰 입력">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td_left">주소</td>
                                    <td class="addr_td">
                                    <div class="div_btn">
                                        <input type="text" placeholder="우편번호">
                                        <img src="/images/myinfo/chk_post.gif" alt="우편번호찾기"><br>
                                    </div>
                                        <input type="text" placeholder="주소검색" class="addr_input"> <br>
                                        <input type="text" placeholder="상세주소 입력" class="addr_input">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td_left">회원탈퇴</td>
                                    <td><button type="button" class="button1">탈퇴하기</button></td>
                                </tr>
                            </table>
                        <div class="btn1">
                            <a href="#">취소</a>
                            <input type="submit" value="회원수정">
                        </div>
                        </form>                    
                    </section>
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
