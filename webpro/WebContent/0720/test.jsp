<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
  h1{
  color : red;
  
  }
  span{
  color : blue;
  font-size : 2.0em;
}
</style>
 <body>
  <h1>JSP : Java Server Page</h1>
<h2>서버 내에서 실행되는 스크립트 파일</h2>
<p> html과 java코드를 혼용해서 사용할 수 있다. </p>
<p>java 코드를 쓸 때는 &lt;%    %&gt; 사이에서 기술한다.</p> 
<p>java 변수값을 출력할 때는 &lt;%=   %&gt; 사이에 기술한다.</p>
<p>클라이언트에서 전송 시 입력한 데이터를 전송하면 여기서 받는다.</p>
<p>String 변수 = request.getParameter("name")</p>
<%
	// 자바 문장을 기술하는 곳이다. 클라이언트에서 전송 시 입력한 데이터를 전송하면 여기서 받는다.
	request.setCharacterEncoding("UTF-8");	//post 방식으로 전송시 한글 encoding
	
	String userId = request.getParameter("id");
	String userName = request.getParameter("name");	// request : jsp에 내장되어 있는 객체(클래스)
	String userPass = request.getParameter("pass");
	String userBirth = request.getParameter("birth");
%>

	<span><%= userId %>님 환영합니다. </span><br>
	<span><%= userName %>님 즐거운 하루 되세요.</span><br>
	<span>당신의 생일은 <%= userBirth %>입니다. </span>
</body>
</html>