<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review Content</title>
</head>
<style type="text/css">
.table{margin-top:50px; width:603px; background:#ff3232; text-align: center; height:35px; font-size:18px; color:white; border:1px solid #666666;}
.title{width:200px; background:#ff3232; text-align: center; height:35px; font-size:18px; color:white; border:1px solid #999999;}
.content{width:200px; background:#ff3232; text-align: center; height:300px; font-size:18px; color:white;border:1px solid #999999;}
.writer{width:200px; background:#ff3232; text-align: center; height:35px; font-size:18px; color:white; border:1px solid #999999;}
.color{width:400px; background:#ffffff; color:#333333; }
.btn{width:150px; height:35px; float:right; overflow:hidden; margin:20px 15px 20px 0; font-size:18px;}
.modifyBtn{width:150px; height:35px; float:right; overflow:hidden; margin:20px 15px 20px 0; font-size:18px;}
.replyBtn{width:150px; height:35px; float:right; overflow:hidden; margin:20px 15px 20px 0; font-size:18px;}
	
</style>

<body>


	<div style="margin:0 auto; width:605px;">
	<!-- 다른페이지로 이동하는게 아니면  form태그에 액션 주소 필요없다~ -->
		<form name="target" id="target" method="post">
		<h2 style="text-align: center; font-size: 30px;">글 상세보기</h2>
		<c:forEach items="${contentList}" var="contentList">
		<table cellpadding="0" cellspacing="0" class="table">
			<tr>
				<td class="title">번호</td>
				<td>
					<input type="text" name="updateNum" class="title color" value="${contentList.rno}"></input>
				</td>
			</tr>
			<tr>
				<td class="title">제목</td>
				<td>
					<input type="text" name = "title" class="title color" value="${contentList.title}"></input>
				</td>
			</tr>
			<tr>
				<td class="content">내용</td>
				<td>
					<textarea rows="" cols="" name="content" class="content color">${contentList.content}</textarea>
				</td>
			</tr>
			<tr>
				<td class="writer">글쓴이</td>
				<td>
					<input type="text" readonly class="writer color" value="${contentList.writer}"></input>
				</td>
			</tr>
			<tr>
				<td class="writer">등록날짜</td>
				<td>
					<input type="text" readonly class="writer color" value="${contentList.regdate}"></input>
				</td>
			</tr>
			<tr>
				<td class="writer">수정날짜</td>
				<td>
					<input type="text" readonly class="writer color" value="${contentList.updatedate}"></input>
				</td>
			</tr>
		</table>
		 </c:forEach>
		<input type="submit" value="수정"  class="modifyBtn">
	    </form>
	    
<%-- 	  
		<form id="reply" method="post">
		<c:forEach items="${contentList}" var="contentList">
			<table style="margin-top: 100px;" cellpadding="0" cellspacing="0"
				class="table">
				<tr>
					<td class="title">제목</td>
					<td><input type="text" name="title" id="title" class="title color" value="└RE:"></input>
					</td>
				</tr>
				<tr>
					<td class="content">내용</td>
					<td>
						<textarea rows="" cols="" name="content" id="content" class="content color">
						parent_no ${contentList.bno}
						gno ${contentList.gno}
						gord ${contentList.gord + 1}
						</textarea>
					</td>
				</tr>
				<tr>
					<td class="writer">글쓴이</td>
					<td><input type="text" name="writer" class="writer color"></input>
					</td>
				</tr>
			</table>
			<input type="hidden" name="parent_no" value="${contentList.bno}">
			<input type="hidden" name="gno" value="${contentList.gno}">
			<input type="hidden" name="gord" value="${contentList.gord + 1}">
			<input type="submit" value="답글등록" class="replyBtn">
		</c:forEach>
		</form> --%>
		
		<div style="height:100px"></div>
 </div>






 





<script
    src="https://code.jquery.com/jquery-2.2.4.min.js"
    integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
    crossorigin="anonymous">
</script>

<script>

var $replyBtn = $(".replyBtn");


$( document ).ready(function() {
	

       
       
});
 
</script>

</body>
</html>