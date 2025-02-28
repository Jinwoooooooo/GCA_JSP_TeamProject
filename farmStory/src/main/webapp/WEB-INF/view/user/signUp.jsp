<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user::sginUp</title>
    <link rel="stylesheet" href="/farmStory/css/user/signUp.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<%@ include file="/../../header.jsp" %>
</head>
<body>
    <div id="wrapper">
        <main id="user">
            <section class="register">
                <form action="#">
                    <h2 class="tit">사이트 이용정보 입력</h2>
                    <table>
                        <tbody>
                            <tr>
                                <td>아이디</td>
                                <td><input type="text" name="uid" placeholder="아이디 입력"><button><img src="/farmStory/images/user/chk_id.gif" alt="중복 확인"></button></td>
                            </tr>
                            <tr>
                                <td>비밀번호</td>
                                <td><input type="password" name="pass1" placeholder="비밀번호 입력"></td>
                            </tr>
                            <tr>
                                <td>비밀번호 확인</td>
                                <td><input type="password" name="pass2" placeholder="비밀번호 입력 확인"></td>
                            </tr>
                        </tbody>
                    </table>
                    <h2 class="tit">개인정보 입력</h2>
                    <table>
                        <tbody>
                            <tr>
                                <td>이름</td>
                                <td><input type="text" name="name" placeholder="이름 입력"></td>
                            </tr>
                            <tr>
                                <td>별명</td>
                                <td>
                                <p class="nickInfo">공백없는 한글, 영문, 숫자 입력</p>    
                                <input type="text" name="nick" placeholder="별명 입력"><button><img src="/farmStory/images/user/chk_id.gif" alt="중복 확인"></button>
                                </td>
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td>         
                                <input type="email" name="emali" placeholder="이메일 입력"><button><img src="/farmStory/images/user/chk_auth.gif" alt="인증번호 받기"></button>
                                </td>
                            </tr>
                            <tr>
                                <td>휴대폰</td>
                                <td>
                                    <input type="text" name="phone" placeholder="휴대폰 입력">
                                </td>
                            </tr>
                            <tr>
                                <td>주소</td>
                                <td>
                                    <input type="text" name="post" placeholder="우편번호"><button><img src="/farmStory/images/user/chk_post.gif" alt="우편번호"></button><br>
                                    <input type="text" name="addr1" placeholder="주소 검색"><br>
                                    <input type="text" name="addr2" placeholder="상세주소 입력">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <div>
                    <a href="#" class="btn btnCancel">취소</a>
                    <input type="submit" value="회원가입" class="btn btnRegister">
                </div>             
            </section>
        </main>
        
        <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>