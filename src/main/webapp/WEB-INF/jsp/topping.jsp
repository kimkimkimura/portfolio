<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ page import="model.User,java.util.List" %>
<% User loginUser = (User) session.getAttribute("loginUser");
   String errorMsg = (String) request.getAttribute("errorMsg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>トッピング</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<p><%= loginUser.getName() %>さん、ログイン中
<a href="/portf2/Logout">ログアウト</a>
<h1>トッピング</h1>
<form>
	<input type="date" name="sample">
	<button type="submit">設定</button>
</form>

<label>【生地選択】</label>
<select>
<option value="ｋ101">フランス</option>
</select>

<form>
	<h2>生地：フランス</h2>
	【ハニマスウィンナー】　　個分
	<div>
	<label for="z30001">・ウィンナー　　　　　ｇ</label>
	</div>
	<div>
	<label for="z50003">・はちみつ　　　　　　ｇ</label>
	</div>
	<div>
	<label for="z50004">・マスタード　　　　　ｇ</label>
	</div>
	<div>
	<label for="z40001">・玉ねぎ　　　　　　　ｇ</label>
	</div>
	<div>
	<label for="z20001">・ナチュラルチーズ　　ｇ</label>
	</div><br>
	
	【ベーコンエピ】　　　　　個分
	<div>
	<label for="z30002">・ベーコン　　　　　　ｇ</label>
	</div>
	<div>
	<label for="z50005">・ブラックペッパー　　ｇ</label>
	</div>
	<div>
	<label for="z20002">・粉チーズ　　　　　　ｇ</label>
	</div><br>
	
	【バゲット】　　　　　　　個分
	<div>
	</div><br>
	
	【レーズンイチジク】　　　個分
	<div>
	<label for="z50006">・レーズン　　　　　　ｇ</label>
	</div>
	<div>
	<label for="z50007">・イチジク　　　　　　ｇ</label>
	</div><br>
	
	<a href="" onclick="window.history.back(); return false;">前のページに戻る</a>
</form>
</body>
</html>
