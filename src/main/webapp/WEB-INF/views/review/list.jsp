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
    background: #ff3232 ;
    text-align: center;
    height: 35px;
    font-size: 18px;
    color: white;
    border: 1px solid #666666 ;
}

.bno {
    width: 100px;
    background: #ff3232 ;
    text-align: center;
    height: 35px;
    font-size: 18px;
    color: white;
    border: 1px solid #999999 ;
}

.title {
    width: 200px;
    background: #ff3232 ;
    text-align: center;
    height: 35px;
    font-size: 18px;
    color: white;
    border: 1px solid #999999 ;
}

.content {
    width: 400px;
    background: #ff3232 ;
    text-align: center;
    height: 35px;
    font-size: 18px;
    color: white;
    border: 1px solid #999999 ;
}

.writer {
    width: 100px;
    background: #ff3232 ;
    text-align: center;
    height: 35px;
    font-size: 18px;
    color: white;
    border: 1px solid #999999 ;
}

.color {
    background: #ffffff ;
    color: #333333 ;
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
    background-color: #666666 ;
    width: 65px;
    height: 30px;
}

.pagination{
	float:left;
	overflow:hidden;
	width:550px;

}

.pagination ul{

	margin:0;
	padding:0;
}

.pagination ul li {
    padding-top: 3px;
    text-align: center;
    list-style: none;
    padding: 0px;
    width: 40px;
    height: 30px;
    float: left;
    overflow: hidden;
    margin-left: 3px;
    border:1px solid #333333 ;
}

.pagination ul li a{
    color: #333333 ;
    text-decoration: none;
}

.sview {
    background: #ffffff ;
    color: #333333 ;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    padding: 0 8px;
    border: 1px solid #999999 ;
}

.active{
    text-decoration: none;
    background: #ff0000 ;
}

.active a{
    color: white;
    text-decoration: none;
}

.search{
	border:1px solid #333333;
	width:340px;
	height:33px;
	float: right;
	overflow:hidden;
	
}

.searchOption{
	float:right;
	overflow:hidden;
}

.searchtext{
	width: 140px;
	height:33px;
	float:right;
	overflow:hidden;
	margin-left:5px;
}
.searchBtn {
    width: 40px;
    height: 32px;
    float: right;
    overflow: hidden;
    font-size: 18px;
    float: right;
	overflow:hidden;
	margin-left:5px;
}

.select{
height:33px;
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
			<input id="hpage" type="hidden" name='page' value="${pageMaker.current}">
			<input id="hrno" type="hidden" name='rno'>
			
			<div class="search">
				<input type="button" class="searchBtn" value="검색">
				<input type="text"   class="searchtext" value="${cri.keyword}" name="keyword"></input>
				<div class = searchOption>
					<select class="select" name="type">
						<option value='ti'${cri.type eq 'ti'?"selected":""}>제목</option>
						<option value='co'${cri.type eq 'co'?"selected":""}>내용</option>
						<option value='wr'${cri.type eq 'wr'?"selected":""}>글쓴이</option>
						<option value='tico'${cri.type eq 'tico'?"selected":""}>제목 + 내용</option>
						<option value='tiwr'${cri.type eq 'tiwr'?"selected":""}>제목 + 글쓴이</option>
					</select>
				</div>

			</div>
		</form>
		
		<!-- 페이지 처리  ////////////////////////////// -->
		<div class="pagination">
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
		</div>
	
		<!-- 검색 처리  ////////////////////////////// -->

	
	
		
		
		

		<!-- /.box-footer-->
	</div>


<!-- 글 등록  ////////////////////////////// -->
		<input type="button" value="글쓰기" class="btn" onclick="location.href='register'">


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
			
			
			$(".searchBtn").on("click", function(e) {
				e.preventDefault();
				
				console.log($(".searchtext").val());
				console.log($(".select").val());
				
				if($(".searchtext").val()==""||null){
					
					alert("검색어를 입력하세요!");
				}

				$("#hpage").val("1");
				$("#f1").submit();
			});
			
			

		});
		
		
		
	</script>

</body>
</html>