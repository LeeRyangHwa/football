<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
	
	<div class="row">
                </div>        
      
                 <!-- /. ROW  -->
                  <hr />
      <!--여기서 부터 경기 리스트 뽑아주기 -->
                  <div class="row">
                      <div class="col-md-10">
                        <h4>경기장(서울)</h4>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>위치</th>
                                    <th>이름</th>
                                    <th>예약하기</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>강북구</td>
                                    <td>월드컵경기장</td>
                                    <td><a href="#" class="glyphicon glyphicon-ok" aria-hidden="true"></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>도봉구</td>
                                    <td>안재환축구장</td>
                                    <td><a href="#" class="glyphicon glyphicon-ok" aria-hidden="true"></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>곽한구</td>
                                    <td>해외경기장</td>
                                    <td><a href="#" class="glyphicon glyphicon-ok" aria-hidden="true"></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>성북구</td>
                                    <td>쌍문초등학교</td>
                                    <td><a href="#" class="glyphicon glyphicon-ok" aria-hidden="true"></a></td>
                                </tr>
                            </tbody>
                        </table>
	       </div>
                  </div>

	  <hr />

      <!--여기서 부터 매칭 리스트 뽑아주기 -->
                <div class="row">
                     <div class="col-md-10">
                        <h4>최신매칭
                        <a href="#" class="btn btn-primary">홈</a>
                        <a href="#" class="btn btn-success">원정</a></h4>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>모집시간</th>
                                        <th>활동지역</th>
                                        <th>경기날짜</th>
                                        <th>팀명</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="success">
                                        <td>10.09</td>
                                        <td>강남구</td>
                                        <td>10.10</td>
                                        <td><a href="#">오�볍맙幄値풉맙�</a></td>
                                    </tr>
                                    <tr class="info">
                                        <td>10.10</td>
                                        <td>대방구</td>
                                        <td>10.15</td>
                                        <td><a href="#">FC발포비타민</a></td>
                                    </tr>
                                    <tr class="warning">
                                        <td>10.15</td>
                                        <td>장안구</td>
                                        <td>10.17</td>
                                        <td><a href="#">도르트문트리오</a></td>
                                    </tr>
                                    <tr class="danger">
                                        <td>10.16</td>
                                        <td>지리구</td>
                                        <td>10.18</td>
                                        <td><a href="#">멘체스터유니클로</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
	</div>

	<hr />

      <!--여기서 부터 경기많이한 팀 리스트 뽑아주기 -->
                <div class="row">

                     <div class="col-md-10">


	           <ul class="pagination">
	           <li class="active"><a href="#">1</a></li>
	           <li><a href="#">2</a></li>
	           <li><a href="#">3</a></li>
	           <li><a href="#">4</a></li>
	           <li><a href="#">5</a></li>
	           </ul>

                        <div class="table">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>랭킹</th>
                                        <th>활동지역</th>
                                        <th>팀명</th>
                                        <th>나이(평균)</th>
		            <th>매너점수</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="info">
                                        <td>1</td>
                                        <td>강남구</td>
                                        <td>갓지성팀</td>
                                        <td>16</td>
                                        <td>4.3(10팀)</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>대방구</td>
                                        <td>키키카카</td>
                                        <td>42</td>
                                        <td>4.2(13팀)</td>
                                    </tr>
                                    <tr class="info">
                                        <td>3</td>
                                        <td>장안구</td>
                                        <td>국밥쓰리가</td>
                                        <td>30</td>
                                        <td>2.8(14명)</td>
                                    </tr>
                                    <tr">
                                        <td>4</td>
                                        <td>지리구</td>
                                        <td>도르트멘탈</td>
                                        <td>27</td>
                                        <td>3.3(17명)</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
	</div>

	<!-- 아래에 웹사이트 정보가 표시될 예정임 -->
	<hr/>
	<div class="row">
                    <div class="col-md-5">
                        <h5>사이트 안내</h5>
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                풋볼 매칭이란?
                            </div>
                            <div class="panel-body">
                                <p>서울 지역을 대상으로 축구경기를 성사시켜 줄 수 있는 플랫폼입니다.</p>
                            </div>
                            <div class="panel-footer">
                                고객지원 : 010-2240-3237
                            </div>
                        </div>
                    </div>
	      
                     <!--이용약관 표시될 예정임 -->
	<div class="col-md-5">
                        <h5>매칭 방법</h5>
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">팀 등록</a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                        '팀 등록'을 누르시고 나의 팀을 등록하세요.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">매칭 게시</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" style="height: auto;">
                                    <div class="panel-body">
                                       팀, 선수등록이 완료 되시면 '매칭'을 클릭하여 매칭게시글을 올리시거나 매칭게시글에 매칭을 신청 할 수 있습니다. 이때, 경기장을 구한 팀을 홈, 경기장이 없는 팀을 원정이라고 정의 합니다.

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">매칭 성사</a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                  

                                        <div class="panel-body">
                                             매칭 성사가 완료되면 상대방의 전화번호를 알 수 있습니다.
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     
	</div>

	

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
