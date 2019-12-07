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
	<title>매칭글 등록 화면입니다.</title>
</head>
<body>
		<div class="col-md-3">
                        <h4>매칭 등록&emsp;&nbsp;&nbsp;<input class="btn btn-default pull-right" type="submit" value="매칭등록" onclick="window.close()"></h4>

                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>

                                <tr>
                                    <th class="info">제목</td>
                                    <td><input type="text" style="width:100%" maxlength="30" id="match_title_set" class="matchtitle-input"></td>

                                </tr>
                                <tr>
                                    <th class="info">경기 지역</th>
                                    <td>
	    <select name="match_area" id="matcharea_set" class="form-control">
		<option value=""> 경기 지역</option>
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
                                    <th class="info">경기시간</th>

                                    <td>
			<form>
			<input style="width:100%" type="datetime-local" name="matchdatetime"/></form>			
	                     </td>

                                </tr>
                                <tr>
                                    <th class="info">경기장</th>
                                    <td>	    <select name="matchground_area" id="matchground_set" class="form-control">
		<option value=""> 경기장 정보를 가져옵니다.</option>
		<option value="강남구">경기장 정보를 가져옵니다.</option>
		<option value="강동구">경기장 정보를 가져옵니다.</option>
		<option value="강북구">경기장 정보를 가져옵니다.</option>
	    </select>
		       </td>
                                </tr>

                                <tr>
                                    <th class="info">대관료</td>
                                    <td>
	   <input type="number" style="width:100%" id="ground_pay" min="100" max="1000000" maxlength="8">
				    </td>

                                </tr>

		 <tr>
                                    <th class="info">매칭상태</th>
                                    <td>	    <select name="match_status_set" id="match_status_set" class="form-control">
		<option value="매칭상태">매칭상태</option>
		<option value="홈">홈</option>
		<option value="원정">원정</option>
	    </select>
		       </td>
                                </tr>

				 <tr>
                                 
                                    <td colspan="2" align="center" class="info"><strong>상세내용</strong></th>
                                    
                                </tr>
		    <tr>
                                 
                                    <td colspan="2" align="center"><textarea style="width:100%" id="match_detail" rows="10" name="match_detail" maxlength="250"></textarea></th>
                                    
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
