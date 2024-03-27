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
let register = {
    init: function (url){
        this.url = url;
        $('#register_form button').click(function (){
            let name = $('#regi_name').val();
            let id = $('#regi_id').val();
            let pwd = $('#regi_pwd').val();
            if(name == '' || name == null){
                alert('이름를 입력하세요');
                $('#regi_name').focus();
                return;
            }
            if(id == '' || id == null){
                alert('id를 입력하세요');
                $('#regi_id').focus();
                return;
            }
            if(pwd == '' || pwd == null){
                alert('pwd를 입력하세요');
                $('#regi_pwd').focus();
                return;
            }
            register.send();
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
    display: function (datas){
        let result = '';
        $(datas).each(function (i, a){
            result += '<tr>';
            result += '<td>' + a.id + '</td>';
            result += '<td>' + a.name + '</td>';
            result += '</tr>';
        });
        $('#cust_tb tbody').html(result);
    }
};

