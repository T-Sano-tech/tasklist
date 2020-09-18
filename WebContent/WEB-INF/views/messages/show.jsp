<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
<c:param name="content">
<!--
    <c:choose>
        <c:when test="${tasks != null}">
-->
        <h2>id：${tasks.id}のタスク管理の詳細</h2>
        <table>
            <tbody>
                <tr>
                    <th>タイトル</th>
                    <td><c:out value="${tasks.title}" /></td>
                </tr>
                <tr>
                    <th>内容</th>
                    <td><c:out value="${tasks.content}" /></td>
                </tr>
                <tr>
                    <th>作成日時</th>
                    <td><fmt:formatDate value="${tasks.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                </tr>
                <tr>
                    <th>更新日時</th>
                    <td><fmt:formatDate value="${tasks.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                </tr>
            </tbody>
        </table>
        <p><a href="${pageContext.request.contextPath}/edit?id=${tasks_id}">この内容を編集する</a></p>
        <p><a href="${pageContext.request.contextPath}/index">一覧へ戻る</a></p>
<!--</c:when>
        <c:otherwise>
        <h2>お探しのデータは見つかりませんでした。</h2>
        </c:otherwise>
    </c:choose>
  -->
</c:param>
</c:import>