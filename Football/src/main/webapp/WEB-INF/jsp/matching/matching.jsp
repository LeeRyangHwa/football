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
                <div class="row">
                    <div class="col-md-10">
                     <h4><strong>내가 등록한 매칭</strong></h4>   
                    </div>
		
		    <div class="col-md-10">
			<table class="table table-hover">
			    <thead>
				<th><input type="checkbox" name="_selected_all_"></th><!--selected all을 클릭했을때 전체 선택기능과 전체 해제기능 구상해야함!!!.-->
				<th>등록시간</th>
				<th>제목</th>
				<th>경기지역</th>
				<th>경기날짜</th>
				<th>등록팀</th>
				<th>매칭상태</th>
			    </thead>
			    <tbody>
			      <tr style = "cursor:pointer;">
				<td onClick="javascript:;"><input type="checkbox" name="_selected_" value="ROW_1"></td>
				<td>11.05</td>
				<td><a href="매칭글 상세정보.html">이곳에 간략한 제목을 입력해주세요.</a></td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="info" align=center><strong>홈</strong></td>
			      </t
			    </tbody>
			</table>
		<a class="btn btn-default" href="#">글삭제</a>&nbsp<a class="btn btn-default" href="매칭상태변경.html" onClick="window.open(this.href, '', 'width=250, height=150'); return false;">상태변경</a>
		<hr/>
			</div>


		<div class="text-center col-md-10">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>





                    <div class="col-md-10">
                     <h4><strong>내가 지원한 매칭</strong></h4>   
                    </div>
		
		    <div class="col-md-10">
			<table class="table table-hover">
			    <thead>
				<th><input type="checkbox" name="_selected_all_"></th><!--selected all을 클릭했을때 전체 선택기능과 전체 해제기능 구상해야함!!!.-->
				<th>지원시간</th>
				<th>상대 매칭 제목</th>
				<th>경기지역</th>
				<th>경기날짜</th>
				<th>매칭상태</th>
			    </thead>
			    <tbody>
			      <tr style = "cursor:pointer;" >
				<td><input type="checkbox" name="_selected_" value="ROW_1"></td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.05</td>
				<td onClick = " location.href='매칭글 상세정보.html'">이곳에 간략한 제목을 입력해주세요.</td>
				<td onClick = " location.href='매칭글 상세정보.html'">지역(구)</td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.06</td>
				<td class="info" align=center><strong>홈</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;">
				<td><input type="checkbox" name="_selected_" value="ROW_2"></td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.05</td>
				<td onClick = " location.href='매칭글 상세정보.html'">이곳에 간략한 제목을 입력해주세요</td>
				<td onClick = " location.href='매칭글 상세정보.html'">지역(구)</td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.06</td>
				<td class="success" align=center><strong>원정</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;">
				<td><input type="checkbox" name="_selected_" value="ROW_3"></td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.05</td>
				<td onClick = " location.href='매칭글 상세정보.html'">이곳에 간략한 제목을 입력해주세요</td>
				<td onClick = " location.href='매칭글 상세정보.html'">지역(구)</td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.06</td>
				<td class="danger" align=center><strong>매칭완료</strong></td>
			      </tr>
			    </tbody>
			</table>
		<a class="btn btn-default" href="#">지원취소</a>
		<hr/>
			</div>


		<div class="text-center col-md-10">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>






                    <div class="col-md-10">
                     <h4><strong>매칭 게시글</strong></h4>   
                    </div>

		    <div class="col-md-10">
			<table class="table table-hover">
			    <thead>
				<th>등록시간</th>
				<th>제목</th>
				<th>경기지역</th>
				<th>경기날짜</th>
				<th>등록팀</th>
				<th>매칭상태</th>
			    </thead>
			    <tbody>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">
				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요.</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="info" align=center><strong>홈</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="success" align=center><strong>원정</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='#'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="danger" align=center><strong>매칭완료</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">
				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요.</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="info" align=center><strong>홈</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="success" align=center><strong>원정</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="danger" align=center><strong>매칭완료</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">
				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요.</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="info" align=center><strong>홈</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="success" align=center><strong>원정</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="danger" align=center><strong>매칭완료</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='#'">
				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요.</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="info" align=center><strong>홈</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="success" align=center><strong>원정</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="danger" align=center><strong>매칭완료</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">
				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요.</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="info" align=center><strong>홈</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="success" align=center><strong>원정</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;" onClick = " location.href='매칭글 상세정보.html'">

				<td>11.05</td>
				<td>이곳에 간략한 제목을 입력해주세요</td>
				<td>지역(구)</td>
				<td>11.06</td>
				<td>팀 이름</td>
				<td class="danger" align=center><strong>매칭완료</strong></td>
			      </tr>
			    </tbody>
			</table>

		<hr/>
		<a class="btn btn-default" href="매칭글등록.html" onClick="window.open(this.href, '', 'width=500, height=600'); return false;">글쓰기</a>
		    </div>



		<div class="text-center col-md-10">
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
