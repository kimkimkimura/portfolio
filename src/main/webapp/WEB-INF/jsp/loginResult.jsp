<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<% User loginUser = (User) session.getAttribute("loginUser"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン成功</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h1>おかえりなさい</h1>
<% if(loginUser != null) {%>
<p>ログインに成功しました</p>
<p>ようこそ<%= loginUser.getName() %>さん</p>
<a href="/portf2/Register">登録</a><br>
<a href="/portf2/Main">生産予定数入力</a>
|<a href="/portf2/Zaiko">在庫管理入力</a><br>
<a href="/portf2/Main">分割</a>
|<a href="/portf2/Haigou">生地配合表</a>
|<a href="/portf2/Topping">トッピング</a><br>
<a href="/portf2/Hatyuu">発注入力</a>
|<a href="/portf2/Nouhin">納品数確認</a>

<% }else{ %>
<p>ログインに失敗しました</p>
<a href="/portf2/index.jsp">TOPへ</a>
<% } %>
</body>
</html>