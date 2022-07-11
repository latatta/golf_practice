<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.MemberVo"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보조회</title>
<link rel="stylesheet" href="../css/css.css">
</head>
<body>
	<%@ include file="top.jsp"%>
	<%
	Object temp = request.getAttribute("list");
	List<MemberVo> list = (List<MemberVo>) temp;
	%>
	<section>
		<h1>회원정보조회</h1>
		<table>
			<tr>
				<th>수강월</th>
				<th>회원번호</th>
				<th>회원명</th>
				<th>강의명</th>
				<th>강의장소</th>
				<th>수강료</th>
				<th>등급</th>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getRegist_month()%></td>
				<td><%=list.get(i).getC_no()%></td>
				<td><%=list.get(i).getC_name()%></td>
				<td><%=list.get(i).getTeacher_code()%></td>
				<td><%=list.get(i).getClass_area()%></td>
				<td><%
				String s = Integer.toString(list.get(i).getTuition());
				String new_s = "￦" + s.substring(0, 3) + "," + s.substring(3);
				%><%=new_s %></td>
				<td><%=list.get(i).getGrade()%></td>
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