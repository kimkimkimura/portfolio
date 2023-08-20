<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ page import="model.User,java.util.List" %>
    <% User loginUser = (User) session.getAttribute("loginUser");
    String errorMsg = (String) request.getAttribute("errorMsg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>生産予定数入力</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<p><%= loginUser.getName() %>さん、ログイン中
<a href="/portf2/Logout">ログアウト</a>
<h1>生産予定数入力</h1>


<form action="/portf2/Main" method="post">
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
	<label for="s10001">:ハニマスウィンナー</label>
	<input type="number" name="s10001" placeholder="個数入力">
	</div>
	<div>
	<label for="s10002">:ベーコンエピ　　　</label>
	<input type="number" name="s10002" placeholder="個数入力">
	</div>
	<div>
	<label for="s10003">:バゲッド　　　　　</label>
	<input type="number" name="s10003" placeholder="個数入力">
	</div>
	<div>
	<label for="s10004">:レーズンイチジク　</label>
	<input type="number" name="s10004" placeholder="個数入力">
	</div><br>
	
	<button type="submit">登録</button><br>
	<a href="" onclick="window.history.back(); return false;">前のページに戻る</a>
</form>
</body>
</html>