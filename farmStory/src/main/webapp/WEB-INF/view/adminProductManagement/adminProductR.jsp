<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminProductR</title>
    <link rel="stylesheet" href="/css/adminProductManagement/adminProductR.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
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
            <nav class="heading2">상품등록</nav>
            <article>
                <form action="#">
                    <table>
                        <tr class="table_tr">
                            <td>상품명</td>
                            <td><input type="text" name="prod_name"></td>
                        </tr>
                        <tr class="table_tr">
                            <td>종류</td>
                            <td><option value="type" class="op">종류</option></td>
                        </tr>
                        <tr class="table_tr">
                            <td>가격</td>
                            <td><input type="text" name="prod_price"></td>
                        </tr>
                        <tr class="table_tr">
                            <td>포인트</td>
                            <td><input type="number" name="prod_point" placeholder="100"><span class="p_point">포인트는 가격의 1%</span></td>
                        </tr>
                        <tr class="table_tr">
                            <td>할인</td>
                            <td><option value="sale" class="op">5%</option></td>
                        </tr>
                        <tr class="table_tr">
                            <td><p>배송비</p></td>
                            <td class="radio">
                                <label><input type="radio">2,000원</label>
                                <label><input type="radio">3,000원</label>
                                <label><input type="radio">5,000원</label>
                                <label><input type="radio">무료</label>
                            </td>    

                        </tr>
                        <tr class="table_tr">
                            <td class="td">재고</td>
                            <td><input type="text" name="prod_stock"></td>
                        </tr>

                        <tr class="table_tr2">
                            <td>상품이미지</td>
                            <td class="td_img">
                                <p>상품목록 이미지(약 120 x 120)</p>
                                <input type="file"> <br>
                                <p>기본정보 이미지(약 240 x 240)</p>
                                <input type="file" > <br>
                                <p>상품목록 이미지(약 750 x Auto)</p>
                                <input type="file" >
                            </td>
                        </tr>
                        <tr class="table_tr3">
                            <td>기타</td>
                            <td><input type="text" name="prod_name" class="footerinput"></td>
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

        <footer>
            <p>Copyright(C)Farmstory All rights reserved. FARMSTORY ADMINISTRATOR Version 1.0.1</p>
        </footer>

    </div>
</body>
</html>