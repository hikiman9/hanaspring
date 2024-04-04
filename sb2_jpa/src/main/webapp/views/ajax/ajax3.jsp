<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>

<script>
    let ajax3 = {
        init: function () {
            $.ajax({
                url: '/getrank',
                success: function(data){
                    ajax3.display(data);
                }
            });
            setInterval(function () {
                $.ajax({
                    url: '/getrank',
                    success: function(data){
                        ajax3.display(data);
                    }
                });
            }, 3500)
        },
        display: function (data){
            let result = '';
            $(data).each(function (i, a){
                result += '<p>';
                result += i + 1 + "위: ";
                result += a;
                result += '</p>';
            });
            $('#result').html(result);
        }
    }

    $(function () {
        ajax3.init();
    })


</script>

<div class="container">
    <h2>인기 검색어</h2>

    <div class="container" id="result">
    </div>
</div>