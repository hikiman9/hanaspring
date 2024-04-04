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
    let add = {
        init: function (url){
            this.url = url;
            $('#register_form button').click(function (){
                let name = $('#name').val();
                let id = $('#id').val();
                let pwd = $('#pwd').val();
                if(name == '' || name == null){
                    alert('이름를 입력하세요');
                    $('#name').focus();
                    return;
                }
                if(id == '' || id == null){
                    alert('id를 입력하세요');
                    $('#id').focus();
                    return;
                }
                if(pwd == '' || pwd == null){
                    alert('pwd를 입력하세요');
                    $('#pwd').focus();
                    return;
                }
                add.send();
            });
        },
        send: function (){
            $('#register_form').attr({
                'action': this.url,
                'method': 'POST'
            });
            $('#register_form').submit();
        }
    };

    $(function(){
        add.init('<c:url value="/cust/addimpl"/>');
    });
</script>

<div class="container">
    <div class="container">
        <h2>Register Page</h2>
        <form id="register_form">
            <div class="form-group">
                <label for="name">NAME:</label>
                <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
            </div>
            <div class="form-group">
                <label for="id">ID:</label>
                <input type="text" class="form-control" id="id" placeholder="Enter ID" name="id">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
            </div>
            <button type="button" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>