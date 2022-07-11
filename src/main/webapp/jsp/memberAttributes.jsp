<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao" %>
<%@ page import="vo.MemberVo" %>
<%@ page import="java.util.List" %>
<%
	MemberDao dao = MemberDao.getInstance();
	List<MemberVo> list = dao.selectList(); 
			
	request.setAttribute("list", list);
	pageContext.forward("member.jsp");
%>