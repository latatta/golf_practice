<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.ClassVo" %>
<%@ page import="dao.ClassDao" %>
<% 	
	request.setCharacterEncoding("UTF-8");
	String regist_month = request.getParameter("regist_month");
	String c_no = request.getParameter("c_no");
	String class_area = request.getParameter("class_area");
	int tuition = Integer.parseInt(request.getParameter("tuition"));
	String teacher_code = request.getParameter("teacher_code");

	ClassVo vo = new ClassVo(regist_month, c_no, class_area, tuition, teacher_code); 
	ClassDao dao = ClassDao.getInstance();
	if (dao.searchOne(regist_month, c_no) == null) {
		dao.insert(vo);
		out.print("<script>alert('수강신청이 정상적으로 완료되었습니다!');location.href='index.jsp';");
		out.print("</script>");
	}
	else {
		out.print("<script>alert('그 달에는 수업이 있습니다.');location.href='insert.jsp'");
		out.print("</script>");
	}
%>