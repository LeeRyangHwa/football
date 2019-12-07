<%@ page import="java.util.jar.Attributes" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = (String) session.getAttribute("user_id");
    if (id == null) {
        response.sendRedirect("/login");
    }
%>
<html>
<head>
    <title>맞춤영화</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="/home">MoiveGo</a>
</nav>
<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="/home">
                            <span data-feather="home"></span>
                            메인
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/moviefind">
                            <span data-feather="monitor"></span>
                            영화 찾기
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/mymovie">
                            <span data-feather="star"></span>
                            맞춤 영화
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/mypage">
                            <span data-feather="users"></span>
                            마이페이지
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/login">
                            <span data-feather="log-out"></span>
                            로그아웃
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
  <!--    내용   -->
            <%
                int check = (int)request.getAttribute("check");
                if(check==1){%>
                <div>
                    <jsp:include page="movieCard.jsp" flush="false"/>
                </div>
            <%
                 }else{
            %>
            <div style="float: contour">
            <h1>맞춤영화를 설정해주세요</h1>

            <br>
            <h4>설정방법</h4>
            1. 영화설정하기 버튼 클릭<br>
            2. 재밌었던 영화를 선택


            </div>
            <%
                 }
            %>
            <br>
            <div style="float: right; margin-right: 3cm">
                <a class="btn btn-secondary" href="/mymovie/setup" role="button">
                    <span data-feather="settings" style="color:palevioletred"></span>영화 설정하기
                </a>
            </div>
        </main>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace()
</script>
<!-- Graphs -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
</body>
</html>