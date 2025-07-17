<!-- 追加機能 -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="../css/tes_delete_done.css">

<c:import url="base.jsp">
  <c:param name="title">成績削除完了</c:param>
  <c:param name="content">
    <section>
      <h2 class="page-title">成績削除完了</h2>
      <p class="complete-message">成績情報を正常に削除しました。</p>

      <p>
        <a href="TestList.action?init=true" class="btn">成績参照に戻る</a>
      </p>
    </section>
  </c:param>
</c:import>
