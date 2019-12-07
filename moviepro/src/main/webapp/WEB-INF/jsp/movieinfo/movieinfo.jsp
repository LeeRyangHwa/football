<%@ page import="java.util.jar.Attributes" %>
<%@ page import="com.pro.moviepro.dto.Movies" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = (String) session.getAttribute("user_id");
    if (id == null) {
        response.sendRedirect("/login");
    }
%>
<html>
<head>
    <title>MovieGo</title>
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
            <!--    페이지 소스코드                       -->
            <table width="100%">
                <tr>
                    <td style="background-color:#ddd;width:280px;">
                        <img src="${movieimg}" width="278" height="365">
                    </td>
                    <td style="background-color:#ddd;height:60px;">

                        <div class="card mt-4">
                            <div class="card-body">
                                <h3 class="card-title">${movieinfo.title}</h3>
                                <h5>장르: ${movieinfo.moviegroup}</h5>
                                <h5>개봉일: ${movieinfo.releasedate}</h5>
                                <br>
                                <h5>줄거리</h5>
                                <p class="card-text">${moviesummary}</p>
                                점수 &ensp;
                                <span class="text-warning">
                                <%
                                    Movies movie = (Movies) request.getAttribute("movieinfo");
                                    double score = movie.getAveragescore() / 2;
                                    for (int i = 0; i < 5; i++) {

                                        if (score > 0.49) {
                                %>
                                    &#9733;
                                    <%
                                    } else {
                                    %>
                                    &#9734;
                                <%
                                        }
                                        score = score - 1;
                                    }
                                %>
                                </span>
                                <div style="float: right;" >
                                    <%
                                        int check = (int) request.getAttribute("movielike");
                                        if(check==1){%>
                                    <button class="btn btn-outline-secondary" id="check-val" onclick="movie_click(${movieinfo.idmovies},'${user}')">
                                        <b style="color:red">취소</b>
                                    </button>
                                    <%
                                    }else{
                                    %>
                                    <button class="btn btn-outline-secondary" id="check-val" onclick="movie_click(${movieinfo.idmovies},'${user}')">
                                        <b style="color:blue">좋아요</b>
                                    </button>
                                    <%}%>
                                </div>
                            </div>
                        </div>

                    </td>
                </tr>
            </table>
            <!--    ==================================== -->
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
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="js/movieinfo.js"></script>

</body>
</html>