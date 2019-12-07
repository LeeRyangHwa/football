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
	<title>팀 정보 수정화면입니다.</title>
</head>
<body>
		<div class="col-md-4">
                        <h4>나의 팀 정보&emsp;&nbsp;&nbsp;<input class="btn btn-default pull-right" type="submit" value="팀정보수정" onClick="window.close()"></h4>

                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>
                                <tr>
                                    <th class="info">팀명</td>
                                    <td><input type="text" style="width:100%" maxlength="10" id="team_name_set" class="teamname-input"></td>

                                </tr>
                                <tr>
                                    <th class="info">활동지역</th>
                                    <td>
	    <select name="team_area_set" id="area_set" class="form-control">
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
				    </td>

                                </tr>
                                <tr>
                                    <th class="info">활동 시간</td>
                                    <td>
	    <select name="team_time_set" id="time_set" class="form-control">
		<option value=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp주 활동 시간</option>
		<option value="평일주간">평일주간</option>
		<option value="평일야간">평일야간</option>
		<option value="주말주간">주말주간</option>
		<option value="주말야간">주말야간</option>
	    </select>
				    </td>
                                </tr>
                                <tr>
                                    <th class="info">축구실력</td>
                                    <td>
	    <select name="team_power_set" id="power_set" class="form-control">
		<option value=""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp팀 실력</option>
		<option value="상">상</option>
		<option value="중">중</option>
		<option value="하">하</option>
	    </select>
				    </td>

                                </tr>
		    <tr>
                                 
                                    <td colspan="2" align="center" class="info"><strong>소 개 말</strong></th>
                                    
                                </tr>
		    <tr>
                                 
                                    <td colspan="2" align="center"><textarea style="width:100%" id="feedback" rows="10" name="feedback" maxlength="250"></textarea></th>
                                    
                                </tr>
                            </tbody>
                        </table>

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
