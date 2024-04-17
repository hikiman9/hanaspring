<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-03-27
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>

    let summary = {
        init: function () {
            $('#summary-form button').click(() => {
                this.send();
            });
        },
        send: function () {
            let content = $('#content').val();
            $.ajax({
                url: '<c:url value="/summaryimpl"/>',
                data: {'content':content},
                success: (result) => {
                    $('#result').val(result.summary);
                }
            });
        }
    };

    $(function () {
        summary.init();
    })
</script>


<div class="container">
    <h2>Summary</h2>
    <form id="summary-form">
        <div class="form-group">
            <label for="content">Content:</label>
            <textarea class="form-control" rows="10" id="content" name="boardContent" placeholder="Enter content"></textarea>
        </div>
        <button type="button" class="btn btn-primary">SUMMARIZE</button>
    </form>
    <textarea class="form-control" rows="5" id="result" name="boardContent"></textarea>
</div>