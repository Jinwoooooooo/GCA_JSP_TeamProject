<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품상세보기</title>
    <link rel="stylesheet" href="/css/shopping/productDetail.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<%@ include file="/../../header.jsp" %>
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
                            <p class="subtitle">기본정보</p>
                            <div class="basic_info">
                                <div>
                                    <img src="/images/market_item_thumb.jpg" alt="상품이미지">
                                    <div class="form_container">
                                        <form action="#">
                                            <table>
                                                <tr>
                                                    <td>상품명</td>
                                                    <td>딸기 500g</td>
                                                </tr>
                                                <tr>
                                                    <td>상품코드</td>
                                                    <td>01</td>
                                                </tr>
                                                <tr>
                                                    <td>배송비</td>
                                                    <td>5,000원 &nbsp;<span style="color: #777;">3만원 이상 무료배송</span></td>
                                                </tr>
                                                <tr>
                                                    <td>판매가격</td>
                                                    <td>4,000원</td>
                                                </tr>
                                                <tr>
                                                    <td>구매수량</td>
                                                    <td>
                                                        <input type="number" value="1" min="1">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>합계</td>
                                                    <td><span style="color: #C20a0a; font-weight: 700;">4,000원</span></td>
                                                </tr>
                                            </table>
                                            <div class="btn_container">
                                                <a href="#">
                                                    <p class="btn btn_cart">장바구니</p>
                                                </a>
                                                <a href="#">
                                                    <p class="btn btn_purchase">바로구매</p>
                                                </a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <p class="subtitle">상품설명</p>
                            <div class="product_desc">
                                <img src="/images/market_detail_sample.jpg" alt="">
                            </div>

                            <p class="subtitle">배송정보</p>
                            <div class="shipping_info">
                                <p>입금하신 이후 택배송장번호는 SMS(문자서비스)를 통해 고객님께 안내해드립니다.</p>
                            </div>
                            
                            <p class="subtitle">교환/반품</p>
                            <div class="exchange_return">
                                <table>
                                    <tr>
                                        <td>교환 반품이 가능한 경우</td>
                                        <td>
                                            팜스토리 상품에 하자가 있거나 불량인 경우<br>
                                            채소, 과일, 양곡등의 식품은 만1일 이내<br>
                                            기타 상품은 수령일로부터 영업일 기준 일주일 이내<br>
                                            받으신 상품이 표시사항과 다른 경우에는 받으신 날로부터 일주일 이내
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>교환 반품이 불가능한 경우</td>
                                        <td>
                                            신선 식품의 경우 단순히 마음에 들지 않는 경우<br>
                                            단순 변심으로 상품이 가치가 훼손돼서 판매가 어려운 경우
                                        </td>
                                    </tr>
                                </table>
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