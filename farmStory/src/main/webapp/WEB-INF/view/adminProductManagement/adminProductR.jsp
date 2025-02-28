<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품등록</title>
    <link rel="stylesheet" href="/farmStory/css/adminProductManagement/adminProductR.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
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
            <nav class="heading2">상품등록</nav>
            <article>
                <form action="/farmStory/adminPro/register.do" method="post">
                    <table>
                     <tr class="table_tr">
                            <td>상품코드</td>
                            <td><input type="text" name="pid"></td>
                        </tr>
                        <tr class="table_tr">
                            <td>상품명</td>
                            <td><input type="text" name="pName"></td>
                        </tr>
                        <tr class="table_tr">
                            <td>종류</td>
                            <td>
                            <select class="op" name="types">
                            	<option value="type1">과일</option>
                            	<option value="type2">야채</option>
                            	<option value="type3">곡류</option>
                            </select>
                            </td>
                        </tr>
                        <tr class="table_tr">
                            <td>가격</td>
                            <td><input type="text" name="price"></td>
                        </tr>
                        <tr class="table_tr">
                            <td>포인트</td>
                            <td><input type="number" name="point" placeholder="100"><span class="p_point">포인트는 가격의 1%</span></td>
                        </tr>
                        <tr class="table_tr">
                            <td>할인</td>
                            <td>
                            <select class="op" name="discount">
                            	<option value="1">10%</option>
                            	<option value="2">20%</option>
                            	<option value="3">30%</option>
                            </select>
                            </td>
                        </tr>
                        <tr class="table_tr">
                            <td><p>배송비</p></td>
                            <td class="radio">
                                <label><input type="radio" name="charge" value="2">2,000원</label>
                                <label><input type="radio" name="charge" value="3">3,000원</label>
                                <label><input type="radio" name="charge" value="4">5,000원</label>
                                <label><input type="radio" name="charge" value="0">무료</label>
                            </td>    

                        </tr>
                        <tr class="table_tr">
                            <td class="td">재고</td>
                            <td><input type="text" name="stock"></td>
                        </tr>

                        <tr class="table_tr2">
                            <td>상품이미지</td>
                            <td class="td_img">
                                <p>상품목록 이미지(약 120 x 120)</p>
                                <input type="file" name="pImage"> <br>
                                <p>기본정보 이미지(약 240 x 240)</p>
                                <input type="file" name="pImage"> <br>
                                <p>상품목록 이미지(약 750 x Auto)</p>
                                <input type="file" name="pImage">
                            </td>
                        </tr>
                        <tr class="table_tr3">
                            <td>기타</td>
                            <td><input type="text" name="other" class="footerinput"></td>
                        </tr>
                    </table>
                    <div class="form-ft">
                        <a href="#">취소</a>
                        <input type="submit" value="상품등록" class="submit">
                    </div>    
                </form>
            </article>
        </section>

        </main>
		<%@ include file="../adminMain/_footer.jsp" %>
    </div>
</body>
</html>