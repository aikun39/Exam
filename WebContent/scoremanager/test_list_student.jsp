<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../css/tes_list.css">

<c:import url="base.jsp">
    <c:param name="title">得点管理システム</c:param>
    <c:param name="scripts"></c:param>
    <c:param name="content">
        <section>
            <h2>成績参照</h2>

            <div id="filter-wrapper">
                <!-- 絞り込みフォーム 科目情報 -->
                <form id="filter" action="TestListSubjectExecute.action" method="get">
                    <p class="sform"><label>科目情報</label></p>
                    <input type="hidden" name="mode" value="subjectClass" />
                    <label>入学年度<br>
                        <select name="f1">
                            <option value="">------</option>
                            <c:forEach var="y" items="${entYearList}">
                                <option value="${y}" <c:if test="${y == selectedEntYear}">selected</c:if>>${y}</option>
                            </c:forEach>
                        </select>
                    </label>

                    <label>クラス<br>
                        <select name="f2">
                            <option value="">------</option>
                            <c:forEach var="c" items="${classList}">
                                <option value="${c}" <c:if test="${c == selectedClassNum}">selected</c:if>>${c}</option>
                            </c:forEach>
                        </select>
                    </label>

                    <label>科目<br>
                        <select name="f3">
                            <option value="">------</option>
                            <c:forEach var="s" items="${subjectList}">
                                <option value="${s.cd}" <c:if test="${selectedSubject != null && s.cd == selectedSubject.cd}">selected</c:if>>${s.name}</option>
                            </c:forEach>
                        </select>
                    </label>
                    <input type="submit" value="検索" class="btn">
                </form>

                <!-- 絞り込みフォーム 学生情報 -->
                <form id="filter" action="TestListStudentExecute.action" method="get">
                    <p class="sform"><label>学生情報</label></p>
                    <input type="hidden" name="mode" value="student" />
                    <label>学生番号<br>
                        <input type="text" name="f4" required/>
                    </label>
                    <input type="submit" value="検索" class="btn">
                </form>

                <!-- エラーメッセージ -->
                <c:if test="${not empty error}">
                    <div id="errormessage">
                        ${error}
                    </div>
                </c:if>
            </div>

            <!-- ▼ 学生番号での検索結果 -->
            <c:if test="${not empty studentTestList}">
                <h3>【学生別】検索結果</h3>
                <div>氏名：${studentName}（${studentNo}）</div>
                <table border="1">
                    <tr>
                        <th>科目名</th>
                        <th>科目コード</th>
                        <th>回数</th>
                        <th>点数</th>
                        <th></th>
                    </tr>
                    <c:forEach var="record" items="${studentTestList}">
                        <tr>
                            <td>${record.subjectName}</td>
                            <td>${record.subjectCd}</td>
                            <td>${record.num}回目</td>
                            <td>${record.point}点</td>
                            <td>
                            		<!-- 追加機能 -->
                                    <a href="TestDelete.action?studentNo=${studentNo}&subjectCd=${record.subjectCd}&no=${record.num}">削除</a>
                                </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>

            <!-- ▼ 科目＋クラスでの検索結果 -->
            <c:if test="${not empty subjectClassTestList}">
                <h3>【科目別】検索結果</h3>
                <p>科目コード：${subjectCd} ／ クラス番号：${classNum}</p>
                <table border="1">
                    <tr>
                        <th>学生番号</th>
                        <th>氏名</th>
                        <th>回数</th>
                        <th>点数</th>
                    </tr>
                    <c:forEach var="test" items="${subjectClassTestList}">
                        <tr>
                            <td>${test.studentNo}</td>
                            <td>${test.studentName}</td>
                            <td>${test.no}回目</td>
                            <td>${test.point}点</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>

            <!-- データがどちらも無い場合 -->
            <c:if test="${empty studentTestList and empty subjectClassTestList}">
                <p>該当する成績情報は存在しませんでした。</p>
            </c:if>

        </section>
    </c:param>
</c:import>
