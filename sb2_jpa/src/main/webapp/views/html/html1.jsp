<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-03-27
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    p{
        color: red;
    }
</style>

<script>
    $(document).ready(function() {
        $('#ptag').text('who is that fuxxing Lee!')
        $('#ptag').click(function () {
            $(this).text('flawless~')
        })
    });
    // window.onload = function () {
    //     document.getElementById('ptag').innerHTML = 'who is that fxxking Lee!!!';
    //     document.querySelector('h5').addEventListener("click", function(e) {
    //         e.currentTarget.innerHTML = 'flawless';
    //     })
    // }

</script>

<div class="container">
    <h2>HTML1 Center Page</h2>
    <h5>Title description, Sep 2, 2017</h5>
    <div class="fakeimg">Fake Image</div>
    <p id="ptag">Some text..</p>
    <span>Span</span>
    <a href="#">A TAG</a>
</div>

