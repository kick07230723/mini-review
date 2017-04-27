<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review list</title>
</head>

<style type="text/css">
.table {
	table-layout: fixed;
	text-overflow: ellipsis;
	margin-top: 50px;
	width: 800px;
	background: #ff3232;
	text-align: center;
	height: 35px;
	font-size: 18px;
	color: white;
	border: 1px solid #666666;
}

.bno {
	width: 100px;
	background: #ff3232;
	text-align: center;
	height: 35px;
	font-size: 18px;
	color: white;
	border: 1px solid #999999;
}

.title {
	width: 200px;
	background: #ff3232;
	text-align: center;
	height: 35px;
	font-size: 18px;
	color: white;
	border: 1px solid #999999;
}

.content {
	width: 400px;
	background: #ff3232;
	text-align: center;
	height: 35px;
	font-size: 18px;
	color: white;
	border: 1px solid #999999;
}

.writer {
	width: 100px;
	background: #ff3232;
	text-align: center;
	height: 35px;
	font-size: 18px;
	color: white;
	border: 1px solid #999999;
}

.color {
	background: #ffffff;
	color: #333333;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	padding: 0 8px
}

.btn {
	width: 150px;
	height: 35px;
	float: right;
	overflow: hidden;
	margin: 20px 15px 20px 0;
	font-size: 18px;
}

.delete {
	color: white;
	border: 0;
	font-size: 15px;
	background-color: #666666;
	width: 65px;
	height: 30px;
}

.pagination ul li {
	padding-top: 5px;
	text-align: center;
	list-style: none;
	padding-left: 0px;
	width: 40px;
	height: 40px;
	color: white;
	background: gray;
	float: left;
	overflow: hidden;
	margin-left: 3px;
}

.sview {
	background: #ffffff;
	color: #333333;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	padding: 0 8px;
	border: 1px solid #999999;
}

.active {
	text-decoration: none;
	padding-top: 5px;
	text-align: center;
	list-style: none;
	padding-left: 0px;
	width: 40px;
	height: 40px;
	color: white;
	background: red;
	float: left;
	overflow: hidden;
	margin-left: 3px;
}
</style>

<body>

	<div style="margin: 0 auto; width: 915px;">
		<h2 style="text-align: center; font-size: 30px;">게시판</h2>
		<table cellpadding="0" cellspacing="0" class="table">


			<tr>
				<td class="bno">글 번호</td>
				<td class="title">제목</a></td>
				<td class="content">내용</td>
				<td class="writer">글쓴이</td>
				<td class="writer">글삭제</td>
			</tr>

			<c:forEach items="${list}" var="list">
				<tr>
					<td class="bno color">${list.rno}</td>
					<td class="sview">
						<!-- a에  class 안주면 작동 안해!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
						<a class="rno" href="${list.rno}">${list.title}</a>
					</td>
					<td class="content color" style="text-overflow: ellipsis;">${list.content}</td>
					<td class="writer color">${list.writer}</td>
					<td class="writer color">
						<form id="f2" action="/review/list" method="post">
							<button class="delete" name="deleteNum" value="${list.rno}">삭제</button>
					</td>
					</form>
				</tr>
			</c:forEach>
		</table>


		<form id="f1" action="/review/list" method="get">
			<input id="hpage" type="hidden" name='page'
				value="${pageMaker.current}"> <input id="hrno" type="hidden"
				name='rno'>

		</form>

		<div class="pagination">
			${pageMaker}
			<ul>
				<c:if test="${pageMaker.prev}">
					<li><a href="${pageMaker.start-1}"> < </a></li>
				</c:if>
				<c:forEach begin="${pageMaker.start}" end="${pageMaker.end}"
					var="idx">
					<li class='${idx==pageMaker.current?"active":""}'><a
						href="${idx}">${idx}</a></li>
				</c:forEach>

				<c:if test="${pageMaker.next}">
					<li><a href="${pageMaker.end+1}"> > </a></li>
				</c:if>
			</ul>
			<input type="button" value="글쓰기" class="btn"
				onclick="location.href='register'">
		</div>

		<!-- /.box-footer-->
	</div>





	<script src="https://code.jquery.com/jquery-2.2.4.min.js"
		integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
		crossorigin="anonymous">
		
	</script>

	<script>
		$(document).ready(function() {

			$(".pagination ul li a").click(function(e) {

				//화면이 안바뀌고 값만 받을거다.
				e.preventDefault();

				var $this = $(this);

				$("#hpage").val($this.attr("href"));

				$("#f1").submit();

			});

			$(".rno").on("click", function(e) {
				e.preventDefault();

				console.log($("#hsno").val($(this).attr("href")));

				var $this = $(this);

				$("#hrno").val($this.attr("href"));
				$("#f1").attr("action", "/review/content").submit();

			});

		});
	</script>

</body>
</html>