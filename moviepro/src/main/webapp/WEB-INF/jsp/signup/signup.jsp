<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>회원가입</title>

</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="login/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/css/util.css">
    <link rel="stylesheet" type="text/css" href="login/css/main.css">
    <!--===============================================================================================-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>

<div class="limiter">
    <div class="container-login100" style="background-image: url('login/images/bg-01.jpg');">
        <div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account SignUp
				</span>
            <div class="login100-form validate-form p-b-33 p-t-5">

                <div class="wrap-input100 validate-input" data-validate="Enter username">
                    <input class="input100" type="text" placeholder="User name" id="user-id"onchange="confirmId()">
                    <div style = "float:right; padding-right: 10px; padding-bottom: 10mm";>
                        <button type="button" class="btn btn-secondary btn-sm" id="overlap" onclick="userOverlap()">중복확인</button>
                    </div>
                    <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                    <span class="lnr" style="margin-left: 10mm" id="id-overlap"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" type="password" placeholder="Password" id="user-pass" onchange="isSame()">
                    <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                    <span class="lnr" style="margin-left: 10mm" id="check"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" type="password" placeholder="confirm Password" id="confirm-pass" onchange="isSame()">
                    <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                    <span class="lnr" style="margin-left: 10mm" id="same"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter Email Address">
                    <input class="input100" type="text" placeholder="Email Address" id="user-email" onchange="emailCheck()">
                    <span class="focus-input100" data-placeholder="&#xe818;"></span>
                    <span class="lnr" style="margin-left: 10mm" id="confirmEmail"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter gender">
                    <div style="padding-left: 3cm;">
                        <input type="checkbox" name="chk_info" value="1" onclick="oneCheckbox(this)" id="check1" style="width:25px;height:25px;"><font size="4px">&nbsp;&nbsp;남자</font>
                        &emsp;&emsp;
                        <input type="checkbox" name="chk_info" value="0" onclick="oneCheckbox(this)" id="check2" style="width:25px;height:25px;"><font size="4px">&nbsp;&nbsp;여자</font>
                    </div>
                    <span class="focus-input100" data-placeholder="&#xe852;"></span><br>
                    <span class="lnr" style="margin-left: 10mm" id="confirmCheck"></span>
                </div>


                <div class="container-login100-form-btn m-t-32">
                    <button class="login100-form-btn">
                        SignUp
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/bootstrap/js/popper.js"></script>
<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/daterangepicker/moment.min.js"></script>
<script src="login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="js/signup.js"></script>

</body>
</html>

</body>
</html>