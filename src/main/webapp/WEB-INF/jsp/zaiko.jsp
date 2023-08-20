<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User,java.util.List" %>
<% User loginUser = (User) session.getAttribute("loginUser");
   String errorMsg = (String) request.getAttribute("errorMsg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>生産確定数入力</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<p><%= loginUser.getName() %>さん、ログイン中
<a href="/portf2/Logout">ログアウト</a>
<h1>在庫管理</h1>
<p>(すべてｇで設定)</p>

<form action="/portf2/Zaiko" method="get">
	<input type="date" name="sample">
	<button type="submit">設定</button>
</form>

<label>【業者選択】</label>
<select>
<option value="g01">製粉</option>
<option value="g02">乳業</option>
<option value="g03">ハム</option>
<option value="g04">八百屋</option>
<option value="g05">商事</option>
</select>

<form><br>
	
	業者：製粉
	<div>
	<label for="z10001">リスドォル:　　　　</label>
	<input type="text" name="z10001" placeholder="前日在庫連動">
	<input type="text" name="z10001" placeholder="配合・トッピング連動">
	<input type="text" name="z10001" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z10001" placeholder="納品連動">
	<input type="text" name="z10001" placeholder="当日在庫決定"><br>
	
	<label for="z10002">塩:　　　　　　　　</label>
	<input type="text" name="z10002" placeholder="前日在庫連動">
	<input type="text" name="z10002" placeholder="配合・トッピング連動">
	<input type="text" name="z10002" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z10002" placeholder="納品連動">
	<input type="text" name="z10002" placeholder="当日在庫決定"><br>
	</div><br>
	
	業者：乳業
	<div>
	<label for="z20001">ナチュラルチーズ:　</label>
	<input type="text" name="z20001" placeholder="前日在庫連動">
	<input type="text" name="z20001" placeholder="配合・トッピング連動">
	<input type="text" name="z20001" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z20001" placeholder="納品連動">
	<input type="text" name="z20001" placeholder="当日在庫決定"><br>
	         
	<label for="z20002">粉チーズ:　　　　　</label>
	<input type="text" name="z20002" placeholder="前日在庫連動">
	<input type="text" name="z20002" placeholder="配合・トッピング連動">
	<input type="text" name="z20002" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z20002" placeholder="納品連動">
	<input type="text" name="z20002" placeholder="当日在庫決定">
	</div><br>
	
	業者：ハム
	<div>
	<label for="z30001">ウィンナー:　　　　</label>
	<input type="text" name="z30001" placeholder="前日在庫連動">
	<input type="text" name="z30001" placeholder="配合・トッピング連動">
	<input type="text" name="z30001" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z30001" placeholder="納品連動">
	<input type="text" name="z30001" placeholder="当日在庫決定"><br>
	
	<label for="z30002">ハム:　　　　　　　</label>
	<input type="text" name="z30002" placeholder="前日在庫連動">
	<input type="text" name="z30002" placeholder="配合・トッピング連動">
	<input type="text" name="z30002" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z30002" placeholder="納品連動">
	<input type="text" name="z30002" placeholder="当日在庫決定">
	</div><br>
	
	業者：八百屋
	<div>
	<label for="z40001">玉ねぎ:　　　　　　</label>
	<input type="text" name="z40001" placeholder="前日在庫連動">
	<input type="text" name="z40001" placeholder="配合・トッピング連動">
	<input type="text" name="z40001" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z40001" placeholder="納品連動">
	<input type="text" name="z40001" placeholder="当日在庫決定">
	</div><br>
	
	業者：商事
	<div>
	<label for="z50001">モルト:　　　　　　</label>
	<input type="text" name="z50001" placeholder="前日在庫連動">
	<input type="text" name="z50001" placeholder="配合・トッピング連動">
	<input type="text" name="z50001" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z50001" placeholder="納品連動">
	<input type="text" name="z50001" placeholder="当日在庫決定"><br>
	
	<label for="z50002">ドライイースト:　　</label>
	<input type="text" name="z50002" placeholder="前日在庫連動">
	<input type="text" name="z50002" placeholder="配合・トッピング連動">
	<input type="text" name="z50002" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z50002" placeholder="納品連動">
	<input type="text" name="z50002" placeholder="当日在庫決定"><br>
	
	<label for="z50003">はちみつ:　　　　　</label>
	<input type="text" name="z50003" placeholder="前日在庫連動">
	<input type="text" name="z50003" placeholder="配合・トッピング連動">
	<input type="text" name="z50003" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z50003" placeholder="納品連動">
	<input type="text" name="z50003" placeholder="当日在庫決定"><br>
	
	<label for="z50004">マスタード:　　　　</label>
	<input type="text" name="z50004" placeholder="前日在庫連動">
	<input type="text" name="z50004" placeholder="配合・トッピング連動">
	<input type="text" name="z50004" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z50004" placeholder="納品連動">
	<input type="text" name="z50004" placeholder="当日在庫決定"><br>
	
	<label for="z50005">ブラックペッパー:　</label>
	<input type="text" name="z50005" placeholder="前日在庫連動">
	<input type="text" name="z50005" placeholder="配合・トッピング連動">
	<input type="text" name="z50005" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z50005" placeholder="納品連動">
	<input type="text" name="z50005" placeholder="当日在庫決定"><br>
	
	<label for="z50006">レーズン:　　　　　</label>
	<input type="text" name="z50006" placeholder="前日在庫連動">
	<input type="text" name="z50006" placeholder="配合・トッピング連動">
	<input type="text" name="z50006" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z50006" placeholder="納品連動">
	<input type="text" name="z50006" placeholder="当日在庫決定"><br>
	
	<label for="z50007">イチジク:　　　　　</label>
	<input type="text" name="z50007" placeholder="前日在庫連動">
	<input type="text" name="z50007" placeholder="配合・トッピング連動">
	<input type="text" name="z50007" placeholder="ロス入力">
	<select>
	<option>その他</option>
	<option>賞味期限切れ</option>
	<option>試作</option>
	<option>落下</option>
	</select>
	<input type="text" name="z50007" placeholder="納品連動">
	<input type="text" name="z50007" placeholder="当日在庫決定">
	</div><br>
	<button type="submit">登録</button><br>
	
	<a href="" onclick="window.history.back(); return false;">前のページに戻る</a>
</form>
</body>
</html>