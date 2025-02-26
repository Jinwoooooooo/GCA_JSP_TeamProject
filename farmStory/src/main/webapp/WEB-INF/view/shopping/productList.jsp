<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>
    <link rel="stylesheet" href="/css/shopping/productList.css">
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
                    <img src="/images/sub_top_tit2.png" alt="마켓">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/images/sub_aside_cate2_tit.png" alt="장보기">
                        </div>
                        <div>
                            <img src="/images/sub_cate2_lnb1_ov.png" alt="장보기">
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/images/sub_nav_tit_cate2_tit1.png" alt="장보기">
                            </nav>
                            <div>
                                <p>HOME > 장보기 > <span style="color: #91ba23; font-weight: 700;">장보기</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <div class="sub_page_p">
                                <p>
                                    <a href="#">전체(10) | </a>
                                    <a href="#">과일 | </a>
                                    <a href="#">야채 | </a>
                                    <a href="#">곡류</a>
                                </p>
                            </div>
                            <table>
                                <tr>
                                    <th>이미지</th>
                                    <th>종류</th>
                                    <th>상품명</th>
                                    <th>할인</th>
                                    <th>포인트</th>
                                    <th>판매가격</th>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><img src="/images/market_item1.jpg" alt="사과" class="item_img"></a>
                                    </td>
                                    <td>과일</td>
                                    <td>사과 500g</td>
                                    <td>10%</td>
                                    <td>400P</td>
                                    <td>
                                        <del>4,000원</del><br>
                                        <strong>3,600원</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><img src="/images/market_item2.jpg" alt="배" class="item_img"></a>
                                    </td>
                                    <td>과일</td>
                                    <td>전남 완주 배 5kg</td>
                                    <td>10%</td>
                                    <td>400P</td>
                                    <td>
                                        <del>4,000원</del><br>
                                        <strong>3,600원</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><img src="/images/market_item3.jpg" alt="토마토" class="item_img"></a>
                                    </td>
                                    <td>과일</td>
                                    <td>방울 토마토</td>
                                    <td>10%</td>
                                    <td>400P</td>
                                    <td>
                                        <del>4,000원</del><br>
                                        <strong>3,600원</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><img src="/images/market_item6.jpg" alt="현미" class="item_img"></a>
                                    </td>
                                    <td>곡류</td>
                                    <td>무농약 현미</td>
                                    <td>10%</td>
                                    <td>400P</td>
                                    <td>
                                        <del>4,000원</del><br>
                                        <strong>3,600원</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><img src="/images/market_item7.jpg" alt="샐러드" class="item_img"></a>
                                    </td>
                                    <td>야채</td>
                                    <td>팜스토리 하루야채 샐러드</td>
                                    <td>10%</td>
                                    <td>400P</td>
                                    <td>
                                        <del>4,000원</del><br>
                                        <strong>3,600원</strong>
                                    </td>
                                </tr>
                            </table>
                            <p style="color: #999; text-align: center; margin-top: 15px;">< <span style="color: #111;">[1]</span> [2] [3] [4] [5] ></p>
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