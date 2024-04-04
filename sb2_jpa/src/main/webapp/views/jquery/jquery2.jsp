<style>
    .div_bg{
        border: 1px solid fuchsia !important;
    }
</style>

<script>

    let jquery2 = {
        init: function () {
            $('#append').click(function () {
                $('#result').append('<h3>Append ...</h3>')
            });
            $('#prepend').click(function () {
                $('#result').append('<h3>Prepend ...</h3>')
            });
            $('#after').click(function () {
                $('#result').append('<h3>After ...</h3>')
            });
            $('#before').click(function () {
                $('#result').append('<h3>Before ...</h3>')
            });
            $('#remove').click(function () {
                $('#result').append('<h3>Remove ...</h3>')
            });
            $('#empty').click(function () {
                $('#result').append('<h3>Empty ...</h3>')
            });
        }
    }

    $(function () {
        jquery2.init();
    })

</script>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <h2>jQuery2 Center Page</h2>
    <button id="append" type="button" class="btn btn-primary">APPEND</button>
    <button id="prepend" type="button" class="btn btn-primary">PREPEND</button>
    <button id="after" type="button" class="btn btn-primary">AFTER</button>
    <button id="before" type="button" class="btn btn-primary">BEFORE</button>
    <button id="remove" type="button" class="btn btn-primary">REMOVE</button>
    <button id="empty" type="button" class="btn btn-primary">EMPTY</button>
    <div class="container div_bg" id="result">

    </div>
</div>