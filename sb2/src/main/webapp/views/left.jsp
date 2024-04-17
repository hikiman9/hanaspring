<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-03-27
  Time: 오전 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let left = {
        init: function () {
            $('#btn_board_add').click(() => {
                let login_id = '${sessionScope.id}'
                if(login_id == '' || login_id == null){
                    $('#btn_board_add').removeAttr('href');
                    alert('로그인 먼저 하셈')
                }
            })
        }
    };
    $(function () {
        left.init();
    });
</script>

<ul class="nav nav-pills flex-column">
    <li class="nav-item">
        <a id="btn_board_add" class="nav-link" href="<c:url value="/board/add"/> ">ADD</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/board/get"/> ">GET</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/board/allpage"/> ">PAGE</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/pic"/> ">PIC</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/summary"/> ">SUMMARY</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<c:url value="/ocr"/> ">OCR</a>
    </li>
</ul>