<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminProduct</title>
    <link rel="stylesheet" href="/farmStory/css/adminProductManagement/adminProduct.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
</head>
<body>
    <div id="wrapper">
    <%@ include file="../adminMain/_header.jsp" %>
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
                                <a href="/farmStory/adminMain/adminProList.do" class="list_it">상품목록</a>
                            </li>
                            <li>
                                <span>L</span>
                                <a href="/farmStory/adminPro/register.do">상품등록</a>
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
                                <a href="/farmStory/memberList/list.do">회원목록</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </aside>

            <section>
                <nav>상품목록</nav>
                <article class="art1">
                    <table>
                            <tr class="table_hd">
                                <td class="img"><input type="checkbox"></td>
                                <th>사진</th>
                                <th>상품번호</th>
                                <th>상품명</th>
                                <th>구분</th>
                                <th>가격</th>
                                <th>재고</th>
                                <th>등록일</th>
                            </tr>
                            <tr class="table_bd1">
                                <td class="img"><input type="checkbox"></td>
                                <td><img src="/farmStory/images/market_item1.jpg" ></td>
                                <td>1011</td>
                                <td>사과 500g</td>
                                <td>과일</td>
                                <td>4,000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                    </table>
                    
                    <div class="main_a">
                        <a href="#">선택삭제</a>
                        <a href="/farmStory/adminPro/register.do"><p>상품등록</p></a>
                    </div>
                    <div class="main_a2"><a href="#">< [1] [2] [3] [4] [5] ></a></div>
                </article>
            </section>
        </main>
        <%@ include file="../adminMain/_footer.jsp" %>
    </div>
</body>
</html>