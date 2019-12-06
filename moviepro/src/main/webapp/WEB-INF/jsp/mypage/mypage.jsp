<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = (String) session.getAttribute("user_id");
    if (id == null) {
        response.sendRedirect("/login");
    }
%>
<html>
<head>
    <title>마이페이지</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
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
            <table>
                <tr>
                    <td>
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">${modelinfo.id}님의 DATA카드</h5>
                                <h6 class="card-subtitle mb-2 text-muted">${modelinfo.email}</h6>
                                <br>
                                <p class="card-text">나의 키워드       <b>${bestkeyword}</b></p>
                                <p class="card-text">나의 영화타입     <b>${bestType}</b></p>
<%--                                <a href="#" class="card-link">Card link</a>--%>
<%--                                <a href="#" class="card-link">Another link</a>--%>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div style="width:800px">
                            <canvas id="myChart"></canvas>
                        </div>

                        <script>
                            // 우선 컨텍스트를 가져옵니다.
                            var ctx = document.getElementById("myChart").getContext('2d');
                            /*
                            - Chart를 생성하면서,
                            - ctx를 첫번째 argument로 넘겨주고,
                            - 두번째 argument로 그림을 그릴때 필요한 요소들을 모두 넘겨줍니다.
                            */
                            var keyword_key = ${keyword_key};
                            var keyword_value = ${keyword_value};


                            var myChart = new Chart(ctx, {
                                type: 'bar',
                                data: {
                                    labels: keyword_key,
                                    datasets: [{
                                        label: 'count',
                                        data: keyword_value,
                                        backgroundColor: [
                                            'rgba(255, 99, 132, 0.2)',
                                            'rgba(54, 162, 235, 0.2)',
                                            'rgba(255, 206, 86, 0.2)',
                                            'rgba(75, 192, 192, 0.2)',
                                            'rgba(153, 102, 255, 0.2)',
                                            'rgba(255, 159, 64, 0.2)'
                                        ],
                                        borderColor: [
                                            'rgba(255,99,132,1)',
                                            'rgba(54, 162, 235, 1)',
                                            'rgba(255, 206, 86, 1)',
                                            'rgba(75, 192, 192, 1)',
                                            'rgba(153, 102, 255, 1)',
                                            'rgba(255, 159, 64, 1)'
                                        ],
                                        borderWidth: 1
                                    }]
                                },
                                options: {
                                    maintainAspectRatio: true, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
                                    scales: {
                                        yAxes: [{
                                            ticks: {
                                                beginAtZero:true
                                            }
                                        }]
                                    }
                                }
                            });
                        </script>
                    </td>
                </tr>
                <tr>
                    <jsp:include page="mymovielist.jsp"></jsp:include>
                </tr>
            </table>

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

</body>
</html>
