<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-03-27
  Time: 오전 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/Ajax;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="nav nav-pills flex-column">
    <p>Ajax</p>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/ajax/ajax1"/>">Ajax1</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/ajax/ajax2"/>">Ajax2</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/ajax/ajax3"/>">Ajax3</a>
    </li>
</ul>