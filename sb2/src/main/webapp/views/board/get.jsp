<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    .comment{
        color: darksalmon !important;
    }
</style>

<script>
    let html3 = {
        init: function () {
        }
    };
    $(function () {
        html3.init();
    });
</script>
<div class="container">
    <h1>Board Get</h1>
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
        <c:forEach var="b" items="${boards}">
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
</div>
