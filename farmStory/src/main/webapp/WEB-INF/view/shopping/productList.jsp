<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
</head>
<body>
    <div id="wrapper">
		<%@ include file="/../../header.jsp" %>
        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/farmStory/images/sub_top_tit2.png" alt="마켓">
                </div>
                <section>
                     <%@include file="./_side.jsp"%>
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
                           <%@ include file="./_subPage.jsp"%>
                            <table>
                                <tr>
                                    <th>이미지</th>
                                    <th>종류</th>
                                    <th>상품명</th>
                                    <th>할인</th>
                                    <th>포인트</th>
                                    <th>판매가격</th>
                                </tr>
                              <c:forEach var="dto" items="${dtos}">
	                            <tr class="table_bd1">      
	                                <td>
		                                <a href="/farmStory/shopping/productDetail.do?pid={}">
		                                	<img src="/farmStory/images/market_item1.jpg" class="item_img">
		                                </a>
	                                </td>   
	                                
	                                <td>${dto.types}</td>
	                                <td>${dto.pName}</td>
	                                <td>${dto.discount}%</td>
	                                <td>${dto.point}</td> 
	                                <td>
	                                <del>${dto.price}</del>
	                                <strong>${dto.price-(dto.price/100)*10}</strong>
	                                </td>
	                                
                            	</tr>
                            </c:forEach>
                              
                               
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