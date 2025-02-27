<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/farmStory/css/user/signUp.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/farmStory/js/daumPostcode.js"></script>
	<script src="/farmStory/js/validation.js"></script>
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
                        <a href="#">나의정보 |</a>
                        <a href="#">로그아웃 |</a>
                        <a href="#">관리자 |</a>
                        <a href="#">고객센터</a>
                    </div>
                </div>
            </div>            
            <div>
                <article>
                    <a href="#" class="logo">
                        <img src="/farmStory/images/logo.png" alt="팜스토리 로고">
                    </a>
                    <a href="#" class="freeShipping">
                        <img src="/farmStory/images/head_txt_img.png" alt="팜스토리 로고">
                    </a>
                </article>
            </div>

            <div>
                <ul>
                    <li>
                        <a href="#">
                            <img src="/farmStory/images/head_menu_line.png" alt="라인">
                            <img src="/farmStory/images/head_menu1.png" alt="팜스토리소개">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/farmStory/images/head_menu_badge.png" alt="30%" class="head_badge">
                            <img src="/farmStory/images/head_menu_line.png" alt="라인">
                            <img src="/farmStory/images/head_menu2.png" alt="장보기">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/farmStory/images/head_menu_line.png" alt="라인">
                            <img src="/farmStory/images/head_menu3.png" alt="농작물이야기">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/farmStory/images/head_menu_line.png" alt="라인">
                            <img src="/farmStory/images/head_menu4.png" alt="이벤트">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="/farmStory/images/head_menu_line.png" alt="라인">
                            <img src="/farmStory/images/head_menu5.png" alt="커뮤니티">
                        </a>
                    </li>
                </ul>
            </div>
        </header>
        
		<main id="user">
		    <section class="register">
		
		        <form action="/farmStory/view/user/register.do" name="formRegister" method="post">
		            <h2 class="tit">사이트 이용정보 입력</h2>
		            <table border="1">                        
		                <tr>
		                    <td>아이디</td>
		                    <td>
		                        <input type="text" name="uid" placeholder="아이디 입력"/>
		                        <button type="button" id="btnCheckUid"><img src="/farmStory/images/user/chk_id.gif" alt="중복확인"/></button>
		                        <span class="uidResult"></span>
		                    </td>
		                </tr>
		                <tr>
		                    <td>비밀번호</td>
		                    <td>
			                    <input type="password" name="pass1" placeholder="비밀번호 입력"/>
		    	            	<span class="passResult"></span>
		                    </td>
		                </tr>
		                <tr>
		                    <td>비밀번호 확인</td>
		                    <td><input type="password" name="pass2" placeholder="비밀번호 입력 확인"/></td>
		                </tr>
		            </table>
		
		            <h2 class="tit">개인정보 입력</h2>
		            <table border="1">                        
		                <tr>
		                    <td>이름</td>
		                    <td>
		                        <input type="text" name="name" placeholder="이름 입력"/>                        
		                    	<span class="nameResult"></span>
		                    </td>
		                </tr>
		                <tr>
		                    <td>별명</td>
		                    <td>
		                        <p class="nickInfo">공백없는 한글, 영문, 숫자 입력</p>
		                        <input type="text" name="nick" placeholder="별명 입력" maxlength="10"/>
		                        <button type="button" id="btnCheckNick"><img src="/farmStory/images/user/chk_id.gif" alt="중복확인"/></button>
		                        <span class="nickResult"></span>
		                    </td>
		                </tr>
		                <tr>
		                    <td>이메일</td>
		                    <td>
		                        <input type="email" name="email" placeholder="이메일 입력"/>
		                        <button type="button" id="btnSendEmail"><img src="/farmStory/images/user/chk_auth.gif" alt="인증번호 받기"/></button>
		                        <span class="emailResult"></span>
		                        <div class="auth">
		                            <input type="text" name="auth" placeholder="인증번호 입력"/>
		                            <button type="button" id="btnAuthEmail"><img src="/farmStory/images/user/chk_confirm.gif" alt="확인"/></button>
		                        </div>
		                    </td>
		                </tr>
		                <tr>
		                    <td>휴대폰</td>
		                    <td>
		                    	<input type="text" name="hp" placeholder="휴대폰 입력"/>
		                    	<span class="hpResult"></span>
		                    </td>
		                </tr>
		                <tr>
		                    <td>주소</td>
		                    <td>
		                        <input type="text" name="zip" id="postcode" placeholder="우편번호" readonly/>
		                        <button type="button" onclick="DaumPostcode()"><img src="/farmStory/images/user/chk_post.gif" alt="우편번호찾기"/></button>
		                        <input type="text" name="addr1" id="address" placeholder="주소 검색" readonly/>
		                        <input type="text" name="addr2" id="detailAddress" placeholder="상세주소 입력"/>
		                    </td>
		                </tr>
		            </table>
		
		            <div>
		                <a href="/farmStory/view/user/login.do" class="btn btnCancel">취소</a>
		                <input type="submit" value="회원가입" class="btn btnRegister"/>
		            </div>
		
		        </form>
		
		    </section>
		</main>
        
        <footer>
            <div class="footer_container">
                <div class="footer_img">
                    <img src="/farmStory/images/footer_logo.png" alt="팜스토리 로고">
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