<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.TeacherVo"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
<link rel="stylesheet" href="../css/css.css">
</head>
<script type="text/javascript" src="../js/functions.js"></script>
<script type="text/javascript">
	function isSubmit() {
		const frm = document.forms[0];
		if (valid_check()) {
			frm.submit();
		}
	}
</script>
<body>
	<%@ include file="top.jsp"%>
	<section>
		<h1>수강신청</h1>
		<form action="save.jsp" method="post">
			<table>
				<tr>
					<th>수강월</th>
					<td class="input"><input type="text" name="regist_month">2022년
						03월 예)202203</td>
				</tr>
				<tr>
					<th>회원명</th>
					<td class="input"><select name="c_name"
						onchange="sel_change1()">
							<option value="" disabled selected>회원명</option>
							<option value="10001">홍길동</option>
							<option value="10002">장발장</option>
							<option value="10003">임꺽정</option>
							<option value="20001">성춘향</option>
							<option value="20002">이몽룡</option>
					</select></td>
				</tr>
				<tr>
					<th>회원번호</th>
					<td class="input"><input type="text" name="c_no" readonly>예)10001</td>
				</tr>
				<tr>
					<th>강의장소</th>
					<td class="input"><select name="class_area">
							<option value="" disabled selected>강의장소</option>
							<option value="서울본원">서울본원</option>
							<option value="성남본원">성남본원</option>
							<option value="대전본원">대전본원</option>
							<option value="부산본원">부산본원</option>
							<option value="대구본원">대구본원</option>
					</select></td>
				</tr>
				<tr>
					<th>강의명</th>
					<td class="input"><select name="teacher_code"
						onchange="sel_change2()">
							<option value="" disabled selected>강의신청</option>
							<option value="100">초급반</option>
							<option value="200">중급반</option>
							<option value="300">고급반</option>
							<option value="400">심화반</option>
					</select></td>
				</tr>
				<tr>
					<th>수강료</th>
					<td class="input"><input type="text" name="tuition" readonly>원</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" onclick="isSubmit()">수강신청</button>
						<button type="button" onclick="reset()">다시쓰기</button>
					</td>
				</tr>
			</table>
		</form>
	</section>
	<footer>HRDKOREA Copyrightⓒ2015 All rights reserved. Human
		Resources Development Service of Korea</footer>
</body>
</html>