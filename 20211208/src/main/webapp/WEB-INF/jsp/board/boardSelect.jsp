<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div><h1>게시글 상세 조회</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="100">작성자</th>
				<th width="150" align="center">${board.writer }</th>
				<th width="100">작성일자</th>
				<th width="150">${board.wdate }</th>
				<th width="100">조회수</th>
				<th width="50">${board.hit }</th>
			</tr>
			<tr>
				<th width="100">제목</th>
				<th colspan="5">${board.title }</th>
			</tr>
			<tr>
				<th width="100">내용</th>
				<td colspan="5">
					<textarea rows="10" cols="90">${board.subject }</textarea>
				</td>
			</tr>
		</table>
	</div><br>
	<div>
		<button type="button" onclick="location.href=''">글수정</button>&nbsp;&nbsp;
		<button type="button" onclick="hisory.go(-1)">목록보기</button>
	</div>
</div>
</body>
</html>