<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>농작물이야기</title>
    <link rel="stylesheet" href="/farmStory/css/cropStory/viewText.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<script>
	document.addEventListener('DOMContentLoaded', function(){
		console.log('DOMContentLoaded...');

		const commentList = document.getElementsByClassName('commentList')[0];
		const formComment = document.getElementById('commentForm'); // form id로 form 가져오기

		// 댓글 등록
		formComment.onsubmit = function(e){
			e.preventDefault();

			// 입력한 데이터 가져오기
			const postNo = formComment.postNo?.value;
			const nick = formComment.nick?.value;
			const content = formComment.comment?.value; // textarea name으로 content 가져오기

			// 폼 데이터 생성
			const formData = new FormData();
			formData.append('postNo', postNo);
			formData.append('nick', nick);
			formData.append('content', content);
			console.log(formData);

			// 서버 전송
			fetch('/farmStory/comment/commentWrite.do', {
				method: 'POST',
				body: formData
			})
			.then(response => response.json())
			.then(data => {
				console.log(data);

				// 동적 태그 생성
				if(data != null){

					// 댓글창 비우기
					const textarea = document.querySelector('textarea[name="comment"]');
					if (textarea) {
						textarea.value = "";
					}

					const article = `<div class="commentContainer">
								        <p class="date_author">${data.wdate} ${data.nick}</p>
								        <p class="comment">${data.content}</p>
								        <div class="remove_edit">
								            <a href="#">삭제</a>
								            <a href="#">수정</a>
								        </div>
								    </div>`;

					commentList.insertAdjacentHTML('beforeend', article);
				}else{
					alert('댓글 등록 실패 했습니다.');
				}

			})
			.catch(err => {
				console.log(err);
			});
		}


	});


</script>
    

</head>
<body>
    <div id="wrapper">
	<%@ include file="/../../../header.jsp" %>
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
                            <a href="/farmStory/cropStory/cropStoryList.do">
                                <img src="/farmStory/images/sub_cate3_lnb1_ov.png" alt="농작물이야기">
                            </a>
                            <a href="/farmStory/gardening/gardeningList.do">
                                <img src="/farmStory/images/sub_cate3_lnb2.png" alt="텃밭가꾸기">
                            </a>
                            <a href="/farmStory/farmingSchool/farmingSchoolList.do">
                                <img src="/farmStory/images/sub_cate3_lnb3.png" alt="귀농학교">
                            </a>
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate3_tit1.png" alt="농작물이야기">
                            </nav>
                            <div>
                                <p>HOME > 농작물이야기 > <span style="color: #91ba23; font-weight: 700;">농작물이야기</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <h1>글보기</h1>
                            <form action="/farmStory/CropStory/CropStoryView.do">
                                <table>
                                    <tr>
                                        <td>제목</td>
                                        <td>
                                            <input type="text" name="title" value="${articledto.title}" class="title" readonly>
                                        </td>
                                    </tr>
                                    <c:if test="${articledto.file > 0}">
	                                    <tr>
	                                        <td>파일</td>
	                                        <td>
	                                        	<c:forEach var="file" items="${articledto.files}">
	                                        		<a href="/farmStory/file/download.do?fno=${file.fno}">${file.oName} </a><span>${file.download}회 다운로드</span><br>
	                                        	</c:forEach>
	                                        	
	                                        </td>
	                                    </tr>
	                                </c:if>
                                    <tr>
                                        <td>내용</td>
                                        <td>
                                            <textarea name="content" maxlength="1000" class="content" readonly>${articledto.content}</textarea>
                                        </td>
                                    </tr>
                                </table>
                               </form>
                                <div class="btnContainer1">
                                    <button class="btn2" onclick="location.href='/farmStory/cropStory/cropStoryRemove.do?postNo=${articledto.postNo}'">삭제</button>
                                    <button class="btn2" onclick="location.href='/farmStory/cropStory/cropStoryEdit.do?postNo=${articledto.postNo}'">수정</button>
                                    <button class="btn2" onclick="location.href='/farmStory/cropStory/cropStoryList.do'">목록</button>
                                </div>
                            
                                <section class="commentList">
                                	<c:if test="${comment.cno > 0}">
                                    	<h3 class="comment_sub_title">댓글목록</h3>
                                    </c:if>
                                    <c:forEach var="comment" items="${comments}">
	                                    <div class="commentContainer">
	                                        <p class="date_author">${comment.wdate} ${comment.nick}</p>
	                                        <p class="comment">${comment.content}</p>
	                                        <div class="remove_edit">
	                                        	<input type="hidden" name="postNo" value="${articledto.postNo}">
	                                            <a href="/farmStory/comment/remove.do?cno=${comment.cno}&postNo=${comment.postNo}">삭제</a>
	                                            <a href="#">수정</a>
	                                        </div>
	                                    </div>
                                    </c:forEach>
                                </section>
                                <section class="writeComment">
                                    <h3 class="comment_sub_title">댓글쓰기</h3>
                                    <form action="/farmStory/comment/commentWrite.do" method="post" id="commentForm">
                                    	<input type=hidden name="postNo" value="${articledto.postNo}">
                                    	<input type="hidden" name="nick" value="${articledto.nick}">
                                        <textarea name="comment" maxlength="100"></textarea>
                                        <div class="btnContainer2">
                                            <button class="btn btnCancel" onclick="location.href='/farmStory/cropStory/cropStoryList.do'">취소</button>                                            
                                            <input type="submit" value="작성완료" class="btn btnComplete"/>
                                        </div>
                                    </form>
                                </section>
                        </div>
                    </article>
                </section>
            </div> 
        </main>

        <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>