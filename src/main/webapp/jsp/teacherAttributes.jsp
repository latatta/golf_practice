<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.TeacherDao" %>
<%@ page import="vo.TeacherVo" %>
<%@ page import="java.util.List" %>
<%
	TeacherDao dao = TeacherDao.getInstance();
	List<TeacherVo> list = dao.selectList();
	
	request.setAttribute("list", list);
	pageContext.forward("teacher.jsp");
%>