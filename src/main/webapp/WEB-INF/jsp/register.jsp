<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User,java.util.List" %>
<% User loginUser = (User) session.getAttribute("loginUser");
   String errorMsg = (String) request.getAttribute("errorMsg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<p><%= loginUser.getName() %>さん、ログイン中</p>
<a href="/portf2/Logout">ログアウト</a>
<h1>登録画面</h1>
<form action="/portf2/Register" method="get">
	<a href="#">業者登録(ID,名前)</a><br>
	<a href="#">材料登録(ID,名前)</a><br>
	<a href="#">生地登録(ID,名前)</a><br>
	<a href="#">製品登録(ID,名前)</a><br><br>

	<a href="" onclick="window.history.back(); return false;">前のページに戻る</a>
</form>
</body>
</html>