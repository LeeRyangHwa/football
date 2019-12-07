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
                    <div class="col-md-10">
                     <h2>경기장</h2>   
                    </div>

		<div class="col-md-10">

		<div class="col-md-10" style="margin-bottom:15px;margin-top:10px;">	  
	    <select class="selectpicker" name="ground_area pull-right" id="ground_list" class="form-control">
		<option value=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp지역별</option>
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


	         </div>


	<div class="row" style="margin-left:50px;margin-top:50px;">
	          <div class="col-md-5 col-sm-5 col-xs-6">
                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>
                                <tr>
                                    <td rowspan="4" align="center" ><img src="assets/img/ground/ground1.jpg" class="img-responsive" /></td>
                                    <th class="warning">건물명</td>
                                    <td>서울 월드컵 경기장</td>
                                </tr>
                                <tr>
                                    <th class="warning">주소</th>
                                    <td>강북구 수유2동</td>
                                </tr>
                                <tr>
                                    <th class="warning">연락처</td>
                                    <td>010-2240-3237</td>
                                </tr>
                                <tr>
                                    <th class="warning">사이트</td>
                                    <td>여기에 url 등록</td>
                                </tr>
		    
		    
                            </tbody>
                        </table>
	</div>

	
	<div class="col-md-5 col-sm-5 col-xs-6">
                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>
                                <tr>
                                    <td rowspan="4" align="center" ><img src="assets/img/ground/ground1.jpg" class="img-responsive" /></td>
                                    <th class="warning">건물명</td>
                                    <td>서울 월드컵 경기장</td>
                                </tr>
                                <tr>
                                    <th class="warning">주소</th>
                                    <td>강북구 수유2동</td>
                                </tr>
                                <tr>
                                    <th class="warning">연락처</td>
                                    <td>010-2240-3237</td>
                                </tr>
                                <tr>
                                    <th class="warning">사이트</td>
                                    <td>여기에 url 등록</td>
                                </tr>
		    
		    
                            </tbody>
                        </table>



	
                    </div>



                </div>              
                 <!-- /. ROW  -->
                  


	<div class="row" style="margin-left:50px;margin-top:50px;">
	          <div class="col-md-5 col-sm-5 col-xs-6">
                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>
                                <tr>
                                    <td rowspan="4" align="center" ><img src="assets/img/ground/ground1.jpg" class="img-responsive" /></td>
                                    <th class="warning">건물명</td>
                                    <td>서울 월드컵 경기장</td>
                                </tr>
                                <tr>
                                    <th class="warning">주소</th>
                                    <td>강북구 수유2동</td>
                                </tr>
                                <tr>
                                    <th class="warning">연락처</td>
                                    <td>010-2240-3237</td>
                                </tr>
                                <tr>
                                    <th class="warning">사이트</td>
                                    <td>여기에 url 등록</td>
                                </tr>
		    
		    
                            </tbody>
                        </table>
	</div>

	
	<div class="col-md-5 col-sm-5 col-xs-6">
                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>
                                <tr>
                                    <td rowspan="4" align="center" ><img src="assets/img/ground/ground1.jpg" class="img-responsive" /></td>
                                    <th class="warning">건물명</td>
                                    <td>서울 월드컵 경기장</td>
                                </tr>
                                <tr>
                                    <th class="warning">주소</th>
                                    <td>강북구 수유2동</td>
                                </tr>
                                <tr>
                                    <th class="warning">연락처</td>
                                    <td>010-2240-3237</td>
                                </tr>
                                <tr>
                                    <th class="warning">사이트</td>
                                    <td>여기에 url 등록</td>
                                </tr>
		    
		    
                            </tbody>
                        </table>



	
                    </div>



                </div>    






	<div class="row" style="margin-left:50px;margin-top:50px;">
	          <div class="col-md-5 col-sm-5 col-xs-6">
                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>
                                <tr>
                                    <td rowspan="4" align="center" ><img src="assets/img/ground/ground1.jpg" class="img-responsive" /></td>
                                    <th class="warning">건물명</td>
                                    <td>서울 월드컵 경기장</td>
                                </tr>
                                <tr>
                                    <th class="warning">주소</th>
                                    <td>강북구 수유2동</td>
                                </tr>
                                <tr>
                                    <th class="warning">연락처</td>
                                    <td>010-2240-3237</td>
                                </tr>
                                <tr>
                                    <th class="warning">사이트</td>
                                    <td>여기에 url 등록</td>
                                </tr>
		    
		    
                            </tbody>
                        </table>
	</div>

	
	<div class="col-md-5 col-sm-5 col-xs-6">
                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>
                                <tr>
                                    <td rowspan="4" align="center" ><img src="assets/img/ground/ground1.jpg" class="img-responsive" /></td>
                                    <th class="warning">건물명</td>
                                    <td>서울 월드컵 경기장</td>
                                </tr>
                                <tr>
                                    <th class="warning">주소</th>
                                    <td>강북구 수유2동</td>
                                </tr>
                                <tr>
                                    <th class="warning">연락처</td>
                                    <td>010-2240-3237</td>
                                </tr>
                                <tr>
                                    <th class="warning">사이트</td>
                                    <td>여기에 url 등록</td>
                                </tr>
		    
		    
                            </tbody>
                        </table>


	
                    </div>



                </div>     
	     <div class="col-md-5" style="margin-left:10px;margin-top:10px;">


	           <ul class="pagination">
	           <li class="active"><a href="#">1</a></li>
	           <li><a href="#">2</a></li>
	           <li><a href="#">3</a></li>
	           <li><a href="#">4</a></li>
	           <li><a href="#">5</a></li>
	           </ul>  



              
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
