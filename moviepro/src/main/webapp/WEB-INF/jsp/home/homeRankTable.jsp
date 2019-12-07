<%@ page import="com.pro.moviepro.dto.CurrentMovie" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: iyran
  Date: 2019-08-31
  Time: 오전 1:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<table>
    <tr height="100">
    </tr>
    <tr>
        <td width="750">
            <h2>실시간 영화순위</h2>
            <table class="table table-dark">
                <thead>
                <tr>
                    <th scope="col" width="65">순위</th>
                    <th scope="col" width="400">제목</th>
                    <th scope="col" width="85">예매율</th>
                    <th scope="col" width="200">시청연령</th>
                </tr>
                </thead>
                <tbody>

                <% int rank=0;%>
                <c:forEach var="movieRank" items="${movieRank}">
                    <%rank++;%>
                    <tr>
                        <th scope="row" style="text-align: center"><%=rank%></th>
                        <td>${movieRank.getTitle()}</td>
                        <td style="text-align: center">${movieRank.getTicketing()}</td>
                        <td>${movieRank.getAgeGroup()}</td>
                    </tr>

                </c:forEach>

                </tbody>
            </table>
        </td>
        <td width = "100">
        </td>
        <td width="500">
            <h2>현재상영영화 평점랭킹</h2>
            <table class="table">
                <thead class="thead-light">
                <tr>
                    <th scope="col" width="75">순위</th>
                    <th scope="col" width="350">제목</th>
                    <th scope="col" width="75">평점</th>
                </tr>
                </thead>
                <tbody>
                <% int pointrank=0;%>

                <c:forEach var="moviePoint" items="${moviePointList}">

                    <%pointrank++;%>
                    <tr>
                        <th scope="row" style="text-align: center"><%=pointrank%></th>
                        <td>${moviePoint.getTitle()}</td>
                        <td style="text-align: center">${moviePoint.getPoint()}</td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </td>
        <td width="100"></td>
    </tr>
    <tr>
    </tr>
    <td height="100">
    </td>
</table>
</body>
</html>
