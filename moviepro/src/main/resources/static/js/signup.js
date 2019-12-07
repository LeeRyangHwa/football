function isSame() {
    var pw = document.getElementById('user-pass').value;
    var confirmPw = document.getElementById('confirm-pass').value;
    if (pw.length < 6) {
        document.getElementById('check').innerHTML = '&#xe86e;&nbsp;비밀번호가 너무 짧습니다.';
        document.getElementById('check').style.color = '#CC3D3D';
        document.getElementById('same').innerHTML = '';
        passcheck = 0;
    } else {
        document.getElementById('check').innerHTML = '&#xe86d;&nbsp;사용가능한 비밀번호입니다.';
        document.getElementById('check').style.color = '#47C83E';
        passcheck = 0;
        if (pw != '' && confirmPw != '') {
            if (pw == confirmPw) {
                document.getElementById('same').innerHTML = '&#xe86d;&nbsp;비밀번호가 일치합니다.';
                document.getElementById('same').style.color = '#47C83E';
                passcheck = 1;
            } else {
                document.getElementById('same').innerHTML = '&#xe86e;&nbsp;비밀번호가 일치하지 않습니다.';
                document.getElementById('same').style.color = '#CC3D3D';
                passcheck = 0;
            }
        }
    }
}

function isOverlap(id) {
    var overlapCheck
    console.log(id);
    $.ajax({
        type: "POST",
        async: false,  //ajax는 리턴값을 가져오려면 동기방식으로 해야함
        url: "/overlapCheck",
        contentType: "application/text;charset=utf-8",
        data: id,
        dataType: "text",
        success: function (data) {
            overlapCheck = data;
        },
        error: function () {
            alert("error");
        }
    })
    return overlapCheck;
}

function oneCheckbox(check) {
    var obj = document.getElementsByName("chk_info");
    for (var i = 0; i < obj.length; i++) {

        if (obj[i] != check) {
            obj[i].checked = false;
        }
    }
    for (var i = 0; i < obj.length; i++) {
        if (obj[i] != check) {
            checkboxvalue = obj[i].value;
        }
    }
}

function confirmId() {
    var id = document.querySelector('#user-id').value;
    if (id == "") {
        document.getElementById('id-overlap').innerHTML = '&#xe86e;&nbsp;아이디를 입력하세요.';
        document.getElementById('id-overlap').style.color = '#CC3D3D';
        result = "false";
    }
}

function emailCheck() {
    var email = document.getElementById("user-email").value
    var emailForm = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
    if (emailForm.test(email) == false) {
        document.getElementById('confirmEmail').innerHTML = '&#xe86e;&nbsp;이메일 주소를 다시 확인해주세요.';
        document.getElementById('confirmEmail').style.color = '#CC3D3D';
        emailcheck = 0;
    } else {
        document.getElementById('confirmEmail').innerHTML = '';
        emailcheck = 1;

    }
}

function userOverlap() {
    var id = document.querySelector('#user-id').value;

    result = isOverlap(id);
    if (result == "true") {
        document.getElementById('id-overlap').innerHTML = '&#xe86d;&nbsp;사용가능한 아이디입니다.';
        document.getElementById('id-overlap').style.color = '#47C83E';
    } else {
        document.getElementById('id-overlap').innerHTML = '&#xe86e;&nbsp;이미 사용중인 아이디 입니다.';
        document.getElementById('id-overlap').style.color = '#CC3D3D';
    }
}

function Usersignup(signupData) {
    console.log(signupData);
    var signupResult;
    $.ajax({
        type: "POST",
        async: false,  //ajax는 리턴값을 가져오려면 동기방식으로 해야함
        url: "/UserSignup",
        contentType: "application/json;charset=utf-8",
        data: JSON.stringify(signupData),
        dataType: "text",
        success: function (data) {
            signupResult = data;
        },
        error: function () {
            alert("error");
        }
    })
    return signupResult;

}
function checkConfirm() {
    var chk_obj = document.getElementsByName("chk_info");
    var chk_leng = chk_obj.length;
    var checked = 0;

    for(i=0;i<chk_leng;i++){
        if(chk_obj[i].checked==true){
            checked +=1;
        }
    }
    if(checked==0){
        checkboxvalue = 2;
    }else{
        document.getElementById('confirmCheck').innerHTML = '';
    }
}
var result; //중복검사 변수 (중복 x "true")
var passcheck; // 0이면 오류 1이면 알맞은 비밀번호
var emailcheck; //0이면 email형식 오류 1이면 알맞은 email
var checkboxvalue = 2; //성별 체크박스 값 체크하지 않으면 2 (남자 0  여자 1)

const loginbtn = document.querySelector('.login100-form-btn');

loginbtn.addEventListener('click', function () {
    inputid = document.querySelector('#user-id').value;
    inputpass = document.querySelector('#user-pass').value;
    inputemail = document.querySelector('#user-email').value;

    checkConfirm();

    var signupData = {
        "id": inputid,
        "pass": inputpass,
        "email": inputemail,
        "gender": checkboxvalue
    };

    console.log("중복검사:" + signupData);

    if (result == "true" && passcheck == 1 && emailcheck == 1 && checkboxvalue != 2) {
        var signUptry = Usersignup(signupData); // 회원가입 결과
        console.log(signUptry);
        if(signUptry=="success"){
            location.replace("/login");
        }else{
            alert("SignUp error");
        }
    } else {

        confirmId();
        isSame();
        emailCheck();
        if (checkboxvalue == 2) {
            document.getElementById('confirmCheck').innerHTML = '&#xe86e;&nbsp;성별을 체크해주세요.';
            document.getElementById('confirmCheck').style.color = '#CC3D3D';
        } else {
            document.getElementById('confirmCheck').innerHTML = '';
        }
    }

});