<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="bean.Subject" %>
<%
    Subject subject = (Subject) request.getAttribute("subject");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目削除完了</title>
    <link rel="stylesheet" href="../css/subject.css">
</head>
<body>
    <h2>科目削除完了</h2>

    <p>以下の科目を削除しました。</p>

    <p>科目コード：${subject.subject_cd}</p>
    <p>科目名　　：${subject.subject_name}</p>

    <p><a href="subject_list">科目一覧へ戻る</a></p>
</body>
</html>
