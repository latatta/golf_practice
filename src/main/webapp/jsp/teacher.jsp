<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.TeacherVo"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사조회</title>
<link rel="stylesheet" href="../css/css.css">
</head>
<body>
	<%@ include file="top.jsp"%>
	<%
	Object temp = request.getAttribute("list");
		List<TeacherVo> list = (List<TeacherVo>) temp;
	%>
	<section>
		<h1>강사조회</h1>
		<table>
			<tr>
				<th>강사코드</th>
				<th>강사명</th>
				<th>강의명</th>
				<th>수강료</th>
				<th>강사자격취득일</th>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getTeacher_code()%></td>
				<td><%=list.get(i).getTeacher_name()%></td>
				<td><%=list.get(i).getClass_name()%></td>
				<td>￦<%=list.get(i).getClass_price()%></td>
				<td>
					<%
					String s = list.get(i).getTeacher_regist_date();
					String year = s.substring(0, 4);
					String month = s.substring(5, 6);
					String date = s.substring(6);
					String day = year + "년" + month + "월" + date + "일";
					%> <%=day%>
				</td>
			</tr>
			<%
			}
			%>
		</table>

	</section>
	<footer>HRDKOREA Copyrightⓒ2015 All rights reserved. Human
		Resources Development Service of Korea</footer>
</body>
</html>