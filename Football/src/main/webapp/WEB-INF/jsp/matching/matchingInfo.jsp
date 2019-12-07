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
</head>
<body>
     
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand"  href="메인.html"><i class="fa fa-square-o "></i>&nbsp;Football Match</a>
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
                        <a href="경기장목록.html"><i class="	glyphicon glyphicon-heart" aria-hidden="true"></i>경기장</a>
                    </li>
                    <li>
                        <a href="#"><i class=	"glyphicon glyphicon-user"></i>팀<span class="fa arrow"></span></a>
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
            <div id="page-inner">
                <div class="row" style="margin-left:50px;margin-top:50px;">
                   
		<div class="col-md-9">
                        <h4>이곳에 해당 매칭글 제목을 넣어주세요.</h4>
                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>
                                <tr>
                                    <td rowspan="3" align="center" ><img src="assets/img/teamlogo1.png" class="img-responsive" /></td>
                                    <th class="info">팀명</td>
                                    <td>서울레드불</td>
                                    <th class="info">매너평가</td>
                                    <td>4.3</td>
                                </tr>
                                <tr>
                                    <th class="info">경기지역</th>
                                    <td>강북구</td>
                                    <th class="info">경기장</td>
		       		    <td>월드컵경기장</td>
                                </tr>
                                <tr>
                                    <th class="info">경기 시간</td>
                                    <td>11.06 13:00</td>
                                    <th class="info">대관료</td>
                                    <td>50,000</td>
                                </tr>
                                <tr>
		        <td style="text-align:center;"><a href="상대팀정보자세히보기.html" class="btn btn-info" role="button">팀 상세정보</a></td>
                                    <th class="success">매칭상태</th>
                                    <td class>원정</td>
                                    <th class="info">팀장번호</td>
                                    <td>010-2240-3237</td>
                                </tr>
		    <tr>
                                    <td colspan="5" align="center" class="info"><strong>상 세 내 용</strong></th>
                                    
                                </tr>
		    <tr>
                                 
                                    <td colspan="5" align="center"> 11.06 13:00에  경기합니다 많은매칭신청 부탁해요~^^</th>
                                    
                                </tr>
                            </tbody>
                        </table>

                    </div>









		<div class="col-md-9">
                        <h4>신청 정보&emsp;&nbsp;&nbsp;
				<input class="btn btn-default pull-right" type="submit" value="매칭지원">
			</h4>


                        <div class="table table-hover" >
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>신청번호</th>
                                        <th>팀명</th>
                                        <th>평균나이</th>
                                        <th>활동지역</th>
                                        <th>활동시간</th>
                                        <th>매너점수</th>
                                        <th>팀장 전화번호</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="success" style = "cursor:pointer;" onClick = " location.href='#'">
                                        <td>1</td>
                                        <td>팀명</td>
                                        <td>22.3</td>
                                        <td>성북구</td>

                                        <td>평일야간</td>
                                        <td>3.4</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="info" style = "cursor:pointer;" onClick = " location.href='#'">
                                        <td>2</td>
                                        <td>팀명</td>
                                        <td>22.3</td>
                                        <td>성북구</td>

                                        <td>평일야간</td>
                                        <td>3.4</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="warning" style = "cursor:pointer;" onClick = " location.href='#'">
                                        <td>3</td>
                                        <td>팀명</td>
                                        <td>22.3</td>
                                        <td>성북구</td>

                                        <td>평일야간</td>
                                        <td>3.4</td>
                                        <td>01024854456</td>
                                    </tr>
		         <tr class="danger" style = "cursor:pointer;" onClick = " location.href='#'">
                                        <td >4</td>
                                        <td>팀명</td>
                                        <td>22.3</td>
                                        <td>성북구</td>

                                        <td>평일야간</td>
                                        <td>3.4</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="success" style = "cursor:pointer;" onClick = " location.href='#'">
                                        <td>5</td>
                                        <td>팀명</td>
                                        <td>22.3</td>
                                        <td>성북구</td>

                                        <td>평일야간</td>
                                        <td>3.4</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="info" style = "cursor:pointer;" onClick = " location.href='#'">
                                        <td>6</td>
                                        <td>팀명</td>
                                        <td>22.3</td>
                                        <td>성북구</td>

                                        <td>평일야간</td>
                                        <td>3.4</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="warning" style = "cursor:pointer;" onClick = " location.href='#'">
                                        <td>7</td>
                                        <td>팀명</td>
                                        <td>22.3</td>
                                        <td>성북구</td>

                                        <td>평일야간</td>
                                        <td>3.4</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="danger" style = "cursor:pointer;" onClick = " location.href='#'">
                                        <td>8</td>
                                        <td>팀명</td>
                                        <td>22.3</td>
                                        <td>성북구</td>

                                        <td>평일야간</td>
                                        <td>3.4</td>
                                        <td>01024854456</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

		<div class="text-left col-md-9">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>


                    </div>





                              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->           
    </div>
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
    
   
</body>
</html>
