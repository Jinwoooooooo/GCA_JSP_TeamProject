<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글수정</title>
    <link rel="stylesheet" href="/farmStory/css/community/qna.css">
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
                    <img src="/farmStory/images/sub_top_tit5.png" alt="커뮤니티">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/farmStory/images/sub_aside_cate5_tit.png" alt="커뮤니티">
                        </div>
                        <div>
                            <img src="/farmStory/images/sub_cate5_lnb1.png" alt="공지사항">
                            <img src="/farmStory/images/sub_cate5_lnb2.png" alt="오늘의식단">
                            <img src="/farmStory/images/sub_cate5_lnb3.png" alt="나도요리사">
                            <img src="/farmStory/images/sub_cate5_lnb4_ov.png" alt="1:1고객문의">
                            <img src="/farmStory/images/sub_cate5_lnb5.png" alt="자주묻는질문">
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate5_tit4.png" alt="1:1고객문의">
                            </nav>
                            <div>
                                <p>HOME > 커뮤니티 > <span style="color: #91ba23; font-weight: 700;">1:1고객문의</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <h1>글수정</h1>
                            <form action="#">
                                <table>
                                    <tr>
                                        <td>제목</td>
                                        <td>
                                            <input type="text" name="title" placeholder="제목을 입력하세요." class="title" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>내용</td>
                                        <td>
                                            <textarea name="content" maxlength="1000" class="content" required></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>파일</td>
                                        <td>
                                            <p>최대 2개 파일 첨부 가능, 각 파일당 최대 10MB까지 가능</p>
                                            <input type="file" name="file1" class="file1 file">
                                            <input type="file" name="file2" class="file2 file">
                                        </td>
                                    </tr>
                                </table>
                                <div class="btnContainer">
                                    <button class="btn btnCancel">취소</button>
                                    <button class="btn btnSubmit" type="submit">수정완료</button>
                                </div>
                            </form>
                        </div>
                    </article>
                </section>
            </div> 
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