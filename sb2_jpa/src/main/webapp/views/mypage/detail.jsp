<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-04-01
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    let detail = {
        init: function () {
        }
    };
    $(function () {
        detail.init();
    });
</script>
<div class="container">
    <h2>customer detail</h2>
    <p>------------------------------------</p>
    <h2>ID: ${cust.id}</h2>
    <h2>PWD: ${cust.pwd}</h2>
    <h2>NAME: ${cust.name}</h2>
</div>