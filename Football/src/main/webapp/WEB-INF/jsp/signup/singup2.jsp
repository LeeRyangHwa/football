<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="euc-kr" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Football Match</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

<script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Comfortaa:400,700'>

      <link rel="stylesheet" href="assets/css/login.css"

</head>
<body>
     
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="메인.html"><i class="fa fa-square-o "></i>&nbsp;Football Match</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="회원가입.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></a></li>
                        <li><a href="로그인.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></a></li>
                    </ul>
                </div>

            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center user-image-back">
                        <img src="assets/img/find_user.png" class="img-responsive" />
                    </li>


                    <li>
                        <a href="경기장목록.html"><i class="glyphicon glyphicon-heart" aria-hidden="true"></i>경기장</a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-user"></i>팀<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="나의팀정보.html">나의 팀</a>
                            </li>
                            <li>
                                <a href="팀목록.html">상대 팀</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="매칭.html"><i class="glyphicon glyphicon-flag "></i>매칭 </a>
                    </li>
                    
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
 

<div class="container">
  <div id="login" class="login">
    <div class="login-icon-field">
      <svg class="login-icon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="5.0 -10.0 100.0 135.0" enable-background="new 0 0 100 100" xml:space="preserve" height="160px" width="160px">
        <g>
          <path fill="#fff" class="ball-path" d="M93.853,50C93.853,25.471,74.181,5.515,50,5.515C25.819,5.515,6.147,25.471,6.147,50  S25.819,94.485,50,94.485c16.206,0,31.035-9.036,38.698-23.575l0.118-0.193l-0.014-0.009C92.107,64.361,93.853,57.204,93.853,50z   M51.941,7.896c-0.248-0.213-0.52-0.408-0.814-0.586c1.072,0.029,2.145,0.099,3.21,0.21C53.422,7.647,52.582,7.784,51.941,7.896z   M63.378,25.518l-2.597,16.013c-0.018-0.001-0.037-0.002-0.053-0.001l-0.113,0.009c-1.551,0.221-12.914,4.092-16.522,5.33  L30.442,35.902c1.224-6.101,3.005-13.031,3.917-13.943c1.26-1.26,11.494-6.129,16.433-6.129c0.532,0,0.984,0.058,1.323,0.165  C53.438,16.615,58.712,21.214,63.378,25.518z M40.063,66.207c0.752-3.58,3.125-14.789,3.898-17.415l0.246-0.085  c5.741-1.973,14.807-5.012,16.506-5.381c0.474,0.203,1.705,1.083,3.318,2.372c2.84,2.455,6.587,5.934,8.811,8.092  c0.466,0.53,0.836,0.995,1.079,1.343c1.355,3.559-1.241,10.932-2.488,14.475l-0.702,1.973c-0.252,0.202-0.639,0.505-1.883,1.038  c-4.051,1.732-12.558,4.122-15.767,4.433c-2.607-1.262-8.454-6.657-11.28-9.264C41.077,67.123,40.447,66.541,40.063,66.207z   M79.154,25.547l-0.315,0.725c-2.622-0.969-5.798-1.42-9.981-1.42c-1.158,0-2.216,0.033-3.15,0.062l-0.282,0.013l-0.088-0.018  c-1.217-1.131-10.343-9.581-12.536-10.556l-0.072-0.028c-0.191-0.064-0.402-0.115-0.657-0.158c0.226-1.659,0.555-3.708,0.708-4.645  c1.715-0.31,4.847-0.803,7.441-0.803c0.215,0,0.427,0.003,0.594,0.004c7.007,1.893,13.462,5.641,18.669,10.838  C80.469,21.834,79.675,24.074,79.154,25.547z M32.434,21.742c-1.535,3.144-3.253,11.391-3.771,13.991  c-1.339,0.945-7.472,5.443-12.355,11.849c-0.695-0.328-4.078-2.016-6.109-4.651l-0.064-0.254c-0.365-1.432-0.865-3.392,0.652-8.163  c0.675-1.754,1.477-3.486,2.384-5.149L26.56,18.576C28.268,19.356,31.16,20.743,32.434,21.742z M15.835,49.296  c2.606,11.039,4.235,14.948,5.99,17.551c-1.586,2.345-2.771,8.614-2.988,9.826c-0.764-0.233-1.693-0.717-2.764-1.443  C10.742,67.864,7.924,59.14,7.924,50c0-0.919,0.032-1.882,0.097-2.863c0.394-0.944,0.938-1.664,1.618-2.141  C11.01,46.561,14.088,48.701,15.835,49.296z M23.025,68.287c0.535,0.09,1.249,0.181,2.016,0.258  c1.015,0.198,2.228,0.298,3.606,0.298c0.341,0,0.685-0.006,1.022-0.017c0.407,0.009,0.82,0.014,1.236,0.014  c2.451,0,5.867-0.174,8.319-0.999c0.347,0.313,0.819,0.748,1.37,1.256c2.956,2.728,8.425,7.775,11.391,9.388  c-0.397,2.361-1.68,6.473-2.412,8.722c-0.45,1.011-1.873,1.536-4.465,1.652l-12.634-0.349c-4.34-1.211-10.267-8.291-12.07-10.764  C20.693,75.55,21.722,70.32,23.025,68.287z M36.919,90.514c1.643,0.072,3.893,0.169,6.144,0.169c3.585,0,6.07-0.243,7.59-0.743  c0.082,0.043,0.24,0.122,0.549,0.27c2.437,0.881,4.69,1.309,6.888,1.309c0.831,0,1.629-0.061,2.391-0.155  c-3.415,0.893-6.929,1.345-10.482,1.345c-4.542,0-9.017-0.741-13.318-2.205C36.76,90.507,36.839,90.51,36.919,90.514z   M72.516,86.059c2.798-2.577,4.374-5.359,4.96-6.394l0.069-0.121c0.292-0.214,0.742-0.538,1.297-0.937  c1.495-1.076,3.654-2.63,5.596-4.098C81.256,79.099,77.18,83.045,72.516,86.059z M72.501,72.021c0.1-0.342,0.333-1.039,0.608-1.82  c1.319-3.745,3.76-10.68,2.697-14.954c3.718-1.677,8.955-7.223,10.242-8.906c4.067,1.432,5.277,7.773,5.324,7.999  c-0.222,3.551-1.828,9.292-3.128,13.463c-0.329,0.725-0.687,1.459-1.045,2.15c-0.539,0.652-3.049,2.461-5.706,4.377  c-1.648,1.188-3.351,2.415-4.711,3.458c-1.068-1.421-2.946-3.859-4.303-5.283C72.475,72.503,72.393,72.389,72.501,72.021z   M92.076,50c0,0.192-0.002,0.383-0.005,0.573c-0.877-2.121-2.383-4.557-4.877-5.686c-0.204-2.906-1.801-12.047-6.574-18.138  c0.052-0.171,0.134-0.4,0.204-0.598c0.044-0.124,0.091-0.253,0.141-0.388c0.357-0.973,0.832-2.267,0.787-3.754  C88.414,29.787,92.076,39.704,92.076,50z M29.533,12.697l-2.941,3.271l-10.22,8.394C19.905,19.602,24.419,15.601,29.533,12.697z"/>
          <!-- *Created by le garage studio from the Noun Project* -->
          <animateTransform 
            id="spin" 
            attributeName="transform"
            type="rotate"
            dur="2s"
            from="0 50 50"
            to="360 50 50"
            repeatCount=".4"
            fill="freeze"
          />
        </g>
      </svg>
    </div>

    <div class="signup-form2">

      <div class="teamname-row row">
        <input type="text" style="text-align:center;" maxlength="10" id="team_name_set" class="teamname-input" placeholder="팀 명"></input>
      </div>



      <div class="yourname-row row">
        <input type="text" style="text-align:center;" maxlength="5" id="yourname_set" class="yourname-input" placeholder="팀장 이름"></input>
      </div>



      <div class="area-row row">
	    <select name="team_area" id="area_set" class="form-control">
		<option value=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp주 활동 지역</option>
		<option value="강남구">강남구</option>
		<option value="강동구">강동구</option>
		<option value="강북구">강북구</option>
		<option value="강서구">강서구</option>
		<option value="관악구">관악구</option>
		<option value="광진구">광진구</option>
		<option value="구로구">구로구</option>
		<option value="금천구">금천구</option>
		<option value="노원구">노원구</option>
		<option value="도봉구">도봉구</option>
		<option value="동대문구">동대문구</option>
		<option value="동작구">동작구</option>
		<option value="마포구">마포구</option>
		<option value="서대문구">서대문구</option>
		<option value="서초구">서초구</option>
		<option value="성동구">성동구</option>
		<option value="성북구">성북구</option>
		<option value="송파구">송파구</option>
		<option value="양천구">양천구</option>
		<option value="영등포구">영등포구</option>
		<option value="용산구">용산구</option>
		<option value="은평구">은평구</option>
		<option value="종로구">종로구</option>
		<option value="중구">중구</option>
		<option value="중랑구">중랑구</option>
	    </select>
      </div>



      <div class="time-row row">
	    <select name="time_set" id="time_set" class="form-control">
		<option value=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp주 활동 시간</option>
		<option value="평일주간">평일주간</option>
		<option value="평일야간">평일야간</option>
		<option value="주말주간">주말주간</option>
		<option value="주말야간">주말야간</option>
	    </select>
        </div>



      <div class="power-row row">
	    <select name="power_set" id="power_set" class="form-control">
		<option value=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp팀 실력</option>
		<option value="상">상</option>
		<option value="중">중</option>
		<option value="하">하</option>
	    </select>
      </div>


    </div>
    <div class="call-to-actions">
      <button id="signup1-button" type="submit" onclick="location.href='나의팀정보.html'">회원가입하기</button>
      <p><a>팀 명, 팀장 명, 활동 지역, 활동 시간, 팀 실력을 입력해주세요. 참고사항으로 사용하게 됩니다.</a></p>
    </div>

  </div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>

  
                 <!-- /. ROW  -->


              
                 <!-- /. ROW  -->           
 
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdn.jsdelivr.net/velocity/1.2.2/velocity.min.js'></script>
<script src='https://cdn.jsdelivr.net/velocity/1.2.2/velocity.ui.min.js'></script>

    <script  src="assets/js/login.js"></script>
    
   
</body>
</html>
