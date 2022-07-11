<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.SaleVo"%>
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
	Object temp = request.getAttribute("sale");
	List<SaleVo> list = (List<SaleVo>) temp;
	%>
	<section>
		<h1>회원정보조회</h1>
		<table>
			<tr>
				<th>강사코드</th>
				<th>강의명</th>
				<th>강사명</th>
				<th>총매출</th>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getTeacher_code()%></td>
				<td><%=list.get(i).getClass_name()%></td>
				<td class="right"><%=list.get(i).getTeacher_name()%></td>
				<td class="right">
					<%
					String s = Integer.toString(list.get(i).getSale_sum());
					String new_s = "￦" + s.substring(0, 3) + "," + s.substring(3);
					%> <%=new_s %>
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