function loginCheck(inputdata) {
    var logindata
    console.log(inputdata);
    $.ajax({
        type : "POST",
        async:false,  //ajax는 리턴값을 가져오려면 동기방식으로 해야함
        url : "/loginCheck",
        contentType : "application/json;charset=utf-8",
        data : JSON.stringify(inputdata),
        dataType : "text",
        success: function (data) {
            //alert("success");
            logindata = data;
        },
        error: function () {
            alert("error");
        }
    })
    return logindata;
}
function successLogin(id) {
    //alert("로그인 성공");
    location.replace("/home");
}
function errormsg() {
    var IdAlert = document.getElementById('alertMsg');
    IdAlert.innerHTML = "<div class=\"alert\">\n" +
        "  <span class=\"closebtn\" onclick=\"this.parentElement.style.display='none';\">&times;</span> \n" +
        "  <strong>로그인 실패!</strong>&nbsp;&emsp; 아이디와 비밀번호를 확인해주세요.\n" +
        "</div>";
}
function emptyidmsg(){
    var id = document.getElementById('user-id').value;
    if(id=="") {
        document.getElementById('idCheck').innerHTML = '&#xe86e;&nbsp;아이디를 입력해주세요.';
        document.getElementById('idCheck').style.color = '#CC3D3D';
    }else{
        document.getElementById('idCheck').innerHTML='';
    }
}
function emptypassmsg(){
    var pass = document.getElementById('user-pass').value;
    if(pass=="") {
        document.getElementById('passCheck').innerHTML = '&#xe86e;&nbsp;비밀번호를 입력해주세요.';
        document.getElementById('passCheck').style.color = '#CC3D3D';
    }else{
        document.getElementById('passCheck').innerHTML='';
    }
}

const loginbtn = document.querySelector('.login100-form-btn');

loginbtn.addEventListener('click', function(){
    inputid = document.querySelector('#user-id').value;
    inputpass = document.querySelector('#user-pass').value;

    if(inputid==""||inputpass=="") {
        emptyidmsg();
        emptypassmsg();
    }else {
        var inputdata = {
            "id": inputid,
            "pass": inputpass
        };
        var result = loginCheck(inputdata);
        //alert("return value: "+a);
        if (result == "success") {
            successLogin(inputid);
        } else {
            location.replace("/login");
        }
    }
});