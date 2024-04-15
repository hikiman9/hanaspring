<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-03-27
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<script>

    let center = {
        init: function () {
            $.ajax({
                url: '<c:url value="/wh"/> ',
                success: (result) => {
                    $('#wh').text(result.response.body.items.item[0].wfSv)
                }
            })
        }
    };
    $(function () {
        center.init();
    });

</script>

<div class="container">
    <h2>Center Page</h2>
    <h5>Title description, Sep 2, 2017</h5>
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
            <c:forEach var="b" items="${ranks}">
                <tr>
                    <td>${b.boardId}</td>
                    <td><a href="<c:url value="/board/detail"/>?id=${b.boardId}">${b.boardTitle}</a></td>
                    <td>${b.boardContent}</td>
                    <td>${b.custId}</td>
                    <td>
                        <fmt:parseDate value="${ b.boardRegdate }"
                                       pattern="yyyy-MM-dd'T'HH:mm:ss" var="parsedDateTime" type="both" />
                        <fmt:formatDate pattern="yyyy년 MM월 dd일 HH시 mm분" value="${ parsedDateTime }" />
                    </td>
                    <td>${b.boardCnt}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p>Weather Forecast</p>
    <p id="wh"></p>
</div>