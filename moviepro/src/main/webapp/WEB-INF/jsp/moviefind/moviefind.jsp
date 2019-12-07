<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = (String) session.getAttribute("user_id");
    if (id == null) {
        response.sendRedirect("/login");
    }
%>
<html>
<head>
    <title>메인페이지</title>
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
            <br>
            <div style="text-align:center">
                <h1>MovieGo Cinema</h1>
                <br>
            </div>
            <div style="text-align:center">
                <form acition="/moviefind">
                    <input type="text" name="search" id="movieid" placeholder="영화 제목입력"
                           style="text-align:center; width:500px; height:40px; ">
                    <input type="submit" class="btn btn-info" value='영화찾기'>
                    <%--                button1_click();--%>
                </form>
            </div>
            <br>
            <div>
                <%--                <div id="movie-val"></div> &lt;%&ndash; 검색 결과 &ndash;%&gt;--%>
                <c:forEach var="movie" items="${result}" varStatus="status">
                    <hr width=\"100%\" noshade/>
                    <b><font size='5'>[${movie.idmovies}]${movie.title}</font></b>&nbsp;&nbsp;&nbsp;
                    <small class=\"text-muted\">${movie.releasedate}</small>
                    <br>
                    장르:&nbsp;${movie.moviegroup}
                    <div style="float: right">
                        <a href="/movieinfo?movie_id=${movie.idmovies}" class="btn btn-info">영화보기</a>
                    </div>
                </c:forEach>
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
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="js/moviefind.js"></script>

</body>
</html>
