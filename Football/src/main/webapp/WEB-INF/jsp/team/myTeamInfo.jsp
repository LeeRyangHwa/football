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
                    <div class="col-md-12">
                     <h3>팀 관리</h3>
		   
                    </div>
		<div class="col-md-6">
                        <h4>나의 팀 정보&emsp;&nbsp;&nbsp;<a href="팀정보수정.html" onClick="window.open(this.href, '', 'width=400, height=430'); return false;" class="btn btn-default pull-right">팀정보 수정</a></h4>
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
                                    <th class="info">활동지역</th>
                                    <td>강북구</td>
                                    <th class="info">평균연령</td>
		       		    <td>20.3세</td>
                                </tr>
                                <tr>
                                    <th class="info">활동 시간</td>
                                    <td>주말</td>
                                    <th class="info">팀원 수</td>
                                    <td>8명</td>
                                </tr>
                                <tr>
		        <td class="info" align="center"><form type="button" class="btn btn-primary btn-xs">이미지등록하기</form></td>   <!--이곳은 이미지 파일찾는 html 파일로 이동!!-->
                                    <th class="info">축구실력</td>
                                    <td>하</td>
                                    <th class="info">팀장번호</td>
                                    <td>010-2240-3237</td>
                                </tr>
		    <tr>
                                 
                                    <td colspan="5" align="center" class="info"><strong>소 개 말</strong></th>
                                    
                                </tr>
		    <tr>
                                 
                                    <td colspan="5" align="center"> 테스트 페이지 입니다. db내용 중에 팀 정보 소개를 추가 할 예정입니다. 다시 한번 말씀드리겠습니다. 이곳은 테스트 페이지 입니다. <br> 새로운 팀원 구합니다. 서울 강북구 수유리에 위치하고 있는 축구 팀 입니다. 저희는 축구를 좋아합니다. 관심 있으신 분은 연락주시면 감사하겠습니다.<br><br><br><br><br></th>
                                    
                                </tr>
                            </tbody>
                        </table>

                    </div>


	      <div class="col-md-3 col-sm-3 col-xs-6" style="width:25%; height:400px; overflow:auto">
                        <h5>내가 등록한 경기</h5>
                        <table class="table table-hover">
			    <thead>
				<th><input type="checkbox" name="_selected_all_"></th><!--selected all을 클릭했을때 전체 선택기능과 전체 해제기능 구상해야함!!!.-->
				<th>경기지역</th>
				<th>경기날짜</th>
				<th>매칭상태</th>
			    </thead>
			    <tbody>
			      <tr style = "cursor:pointer;">
				<td><input type="checkbox" name="_selected_" value="ROW_1"></td>
				<td  onClick = " location.href='매칭글 상세정보.html'">지역(구)</td>
				<td  onClick = " location.href='매칭글 상세정보.html'">11.06</td>
				<td class="info" align=center><strong>홈</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;">
				<td><input type="checkbox" name="_selected_" value="ROW_2"></td>
				<td  onClick = " location.href='매칭글 상세정보.html'">지역(구)</td>
				<td  onClick = " location.href='매칭글 상세정보.html'">11.06</td>
				<td class="success" align=center><strong>원정</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;">
				<td><input type="checkbox" name="_selected_" value="ROW_3"></td>
				<td onClick = " location.href='매칭글 상세정보.html'">지역(구)</td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.06</td>
				<td class="danger" align=center><strong>매칭완료</strong></td>
			      </tr>
			    </tbody>
			</table>
			<a class="btn btn-default" href="#">글삭제</a>&nbsp<a class="btn btn-default" href="매칭상태변경.html" onClick="window.open(this.href, '', 'width=200, height=200'); return false;">상태변경</a>

                        <br />
                        <h5>내가 지원한 경기</h5>

		
                        <table class="table table-hover">
			    <thead>
				<th><input type="checkbox" name="_selected_all_"></th><!--selected all을 클릭했을때 전체 선택기능과 전체 해제기능 구상해야함!!!.-->
				<th>경기지역</th>
				<th>경기날짜</th>
				<th>매칭상태</th>
			    </thead>
			    <tbody>
			      <tr style = "cursor:pointer;">
				<td><input type="checkbox" name="_selected_" value="ROW_1"></td>
				<td onClick = " location.href='매칭글 상세정보.html'">지역(구)</td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.06</td>
				<td class="info" align=center><strong>홈</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;">
				<td><input type="checkbox" name="_selected_" value="ROW_2"></td>
				<td onClick = " location.href='매칭글 상세정보.html'">지역(구)</td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.06</td>
				<td class="success" align=center><strong>원정</strong></td>
			      </tr>
			      <tr style = "cursor:pointer;">
				<td><input type="checkbox" name="_selected_" value="ROW_3"></td>
				<td onClick = " location.href='매칭글 상세정보.html'">지역(구)</td>
				<td onClick = " location.href='매칭글 상세정보.html'">11.06</td>
				<td class="danger" align=center><strong>매칭완료</strong></td>
			      </tr>
			    </tbody>
			</table>
			<a class="btn btn-default" href="#">지원취소</a>
		</div>



                    </div>	






		<div class="col-md-9">
                        <h4>선수 정보&emsp;&nbsp;&nbsp;<a href="선수추가.html" onClick="window.open(this.href, '', 'width=400, height=430'); return false;" class="btn btn-default pull-right">선수 추가</a>  <!--선수추가 url로 연동-->
				<button class="btn btn-default pull-right">선수 삭제</button>   <!-- 체크한 선수 삭제 기능 구상 -->
			</h4>


                        <div class="table-responsive" >
                            <table class="table">
                                <thead>
                                    <tr>
					<th><input type="checkbox" name="_selected_all_"></th><!--selected all을 클릭했을때 전체 선택기능과 전체 해제기능 구상해야함!!!.-->
                                        <th>번호</th>
                                        <th>이름</th>
                                        <th>나이</th>
                                        <th>실력</th>
                                        <th>포지션</th>
                                        <th>프로출신여부</th>
                                        <th>전화번호</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="success">
					<td><input type="checkbox" name="_selected_" value="ROW_1"></td>
                                        <td>1</td>
                                        <td>김창식</td>
                                        <td>19</td>
                                        <td>중</td>

                                        <td>MF</td>
                                        <td>X</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="info">
					<td><input type="checkbox" name="_selected_" value="ROW_2"></td>
                                        <td>2</td>
                                        <td>김창식</td>
                                        <td>19</td>
                                        <td>중</td>

                                        <td>MF</td>
                                        <td>X</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="warning">
					<td><input type="checkbox" name="_selected_" value="ROW_3"></td>
                                        <td>3</td>
                                        <td>김창식</td>
                                        <td>19</td>
                                        <td>중</td>

                                        <td>MF</td>
                                        <td>X</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="danger">
					<td><input type="checkbox" name="_selected_" value="ROW_4"></td>
                                        <td>4</td>
                                        <td>김창식</td>
                                        <td>19</td>
                                        <td>중</td>

                                        <td>MF</td>
                                        <td>X</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="success">
					<td><input type="checkbox" name="_selected_" value="ROW_5"></td>
                                        <td>5</td>
                                        <td>김창식</td>
                                        <td>19</td>
                                        <td>중</td>

                                        <td>MF</td>
                                        <td>X</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="info">
					<td><input type="checkbox" name="_selected_" value="ROW_6"></td>
                                        <td>6</td>
                                        <td>김창식</td>
                                        <td>19</td>
                                        <td>중</td>

                                        <td>MF</td>
                                        <td>X</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="warning">
					<td><input type="checkbox" name="_selected_" value="ROW_7"></td>
                                        <td>7</td>
                                        <td>김창식</td>
                                        <td>19</td>
                                        <td>중</td>

                                        <td>MF</td>
                                        <td>X</td>
                                        <td>01024854456</td>
                                    </tr>
                                    <tr class="danger">
					<td><input type="checkbox" name="_selected_" value="ROW_8"></td>
                                        <td>8</td>
                                        <td>김창식</td>
                                        <td>19</td>
                                        <td>중</td>

                                        <td>MF</td>
                                        <td>X</td>
                                        <td>01024854456</td>
                                    </tr>
                                </tbody>
                            </table>
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
