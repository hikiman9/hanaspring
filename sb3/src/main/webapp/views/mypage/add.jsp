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
                let name = $('#addrName').val();
                let id = $('#custId').val();
                let pwd = $('#addrDetail').val();
                if(name == '' || name == null){
                    alert('이름를 입력하세요');
                    $('#addrName').focus();
                    return;
                }
                if(id == '' || id == null){
                    alert('id를 입력하세요');
                    $('#custId').focus();
                    return;
                }
                if(pwd == '' || pwd == null){
                    alert('pwd를 입력하세요');
                    $('#addrDetail').focus();
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
        add.init('<c:url value="/mypage/addimpl"/>');
    });
</script>

<div class="container">
    <div class="container">
        <h2>주소록 등록</h2>
        <form id="register_form">
            <div class="form-group">
                <label for="custId">ID:</label>
                <input type="text" class="form-control" id="custId" value="${id}" name="custId" readonly>
            </div>
            <div class="form-group">
                <label for="addrName">NAME:</label>
                <input type="text" class="form-control" id="addrName" placeholder="Enter address name, ex)my home" name="addrName">
            </div>
            <div class="form-group">
                <label for="addrDetail">NAME:</label>
                <input type="text" class="form-control" id="addrDetail" placeholder="Enter address" name="addrDetail">
            </div>
            <button type="button" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>