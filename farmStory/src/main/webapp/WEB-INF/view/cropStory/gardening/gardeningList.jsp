<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>텃밭가꾸기</title>
    <link rel="stylesheet" href="/farmStory/css/cropStory/gardening.css">
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
                    <img src="/farmStory/images/sub_top_tit3.png" alt="인트로">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/farmStory/images/sub_aside_cate3_tit.png" alt="농작물이야기">
                        </div>
                        <div>
                            <a href="/farmStory/view/cropStory/cropStory/cropStoryList.do">
                                <img src="/farmStory/images/sub_cate3_lnb1.png" alt="농작물이야기">
                            </a>
                            <a href="/farmStory/view/cropStory/gardening/gardeningList.do">
                                <img src="/farmStory/images/sub_cate3_lnb2_ov.png" alt="텃밭가꾸기">
                            </a>
                            <a href="/farmStory/view/cropStory/farmingSchool/farmingSchoolList.do">
                                <img src="/farmStory/images/sub_cate3_lnb3.png" alt="귀농학교">
                            </a>
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate3_tit2.png" alt="텃밭가꾸기">
                            </nav>
                            <div>
                                <p>HOME > 농작물이야기 > <span style="color: #91ba23; font-weight: 700;">텃밭가꾸기</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                                <div class="sub_page_section">
                                    <section>
                                        <p>글목록</p>
                                        <nav>
                                            <form action="#">
                                                <input type="text" placeholder="제목 키워드, 글쓴이 검색">
                                                <input type="submit" value="검색">
                                            </form>
                                        </nav>
                                        <table width="100%" >
                                            <tr id="table_header" height="41px">
                                                <td>번호</td>
                                                <td>제목</td>
                                                <td>글쓴이</td>
                                                <td>날짜</td>
                                                <td>조회</td>
                                            </tr>
                                            <tr id="table_body" height="41px">
                                                <td>1</td>
                                                <td>공지사항 게시물입니다.[3]</td>
                                                <td>길동이</td>
                                                <td>2025-02-18</td>
                                                <td>12</td>
                                            </tr>
                                        </table>
                                        <div>
                                            
                                            <input type="submit" value="이전">
                                            <input type="submit" value="1">
                                            <input type="submit" value="2">
                                            <input type="submit" value="3">
                                            <input type="submit" value="다음">
                                            <input type="submit" value="글쓰기">
                                            
                                        </div>
                                        
                                    </section>
                                    
                                </div>
                            </div>
                    </article>
                </section>
            </div> 
        </main>

        <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>