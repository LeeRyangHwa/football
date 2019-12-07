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
	<title>선수 추가 화면입니다.</title>
</head>
<body>
		<div class="col-md-3">
                        <h4>선수 정보&emsp;&nbsp;&nbsp;<input class="btn btn-default pull-right" type="submit" value="선수추가" onClick="window.close()"></h4>

                        <table class="table table-bordered table-hover table-responsive">
                            
                            <tbody>
                                <tr>
                                    <th class="info">번호</td>
                                    <td><input type="number" style="width:100%" id="player_num" min="1" max="99"></td><!--해당 등번호가 있을시 선수추가 에러나게끔 구성해야함.-->

                                </tr>

                                <tr>
                                    <th class="info">이름</td>
                                    <td><input type="text" style="width:100%" maxlength="5" id="player_name_set" class="playername-input"></td>

                                </tr>
                                <tr>
                                    <th class="info">나이</th>
                                    <td><input type="number" style="width:100%" id="player_age" min="1" max="99">
				    </td>

                                </tr>

                                <tr>
                                    <th class="info">축구실력</td>
                                    <td>
	    <select name="player_power_set" id="power_set" class="form-control">
		<option value="">선수 실력</option>
		<option value="상">상</option>
		<option value="중">중</option>
		<option value="하">하</option>
	    </select>
				    </td>

                                </tr>
                                <tr>
                                    <th class="info">포지션</th>
                                    <td>
	    <select name="player_position_set" id="position_set" class="form-control">
		<option value="">포지션 선택</option>
		<option value="GK">GK</option>
		<option value="DF">DF</option>
		<option value="CB">CB</option>
		<option value="SW">SW</option>
		<option value="FB/LB/RB">FB/LB/RB</option>
		<option value="WB/LWB/RWB">WB/LWB/RWB</option>
		<option value="MF">MF</option>
		<option value="CM">CM</option>
		<option value="DM">DM</option>
		<option value="AM">AM</option>
		<option value="LW/LM/RW/RM">LW/LM/RW/RM</option>
		<option value="FW">FW</option>
		<option value="CF">CF</option>
		<option value="SS">SS</option>
		<option value="LW/RW">LW/RW</option>
	    </select>
				    </td>
                                </tr>

                                <tr>
                                    <th class="info">프로출신</td>
                                    <td>
	    <select name="player_pro_set" id="pro_set" class="form-control">
		<option value="">프로 출신 여부</option>
		<option value="O">O</option>
		<option value="X">X</option>
	    </select>
				    </td>

                                </tr>
				<tr>
				    <th class="info">전화번호</th>
				    <td><input type="tel" id="playertel" maxlength="12" style="width:100%"></td>
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
