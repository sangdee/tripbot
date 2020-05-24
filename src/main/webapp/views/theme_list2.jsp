<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TripBot</title>

    <!-- Bootstrap core CSS -->
    <link href="/views/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/views/css/blog-home.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/">TripBot</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">

                <li class="nav-item">
                    <a class="nav-link disabled">${user.name}님 안녕하세요</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">로그아웃</a>
                </li>
              </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <h1 class="my-4">#테마여행
            </h1>
            <hr>
            <strong>총<span id="totalCnt">${count}</span>건</strong>
            <hr>
            <!-- Blog Post -->
            <c:forEach var="theme" items="${list}">
                <div class="card mb-4">
                    <img class="card-img-top" src="${theme.imageUrl}" alt="Card image cap">
                    <div class="card-body">
                        <h2 class="card-title">${theme.title}</h2>
                        <p class="card-text">${theme.location}</p>
                        <form action="/theme_detail.do">
                            <input type="hidden" name="no" value="${theme.no}">
                        <input type="submit" value="보러가기" class="btn btn-primary">
                        </form>
                    </div>
                    <div class="card-footer text-muted">
                        <ul class="pagination justify-content-center mb-4">
                            <li class="page-item disabled">
                                <a class="page-link" href="#">${theme.theme}</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <hr>
            </c:forEach>

            <!-- Pagination -->
            <ul class="pagination justify-content-center mb-4">
                <li class="page-item">
                    <a class="page-link" href="#">&larr; 이전</a>
                </li>
                <li class="page-item disabled">
                    <a class="page-link" href="#">다음 &rarr;</a>
                </li>
            </ul>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

            <!-- Search Widget -->
            <div class="card my-4">
                <h5 class="card-header">검색</h5>
                <div class="card-body">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                <button class="btn btn-secondary" type="button">이동</button>
              </span>
                    </div>
                </div>
            </div>

            <!-- Categories Widget -->
            <div class="card my-4">
                <h5 class="card-header">#테마</h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#">#혼자여행</a>
                                </li>
                                <li>
                                    <a href="#">#숨은관광지</a>
                                </li>
                                <li>
                                    <a href="#">#한옥</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#">#힐링</a>
                                </li>
                                <li>
                                    <a href="#">#문화유산</a>
                                </li>
                                <li>
                                    <a href="#">#액티비티</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; TripBot</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="/views/vendor/jquery/jquery.min.js"></script>
<script src="/views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
