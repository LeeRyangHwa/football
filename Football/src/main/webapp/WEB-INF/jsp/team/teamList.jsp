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
                <div class="row" style="margin-left:100px;margin-top:80px;">
                    <div class="col-md-10">
                     <h2>TEAM<br><hr/></h2>   
                    </div>

		<div class="col-md-10">
	  

                        <h4>
		팀 목록&emsp;&nbsp;&nbsp;
		  
		</h4>
	         </div>


                </div>





	<div id="teamsearch" style="margin-left:100px;margin-right:100px;">
<form name="tsearch" method="post" action="./">
<input type="hidden" name="CID" value="" />
<table class="search_table" width="100%">
<tr>
    <td width="50%">(팀 수 : 25)</td>
    <td width="50%" align="right"> 
       	    <select name="team_area_list" id="team_area_list" class="cssselect">
		<option value="">지역</option>
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

        <select name="team_manner_list" id="team_manner_list" class="cssselect">
            <option value="" selected >매너점수</option>
	            <option value="높음"  >높은순</option>
	            <option value="낮음"  >낮은순</option>
	</select>

        <select name="team_time_list" id="team_time_list" class="cssselect">
	<option value="" selected >활동시간</option>
            <option value="평일오전"  >평일오전</option>
            <option value="평일오후"  >평일오후</option>
            <option value="주말오전"  >주말오전</option>
            <option value="주말오후"  >주말오후</option>
        </select>
	</td>
</tr>
</table>
</form>
</div>

  	



	<div class="row" style="margin-left:100px;margin-right:100px;margin-top:50px;">
              <table width="100%" class="form_table">
<colgroup>
	<col width="20%" />
	<col width="20%" />
	<col width="20%" />
	<col width="20%" />
	<col width="20%" />
</colgroup>
<tbody>
<tr>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/noimage.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>

</tr>
<tr>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/noimage.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/noimage.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>

</tr>
<tr>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/noimage.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/noimage.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>

</tr>


<tr>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/noimage.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/noimage.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>

</tr>

<tr>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/noimage.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/noimage.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>
	<td class="center">
		<a href='팀간략정보.html' onClick="window.open(this.href, '', 'width=600, height=280'); return false;">
		<img src="assets/img/team/teamlogo1.png" alt="엠블럼" width="65px" height="65px" /><br />
		<b>  팀이름</b></a><br />
		지역위치<br />
		팀몇명인지		
	</td>

</tr>
</tbody>
	</table>
	</div>      
                 <!-- /. ROW  -->
                  


                     <div class="col-md-5" style="margin-left:100px;margin-right:100px;margin-top:50px;">


	           <ul class="pagination">
	           <li class="active"><a href="#">1</a></li>
	           <li><a href="#">2</a></li>
	           <li><a href="#">3</a></li>
	           <li><a href="#">4</a></li>
	           <li><a href="#">5</a></li>
	           </ul>
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
