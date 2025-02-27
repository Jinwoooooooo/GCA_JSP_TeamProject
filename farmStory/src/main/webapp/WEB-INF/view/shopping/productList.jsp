<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>
    <link rel="stylesheet" href="/farmStory/css/shopping/productList.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<%@ include file="/../../header.jsp" %>
</head>
<body>
    <div id="wrapper">
        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/farmStory/images/sub_top_tit2.png" alt="마켓">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/farmStory/images/sub_aside_cate2_tit.png" alt="장보기">
                        </div>
                        <div>
                            <img src="/farmStory/images/sub_cate2_lnb1_ov.png" onclick="location.href='/farmStory/view/shopping/productList.do'" class="aside_link" alt="장보기">
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate2_tit1.png" alt="장보기">
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
                                        <a href="#"><img src="/farmStory/images/market_item1.jpg" alt="사과" class="item_img"></a>
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
                                        <a href="#"><img src="/farmStory/images/market_item2.jpg" alt="배" class="item_img"></a>
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
                                        <a href="#"><img src="/farmStory/images/market_item3.jpg" alt="토마토" class="item_img"></a>
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
                                        <a href="#"><img src="/farmStory/images/market_item6.jpg" alt="현미" class="item_img"></a>
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
                                        <a href="#"><img src="/farmStory/images/market_item7.jpg" alt="샐러드" class="item_img"></a>
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

        <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>