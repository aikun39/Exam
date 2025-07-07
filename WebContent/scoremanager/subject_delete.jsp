<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="bean.Subject" %>
<%
    Subject subject = (Subject) request.getAttribute("subject");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目削除</title>
    <link rel="stylesheet" href="../css/subject.css">
</head>
<body>
    <h2>科目削除</h2>

    <p>以下の科目を削除してもよろしいですか？</p>

    <form action="SubjectDeleteExecute.action" method="post">
        <!-- 表示項目 -->
        <p>科目コード：${subject.subject_cd}</p>
        <p>科目名　　：${subject.subject_name}</p>

        <!-- 隠しパラメータ -->
        <input type="hidden" name="subject_cd" value="${subject.subject_cd}">
        <input type="hidden" name="subject_name" value="${subject.subject_name}">

        <!-- 削除ボタン -->
        <input type="submit" value="削除">
    </form>

    <!-- 戻るリンク -->
    <p><a href="subject_list">戻る</a></p>
</body>
</html>
