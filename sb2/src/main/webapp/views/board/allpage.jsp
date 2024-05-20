<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-04-01
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<script>
    let get = {
        init: function () {
        }
    };
    $(function () {
        get.init();
    });
</script>
<div class="container">
    <h2>DashBoard</h2>
    <table class="table table-striped" id="board_table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Content</th>
            <th>CustId</th>
            <th>RegDate</th>
            <th>Click</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="b" items="${cpage.getList()}">
            <tr>
                <td>${b.boardId}</td>
                <td><a href="<c:url value="/board/detail"/>?id=${b.boardId}">${b.boardTitle}</a></td>
                <td>${b.boardContent}
                    <c:if test="${b.commentCnt != 0}">
                        <span class="comment">   (${b.commentCnt})</span>
                    </c:if>
                </td>
                <td>${b.custId}</td>
                <td>
                    <fmt:parseDate value="${ b.boardRegdate }"
                                   pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
                    <fmt:formatDate pattern="yyyy년 MM월 dd일 HH시 mm분" value="${ parsedDateTime }" />
                </td>
                <td>${b.boardCnt}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <jsp:include page="../page.jsp"/>
</div>