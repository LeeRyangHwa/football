<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: iyran
  Date: 2019-09-23
  Time: 오후 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
    <style>
        body{

        }
    </style>
<body>
<br>
<blockquote class="blockquote text-center">

    <p class="mb-0">
    <h1>
    <span data-feather="star" style="color:black"></span> &nbsp;${userid}님 맞춤 영화
    </h1>
    </p>
</blockquote>
<br><br>

<div class="container" style="width: 20cm">
    <div class="card-deck">
        <!-- 카드들 -->
        <%
            int count = 0;
            List<String> imgtag = (List<String>) request.getAttribute("imgtag");
        %>
        <c:forEach var="List" items="${customMovie}" varStatus="status">
            <div class="card" style="max-width: 18rem;">
                <div class="card-header">
                    <%
                        String img = imgtag.get(count);
                        if (count < 2) {
                    %>
                    <span data-feather="heart" style="color:palevioletred"></span> 키워드추천
                    <%
                    } else {
                    %>
                    <span data-feather="trending-up" style="color:green"></span> 최신영화
                    <%
                        }
                    %>
                </div>
                <img src="<%=img%>" class="card-img-top">
                <div class="card-body">
                    <h3 class="card-title">${List.title}
                    </h3>
                </div>
                <div class="card-body">
                    <p class="card-text">
                        장르: ${List.moviegroup} <br>
                        평점: ${List.averagescore}
                    </p>
                </div>
                <div class="card-footer">
                    <div style="float: right">
                        <a href="/movieinfo?movie_id=${List.idmovies}" class="btn btn-info">영화보기</a>
                    </div>
                </div>

            </div>
            <% count++;%>
        </c:forEach>
        <!-- -->


    </div>
</div>

</body>
</html>
