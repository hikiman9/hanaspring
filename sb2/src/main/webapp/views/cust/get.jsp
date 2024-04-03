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
    <h2>html3</h2>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>PWD</th>
                <th>NAME</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="c" items="${custs}">
                <tr>
                    <td><a href="<c:url value="/cust/detail"/>?id=${c.id}">${c.id}</a></td>
                    <td>${c.pwd}</td>
                    <td>${c.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>