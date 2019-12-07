<%--
  Created by IntelliJ IDEA.
  User: iyran
  Date: 2019-08-31
  Time: 오전 1:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400"
                 xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                 focusable="false" role="img" aria-label="Placeholder: First slide">
                <title>Placeholder</title>
                <rect width="100%" height="100%" fill="#BDBDBD">
                </rect>
                <text x="38%" y="25%" fill="#fff" font-size="40px" font-weight="900">가장 인기있는 영화</text>
                <text x="40%" y="50%" fill="#fff" font-size="20px">${imagetitle1}</text>

            </svg>
            <div class="carousel-caption d-none d-md-block">
                <img class="d-block" src=${image1} width="233"height="320">
            </div>
        </div>
        <div class="carousel-item">
            <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400"
                 xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                 focusable="false" role="img" aria-label="Placeholder: First slide">
                <title>Placeholder</title>
                <rect width="100%" height="100%" fill="#FFA7A7">
                </rect>
                <text x="38%" y="25%" fill="#fff" font-size="40px" font-weight="900">가장 인기있는 액션영화</text>
                <text x="40%" y="50%" fill="#fff" font-size="20px">${imagetitle2}</text>

            </svg>
            <div class="carousel-caption d-none d-md-block">
                <img class="d-block" src=${image2} width="233"height="320">
            </div>
        </div>
        <div class="carousel-item">
            <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100" width="800" height="400"
                 xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                 focusable="false" role="img" aria-label="Placeholder: First slide">
                <title>Placeholder</title>
                <rect width="100%" height="100%" fill="#B5B2FF">
                </rect>
                <text x="38%" y="25%" fill="#fff" font-size="40px" font-weight="900">가장 인기있는 로맨스영화</text>
                <text x="40%" y="50%" fill="#fff" font-size="20px">${imagetitle3}</text>

            </svg>
            <div class="carousel-caption d-none d-md-block">
                <img class="d-block" src=${image3} width="233"height="320">
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
</body>
</html>
