<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  div{
	width : 50%;
	height : auto;
	border : 1px solid green;
	padding : 10px;
  }
</style>
</head>
<body>

<% 
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String area = request.getParameter("area");
	// 엔터 -> \r, \n 두가지가 수행된다. 커서를 맨 앞으로 옮기고(\r) 다음 줄로 내린다.(\n)
	area = area.replaceAll("\r", "").replaceAll("\n", "<br>");
%>

<%= name %>님이 남긴말<br>
<div><%= area %></div>
</body>
</html>