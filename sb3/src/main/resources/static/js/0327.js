// login.jsp ------------------------------------------------------
let login = {
    init: function (url){
        this.url = url;
        $('#login_form button').click(function (){
            let id = $('#id').val();
            let pwd = $('#pwd').val();
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
            login.send();
        });
    },
    send: function (){
        $('#login_form').attr({
            'action': this.url,
            'method': 'POST'
        });
        $('#login_form').submit();
    }
};

// register.jsp ------------------------------------------------------


// html2.jsp ------------------------------------------------------
let datas = [
    {'id' : 'id01', 'name' : 'james'},
    {'id' : 'id02', 'name' : 'kane'},
    {'id' : 'id03', 'name' : 'mike'},
    {'id' : 'id04', 'name' : 'yuta'},
    {'id' : 'id05', 'name' : 'fredy'},
];
let html2 = {
    init: function (){
        $('#btn').click(function(){
            html2.display(datas);
        });
    },
    display: function (data){
        let result = '';
        $(data).each(function (i, a){
            result += '<tr>';
            result += '<td>' + a.id + '</td>';
            result += '<td>' + a.name + '</td>';
            result += '</tr>';
        });
        $('#cust_tb tbody').html(result);
    }
};



