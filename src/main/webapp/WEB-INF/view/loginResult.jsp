<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%
//セッションスコープからユーザー情報を種痘
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body style="background: linear-gradient(to right,#c70000,#d28300,#dfd000,#00873c,#005aa0,#181878,#800073)">
	<h1>どこつぶログイン</h1>
	<% if (loginUser != null) { %>
	<p>ログインに成功しました。</p>
	<p>ようこそ<%=loginUser.getName()%>さん</p>
	<a href="Main">つぶやき投稿・閲覧へ</a>
	<% } else { %>
	<p>ログインに失敗しました。</p>
	<a href="index.jsp">TOPへ</a>
	<% } %>
</body>
</html>