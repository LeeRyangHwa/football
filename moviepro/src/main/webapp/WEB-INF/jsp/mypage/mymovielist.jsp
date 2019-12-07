<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <c:forEach var="movie" items="${mymovieInfo}" varStatus="status">

        <tr>
            <td>${movie.idmovies}</td>
            <td>${movie.title}</td>
            <td>${movie.moviegroup}</td>
            <td>${movie.releasedate}</td>
            <td>
                <button type="button" class="btn btn-outline-danger" onclick="mymovie_click(${movie.idmovies},'${user}')">
                    취소
                        <script>
                        function Moviecheck(id) {
                        var moviedata;
                        console.log(id);
                        $.ajax({
                        type : "POST",
                async:false,  //ajax는 리턴값을 가져오려면 동기방식으로 해야함
                url : "/RemovieMymovie",
                contentType : "application/json;charset=utf-8",
                data : JSON.stringify(id),
                dataType : "text",
                success: function (data) {
                moviedata = data;
                },
                error: function () {
                alert("error");
                }
                });
                return moviedata;
                }
                function mymovie_click(movieid, userid) {
                var id = movieid;
                var check = Moviecheck(id+","+userid);

                //alert(result);
                location.reload();
                }
                </script>
                </button>
            </td>
        </tr>
    </c:forEach>
    <!--    -->
    </tbody>
</table>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</body>
</html>