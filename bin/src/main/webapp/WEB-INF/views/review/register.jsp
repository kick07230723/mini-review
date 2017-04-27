<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review register</title>
</head>
<style type="text/css">

.table{margin-top:50px; width:603px; background:#ff3232; text-align: center; height:35px; font-size:18px; color:white; border:1px solid #666666;}
.title{width:200px; background:#ff3232; text-align: center; height:35px; font-size:18px; color:white; border:1px solid #999999;}
.content{width:200px; background:#ff3232; text-align: center; height:300px; font-size:18px; color:white;border:1px solid #999999;}
.writer{width:200px; background:#ff3232; text-align: center; height:35px; font-size:18px; color:white; border:1px solid #999999;}
.color{width:400px; background:#ffffff; color:#333333;}
.btn{width:150px; height:35px; float:right; overflow:hidden; margin:20px 15px 20px 0; font-size:18px;}

</style>

<body>

<form id="target" method="post">
	<div style="margin:0 auto; width:605px;">
		
		<h2 style="text-align: center; font-size: 30px;">글 등록</h2>
		<table cellpadding="0" cellspacing="0" class="table">
			<tr>
				<td class="title">제목</td>
				<td>
					<input type="text" name = "title" class="title color"></input>
				</td>
			</tr>
			<tr>
				<td class="content">내용</td>
				<td>
					<textarea rows="" cols="" name = "content" class="content color"></textarea>
				</td>
			</tr>
			<tr>
				<td class="writer">글쓴이</td>
				<td>
					<input type="text" name ="writer" class="writer color"></input>
				</td>
			</tr>
		</table>
		<input type="submit" value="등록"  class="btn">
		

	</div>

</form>

<script
    src="https://code.jquery.com/jquery-2.2.4.min.js"
    integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
    crossorigin="anonymous">
</script>

<script>

    var $title = $("input[name='title']");
    var $content = $("textarea[name='content']");
    var $writer = $("input[name='writer']");
    var $btn = $(".btn");

    $( document ).ready(function() {

    	history.pushState(null, null, "/review/register");
    	
           $("#target").submit(function(e){

               if
	           (    $title.val()!='' &&  $title.val()!=null
	             && $content.val()!='' &&  $content.val()!=null
	             && $writer.val()!='' ||  $writer.val()!=null )
	               {
	                   alert("글이 성공적으로 등록돼었습니다!");
	                   history.pushState(null, null, "/review/register");
	                   return true;
	               }
            })

           $btn.on("click",function(e){

               if($title.val()=='' ||  $title.val()==null){
                   alert("제목을 입력해 주세요!");
                   return false;
               }else if($content.val()=='' ||  $content.val()==null){
                   alert("내용을 입력해 주세요!");
                   return false;
               }else if($writer.val()=='' ||  $writer.val()==null){
                   alert("이름을 입력해 주세요!");
                   return false;
               }

           });
           

    });

</script>



</body>
</html>