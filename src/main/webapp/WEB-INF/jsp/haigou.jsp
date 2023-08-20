<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ page import="model.User,java.util.List" %>
<% User loginUser = (User) session.getAttribute("loginUser");
   String errorMsg = (String) request.getAttribute("errorMsg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>配合表</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<p><%= loginUser.getName() %>さん、ログイン中
<a href="/portf2/Logout">ログアウト</a>
<h1>配合表</h1>


<form action="/portf2/Haigou" method="get">
	<input type="date" name="sample">
	<button type="submit">設定</button>
</form>

<label>【生地選択】</label>
<select>
<option value="ｋ101">フランス</option>
</select>

<form>
	<h2>生地：フランス</h2>
	<div>
	<label for="z10001">・リスドォル　　　　　ｇ</label>
	</div>
	<div>
	<label for="z10002">・塩　　　　　　　　　ｇ</label>
	</div>
	<div>
	<label for="z50001">・モルト　　　　　　　ｇ</label>
	</div>
	<div>
	<label for="z50002">・ドライイースト　　　ｇ</label>
	</div>
	<div>
	<label for="z00001">・浄水　　　　　　　　ｇ</label>
	</div><br>

	<a href="" onclick="window.history.back(); return false;">前のページに戻る</a>
</form>
</body>
</html>