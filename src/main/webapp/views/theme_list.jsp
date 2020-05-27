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
    <link href="views/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="views/css/blog-home.css" rel="stylesheet">

</head>

<body>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <h1 class="my-4"><a href="/theme_list.do">#테마여행</a>
            </h1>
            <hr>
            <strong>총 ${count}건</strong>
            <hr>
            <br>
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
                <c:if test="${!page.first}">
                    <li class="page-item">
                        <a class="page-link" href="?page=${page.number-1}">&larr; Older</a>
                    </li>
                </c:if>
                <c:if test="${!page.last}">
                    <li class="page-item">
                        <a class="page-link" href="?page=${page.number+1}">Newer &rarr;</a>
                    </li>
                </c:if>
            </ul>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

            <!-- Search Widget -->
            <div class="card my-4">
                <h5 class="card-header">검색</h5>
                <div class="card-body">
                    <div class="input-group">
                        <form action="/search.do">
                            <input type="text" class="form-control" name="keyword" placeholder="Search for..."><span
                                class="input-group-btn">
                <button class="btn btn-secondary" type="submit">이동</button>
              </span>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Categories Widget -->
            <div class="card my-4">
                <h5 class="card-header">Categories</h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <form action="/theme_choice.do">
                                        <input type="hidden" name="theme" value="#힐링">
                                        <button class="btn btn-secondary" type="submit">#힐링</button>
                                    </form>
                                    <br>
                                </li>
                                <li>
                                    <form action="/theme_choice.do">
                                        <input type="hidden" name="theme" value="#맛집">
                                        <button class="btn btn-secondary" type="submit">#맛집</button>
                                    </form>
                                    <br>
                                </li>
                                <li>
                                    <form action="/theme_choice.do">
                                        <input type="hidden" name="theme" value="#액티비티">
                                        <button class="btn btn-secondary" type="submit">#액티비티</button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <form action="/theme_choice.do">
                                        <input type="hidden" name="theme" value="#문화유산">
                                        <button class="btn btn-secondary" type="submit">#문화유산</button>
                                    </form>
                                    <br>
                                </li>
                                <li>
                                    <form action="/theme_choice.do">
                                        <input type="hidden" name="theme" value="#숨은명소">
                                        <button class="btn btn-secondary" type="submit">#숨은명소</button>
                                    </form>
                                    <br>
                                </li>
                                <li>
                                    <form action="/theme_choice.do">
                                        <input type="hidden" name="theme" value="#가족">
                                        <button class="btn btn-secondary" type="submit">#가족</button>
                                    </form>
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
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="views/vendor/jquery/jquery.min.js"></script>
<script src="views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
