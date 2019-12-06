<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dlfid
  Date: 2019-06-05
  Time: 오전 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'/>

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.5/css/jquery.dataTables.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.5/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" class="init">
        jQuery(function ($) {
            $("#search").DataTable();
        });
    </script>
</head>
<body>

<div>
    <div class="card mb-3">
        <div class="card-header">
            영화 검색
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <form method="post" action="/mymovie/setup">
                    <table class="display" id="search" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th align="center" width="50">ID</th>
                            <th align="center" width="300">Title</th>
                            <th align="center" width="100">개요</th>
                            <th align="center" width="200">개봉일</th>
                            <th align="right" width="20"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- 리스트 -->
                        <c:forEach var="movie" items="${movielist}" varStatus="status">
                            <tr id="addMovie">
                                <td>${movie.idmovies}</td>
                                <td>${movie.title}</td>
                                <td>${movie.moviegroup}</td>
                                <td>${movie.releasedate}</td>
                                <td>
                                    <button onclick="location.href='/mymovie/setup?movie_id=${movie.idmovies}'"
                                            type="button" class="btn btn-outline-success" id="movie_add_btn">
                                        <span data-feather="thumbs-up" style="color:green"></span>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>