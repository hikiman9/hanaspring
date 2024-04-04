<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>

<script>
    let ajax2 = {
        init: function () {
            $('#id').keyup(function () {
                let id = $(this).val();
                ajax2.send(id)
            })
        },
        send: function (id) {
            $.ajax({
                url: '<c:url value="/checkid"/>',
                data: {'id' : id},
                success: function (data){
                    ajax2.display(data);
                }
            });
        },
        display: function (data) {
            let result = 'Available';
            if(data.trim() === '0'){
                result = 'Not Available';
            }
            $('#id_span').text(result);
        }
    }

    $(function () {
        ajax2.init();
    })
</script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <h2>Ajax2 Center Page</h2>
    <form id="login_form">
        <div class="form-group">
            <label for="id">ID:</label>
            <input type="text" class="form-control" id="id" placeholder="Enter ID" name="id">
            <span id="id_span"></span>
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
        </div>
        <button type="button" class="btn btn-primary">Submit</button>
    </form>
</div>