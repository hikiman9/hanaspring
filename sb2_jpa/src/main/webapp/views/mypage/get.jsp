<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-04-01
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <h2>주소록 목록</h2>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>주소 이름</th>
                <th>상세 주소</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ad" items="${addrs}">
                <tr>
<%--                    <td><a href="<c:url value="/mypage/detail"/>?id=${ad.custId}">${ad.addrName}</a></td>--%>
                    <td>${ad.addrName}</td>
                    <td>${ad.addrDetail}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>