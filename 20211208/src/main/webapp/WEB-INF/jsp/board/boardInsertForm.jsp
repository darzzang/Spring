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
	<div><h1>게시글 작성</h1></div>
	<div>
		<form id="frm" action="boardInsert.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="100">작성자</th>
						<th width="150">
							<input type="email" id="writer" name="writer" placeholder="email 입력...." required="required">
						</th>
						<th width="100">작성일자</th>
						<th width="150">
							<input type="date" id="wdate" name="wdate" required="required">
						</th>
					</tr>
					<tr>
						<th width="100">제목</th>
						<th colspan="3">
							<input type="text" id="title" name="title" 
								size="30" placeholder="제목을 입력하세요..." required="required">
						</th>
					</tr>
					<tr>
						<th width="100">내용</th>
						<td colspan="3">
							<textarea rows="10" cols="90" id="subject" name="subject">${board.subject }</textarea>
						</td>
					</tr>
				</table>
			</div><br>
			<div>
				<button type="submit">등록</button>&nbsp;&nbsp;
				<button type="button" onclick="hisory.go(-1)">목록보기</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>