<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-03-27
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    $(function(){
        register.init('<c:url value="/registerimpl"/>');
    });
</script>

<div class="container">
    <div class="container">
        <h2>Register Page</h2>
        <form id="register_form">
            <div class="form-group">
                <label for="regi_name">NAME:</label>
                <input type="text" class="form-control" id="regi_name" placeholder="Enter Name" name="regi_name">
            </div>
            <div class="form-group">
                <label for="regi_id">ID:</label>
                <input type="text" class="form-control" id="regi_id" placeholder="Enter ID" name="regi_id">
            </div>
            <div class="form-group">
                <label for="regi_pwd">Password:</label>
                <input type="password" class="form-control" id="regi_pwd" placeholder="Enter password" name="regi_pwd">
            </div>
            <button type="button" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>