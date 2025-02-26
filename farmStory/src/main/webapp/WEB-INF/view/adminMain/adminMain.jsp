<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminMain</title>
    <link rel="stylesheet" href="/css/adminMain/adminMain.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
</head>
<body>
    <div id="wrapper">
        <header>
            <a href="#"><img src="/images/admin/admin_logo.jpg" alt="hd_logo" class="hd_logo"></a>
            <ul>
                <li>HOME&nbsp;|&nbsp;</li>
                <li>로그아웃&nbsp;|&nbsp;</li>
                <li>고객센터</li>
            </ul>
    </header>

        <main>
            <aside>
                <div class="heading">
                    <p class="heading_p">주요기능</p>
                </div>

                <div class="list">
                    <div>
                        <p>상품관리</p>
                        <ul>
                            <li>
                                <span>L</span>
                                <a href="/html/adminProductManagement/adminProduct.html" class="list_it">상품목록</a>
                            </li>
                            <li>
                                <span>L</span>
                                <a href="#">상품등록</a>
                            </li>
                        </ul>
                    </div>

                    <div>
                        <p>주문관리</p>
                        <ul>
                            <li>
                                <span>L</span>
                                <a href="#">주문목록</a>
                            </li>
                        </ul>
                    </div>

                    <div>
                        <p>회원관리</p>
                        <ul>
                            <li>
                                <span>L</span>
                                <a href="#">회원목록</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </aside>

            <section>
                <nav>관리자 메인</nav>
                <article class="art1">
                    <div class="main_hd">
                        <a href="#">상품현황</a>
                        <a href="#">+ 더보기 </a>
                    </div>
                    <table>
                            <tr class="table_hd">
                                <th>상품번호</th>
                                <th>상품명</th>
                                <th>구분</th>
                                <th>가격</th>
                                <th>재고</th>
                                <th>등록일</th>
                            </tr>
                            <tr class="table_bd1">
                                <td>1011</td>
                                <td>사과 500g</td>
                                <td>과일</td>
                                <td>4,000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr class="table_bd1">
                                <td>1011</td>
                                <td>사과 500g</td>
                                <td>과일</td>
                                <td>4,000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr class="table_bd1">
                                <td>1011</td>
                                <td>사과 500g</td>
                                <td>과일</td>
                                <td>4,000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                    </table>
                </article>

                <article class="art2">
                    <div class="main_hd">
                        <a href="#">주문현황</a>
                        <a href="#">+ 더보기</a>
                    </div>
                    <table>
                        <tr class="table_hd">
                            <th>주문번호</th>
                            <th>상품명</th>
                            <th>판매가격</th>
                            <th>수량</th>
                            <th>배송비</th>
                            <th>합계</th>
                            <th>주문자</th>
                            <th>주문일</th>
                        </tr>
                        <tr class="table_bd2">
                            <td>1011</td>
                            <td>사과 500g</td>
                            <td>4,000원</td>
                            <td>2개</td>
                            <td>3,000원</td>
                            <td>8,000원</td>
                            <td>홍길동</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="table_bd2">
                            <td>1011</td>
                            <td>사과 500g</td>
                            <td>4,000원</td>
                            <td>2개</td>
                            <td>3,000원</td>
                            <td>8,000원</td>
                            <td>홍길동</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="table_bd2">
                            <td>1011</td>
                            <td>사과 500g</td>
                            <td>4,000원</td>
                            <td>2개</td>
                            <td>3,000원</td>
                            <td>8,000원</td>
                            <td>홍길동</td>
                            <td>2023-01-01</td>
                        </tr>
                    </table>
                </article>

                <article class="art3">
                    <div class="main_hd">
                        <a href="#">회원현황</a>
                        <a href="#">+ 더보기</a>
                    </div>
                    <table>
                        <tr class="table_hd">
                            <th>회원아이디</th>
                            <th>이름</th>
                            <th>닉네임</th>
                            <th>휴대폰</th>
                            <th>이메일</th>
                            <th>등급</th>
                            <th>회원가입일</th>
                        </tr>
                        <tr class="table_bd3">
                            <td>a101</td>
                            <td>김유신</td>
                            <td>유신123</td>
                            <td>010-1234-1001</td>
                            <td>yusin123@naver.com</td>
                            <td>2</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="table_bd3">
                            <td>a101</td>
                            <td>김유신</td>
                            <td>유신123</td>
                            <td>010-1234-1001</td>
                            <td>yusin123@naver.com</td>
                            <td>2</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="table_bd3">
                            <td>a101</td>
                            <td>김유신</td>
                            <td>유신123</td>
                            <td>010-1234-1001</td>
                            <td>yusin123@naver.com</td>
                            <td>2</td>
                            <td>2023-01-01</td>
                        </tr>
                     </table>
                     
                </article>
            </section>
        </main>
        <footer>
            <p>FARMSTORY ADMINISTRATOR Version 1.0.1</p>
            <p>Copyrightⓒ 김철학(개발에반하다.) All rights reserved.</p>
        </footer>
    </div>
</body>
</html>