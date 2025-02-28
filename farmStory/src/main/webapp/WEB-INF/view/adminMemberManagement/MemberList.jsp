<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원목록</title>
    <link rel="stylesheet" href="/css/adminMemberManagement/MemberList.css">
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
                <nav>회원목록</nav>
                <article class="art1">
                    <table>
                            <tr class="table_hd">
                                <td class="check"><input type="checkbox"></td>
                                <th>아이디</th>
                                <th>이름</th>
                                <th>별명</th>
                                <th>이메일</th>
                                <th>휴대폰</th>
                                <th>등급</th>
                                <th>가입일</th>
                                <th>확인</th>
                            </tr>
                            <tr class="table_bd1">
                                <td class="check"><input type="checkbox"></td>
                                <td>a101</td>
                                <td>김유신</td>
                                <td>유신101</td>
                                <td>yusin101@naver.com</td>
                                <td>010-1234-1001</td>
                                <td><option value="lank" class="op">2</option></td>
                                <td>2023-01-01 13:06:14</td>
                                <td>[상세확인]</td>
                            </tr>
                            <tr class="table_bd1">
                                <td class="check"><input type="checkbox"></td>
                                <td>a102</td>
                                <td>김춘추</td>
                                <td>춘추102</td>
                                <td>chunchu102@naver.com</td>
                                <td>010-1234-1002</td>
                                <td><option value="lank" class="op">2</option></td>
                                <td>2023-01-02 13:06:14</td>
                                <td>[상세확인]</td>
                            </tr>
                            <tr class="table_bd1">
                                <td class="check"><input type="checkbox"></td>
                                <td>a103</td>
                                <td>장보고</td>
                                <td>보고103</td>
                                <td>bogo103@naver.com</td>
                                <td>010-1234-1003</td>
                                <td><option value="lank" class="op">2</option></td>
                                <td>2023-01-03 13:06:14</td>
                                <td>[상세확인]</td>
                            </tr>
                    </table>
                    
                    <div class="main_a"><a href="#">< [1] [2] [3] [4] [5] ></a></div>
                </article>
            </section>
        </main>
        
        <%@ include file="../adminMain/_footer.jsp" %>
        
    </div>
</body>
</html>