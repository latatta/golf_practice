<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.SaleDao" %>
<%@ page import="vo.SaleVo" %>
<%@ page import="java.util.List" %>
<%
	SaleDao dao = SaleDao.getInstance();
	List<SaleVo> sale = dao.selectSale(); 
			
	request.setAttribute("sale", sale);
	pageContext.forward("sale.jsp");
%>