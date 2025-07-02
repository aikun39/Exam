
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Subject" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>科目一覧</title>
    <style>
        table {
            border-collapse: collapse;
            width: 60%;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #999;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>科目一覧</h2>

    <table>
        <tr>
            <th>科目コード</th>
            <th>科目名</th>
            <th>学校コード</th>
        </tr>

        <%
            List<Subject> subjects = (List<Subject>) request.getAttribute("subjects");
            if (subjects != null && !subjects.isEmpty()) {
                for (Subject subject : subjects) {
        %>
            <tr>
                <td><%= subject.getCd() %></td>
                <td><%= subject.getName() %></td>
                <td><%= subject.getSchool().getCd() %></td>
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="3">科目が登録されていません。</td>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>
