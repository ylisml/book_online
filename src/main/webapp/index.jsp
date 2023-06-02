<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link  rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./css/quick-website.css">
    <title>图书管理索引系统</title>
    <script>
        window.addEventListener("load", function() {
            setTimeout(function() {
                document.querySelector('body').classList.add('loaded');
            }, 300);
        });
    </script>
</head>
<body>
    <!-- 加载 过渡页 -->
    <div class="preloader">
        <div class="spinner-border text-primary" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- 消息提示 横幅 -->
<%--    <c:forEach items="${}" var="#">--%>
    <form action="#" method="post">
        <a href="#" class="btn btn-block btn-dark text-truncate rounded-0 py-2 d-none d-lg-block" style="z-index: 1000;" target="_blank">
            <strong>
<%--                ${#.#}--%>
            </strong>
        </a>
    </form>
<%--    </c:forEach>--%>
    <!-- 导航栏 -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">
            <!-- logo -->
            <a class="navbar-brand" href="index.html">
                <img alt="Image placeholder" src="./img/dark.svg" id="navbar-logo">
            </a>
            <!-- Toggler -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- 按钮模块 -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mt-4 mt-lg-0 ml-auto">
                    <li class="nav-item ">
                        <a class="nav-link" href="#" id="nav_link_a">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16">
                                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                            </svg>
                            购物车
                        </a>
                    </li>
                    <li class="nav-item dropdown dropdown-animate" data-toggle="hover">
                        <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">下拉菜单</a>
                        <div class="dropdown-menu dropdown-menu-single">
                            <a href="#" class="dropdown-item">#</a>
                            <a href="#" class="dropdown-item">#</a>
                            <a href="#" class="dropdown-item">#</a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">#</a>
                        </div>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="./register.jsp">注册</a>
                    </li>
                </ul>
                <!-- 登录  按钮 -->
                <a class="navbar-btn btn btn-sm btn-primary d-none d-lg-inline-block ml-3" href="./login.jsp">
                    登录
                </a>
                <!-- 折叠  登录按钮 -->
                <div class="d-lg-none text-center">
                    <a href="#" class="btn btn-block btn-sm btn-warning">登录</a>
                </div>
            </div>
        </div>
    </nav>
    <br>
    <!-- 栅格系统 -->
    <div class="container">
    <!-- 获取数据表总个数 -->


    <!-- 栅格系统 框架-->
    <div class="container">
        <!-- 卡片框架 -->
        <div class="row row-cols-3">
        <!-- 循环遍历数量 -->
            <!-- 循环遍历卡片 -->
            <c:forEach items="${books}" var="book" varStatus="count">

            <!-- 卡片子框架 -->
            <div class="col">
                <!-- 返回点击的id值:${book.id} -->
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters" id="hover">
                    <div class="col-md-4">
                    <img src="#" alt="#">
                    </div>
                    <div class="col-md-8">
                    <div class="card-body">

                        <h5 class="card-title">${book.bname}</h5>
                        <p class="card-text">
                            <tr>
                                <td>书号：${book.isbn}</td><br>
                                <td>作者：${book.author}</td><br>
                                <td>创建日期：${book.createDate}</td><br>
                                <td>当前数量：${book.stock}</td><br>
                            </tr>
                        </p>
                        <p class="card-text"><small class="text-muted">价格：￥${book.price}</small></p>
                    </div>
                    </div>
                </div>
            </div>
            </div>
            <!-- 卡片子框架 结束 -->
            </c:forEach>
        </div>
        <!-- 卡片框架  结束 -->
    </div>
    <!-- 栅格系统 框架 结束-->



    <section class="slice slice-lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <!-- 蓝色圆角框 -->
                    <span class="badge badge-primary badge-pill">当前环境</span>、
                    <!-- 正文输入框 -->
                    <h2 class="lh-180 mt-4 mb-6">阅读排行榜</h2>
                </div>
            </div>
            <!-- 九宫格 方格 -->
            <div class="row mx-lg-n4">
                <!-- - Col 1 -->
                <div class="col-lg-4 col-md-6 px-lg-4">
                    <div class="card shadow-none">
                        <div class="p-3 d-flex"  id = "colhover">
                            <div>
                                <div class="icon icon-shape rounded-circle bg-warning text-white mr-4">
                                    <i data-feather="check"></i>
                                </div>
                            </div>
                            <div>
                                <span class="h6">名人名著</span>
                                <p class="text-sm text-muted mb-0">
                                    月销量 110+&nbsp;&nbsp;&nbsp;&nbsp;年销量 3.8w
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 px-lg-4">
                    <div class="card shadow-none">
                        <div class="p-3 d-flex"  id = "colhover">
                            <div>
                                <div class="icon icon-shape rounded-circle bg-primary text-white mr-4">
                                    <i data-feather="check"></i>
                                </div>
                            </div>
                            <div>
                                <span class="h6">海外诗集</span>
                                <p class="text-sm text-muted mb-0">
                                    月销量 99+&nbsp;&nbsp;&nbsp;&nbsp;年销量 3.4w
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 px-lg-4">
                    <div class="card shadow-none">
                        <div class="p-3 d-flex"  id = "colhover">
                            <div>
                                <div class="icon icon-shape rounded-circle bg-danger text-white mr-4">
                                    <i data-feather="check"></i>
                                </div>
                            </div>
                            <div>
                                <span class="h6">国学经典</span>
                                <p class="text-sm text-muted mb-0">
                                    月销量 93+&nbsp;&nbsp;&nbsp;&nbsp;年销量 3.1w
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 px-lg-4">
                    <div class="card shadow-none">
                        <div class="p-3 d-flex"  id = "colhover">
                            <div>
                                <div class="icon icon-shape rounded-circle bg-success text-white mr-4">
                                    <i data-feather="check"></i>
                                </div>
                            </div>
                            <div>
                                <span class="h6">民俗文化</span>
                                <p class="text-sm text-muted mb-0">
                                    月销量 83+&nbsp;&nbsp;&nbsp;&nbsp;年销量 2.6w
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 px-lg-4">
                    <div class="card shadow-none">
                        <div class="p-3 d-flex"  id = "colhover">
                            <div>
                                <div class="icon icon-shape rounded-circle bg-info text-white mr-4">
                                    <i data-feather="check"></i>
                                </div>
                            </div>
                            <div>
                                <span class="h6">艺术生活</span>
                                <p class="text-sm text-muted mb-0">
                                    月销量 79+&nbsp;&nbsp;&nbsp;&nbsp;年销量 2.3w
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 px-lg-4">
                    <div class="card shadow-none">
                        <div class="p-3 d-flex"  id = "colhover">
                            <div>
                                <div class="icon icon-shape rounded-circle bg-warning text-white mr-4">
                                    <i data-feather="check"></i>
                                </div>
                            </div>
                            <div>
                                <span class="h6">政法财税</span>
                                <p class="text-sm text-muted mb-0">
                                    月销量 75+&nbsp;&nbsp;&nbsp;&nbsp;年销量 2.1w
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Features - Col 3 -->
                <div class="col-lg-4 col-md-6 px-lg-4">
                    <div class="card shadow-none">
                        <div class="p-3 d-flex" id = "colhover">
                            <div>
                                <div>
                                    <div class="icon icon-shape rounded-circle bg-info text-white mr-4">
                                        <i data-feather="check"></i>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <span class="h6">红色文学</span>
                                <p class="text-sm text-muted mb-0">
                                    月销量 69+&nbsp;&nbsp;&nbsp;&nbsp;年销量 1.8w
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 px-lg-4">
                    <div class="card shadow-none">
                        <div class="p-3 d-flex" id = "colhover">
                            <div>
                                <div>
                                    <div class="icon icon-shape rounded-circle bg-danger text-white mr-4">
                                        <i data-feather="check"></i>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <span class="h6">影视原著</span>
                                <p class="text-sm text-muted mb-0">
                                    月销量 61+&nbsp;&nbsp;&nbsp;&nbsp;年销量 1.4w
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 px-lg-4">
                    <div class="card shadow-none">
                        <div class="p-3 d-flex" id = "colhover">
                            <div>
                                <div>
                                    <div class="icon icon-shape rounded-circle bg-primary text-white mr-4">
                                        <i data-feather="check"></i>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <span class="h6">少儿教育</span>
                                <p class="text-sm text-muted mb-0">
                                    月销量 58+&nbsp;&nbsp;&nbsp;&nbsp;年销量 1.1w
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <footer class="position-relative" id="footer-main">
        <div class="footer pt-lg-7 footer-dark bg-dark">
            <!-- SVG shape -->
            <div class="shape-container shape-line shape-position-top shape-orientation-inverse">
                <svg width="2560px" height="100px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="none" x="0px" y="0px" viewBox="0 0 2560 100" style="enable-background:new 0 0 2560 100;" xml:space="preserve" class=" fill-section-secondary">
                    <polygon points="2560 0 2560 100 0 100"></polygon>
                </svg>
            </div>
            <!-- 末尾部分 -->
            <div class="container pt-4">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <!-- 左下角 logo -->
                        <a href="#">
                            <img alt="Image placeholder" src="./img/light.svg" id="footer-logo">
                        </a>
                        <!-- 左下角文字索引 -->
                        <p class="mt-4 text-sm opacity-8 pr-lg-4">图书管理索引系统</p>
                    </div>
                    <div class="col-lg-2 col-6 col-sm-4 ml-lg-auto mb-5 mb-lg-0">
                        <h6 class="heading mb-3">按钮组1</h6>
                        <ul class="list-unstyled">
                            <li><a href="#">按钮组1</a></li>
                            <li><a href="#">按钮组1</a></li>
                            <li><a href="#">按钮组1</a></li>
                            <li><a href="#">按钮组1</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-6 col-sm-4 mb-5 mb-lg-0">
                        <h6 class="heading mb-3">按钮组2</h6>
                        <ul class="list-unstyled">
                            <li><a href="#">按钮组2</a></li>
                            <li><a href="#">按钮组2</a></li>
                            <li><a href="#">按钮组2</a></li>
                            <li><a href="#">按钮组2</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-6 col-sm-4 mb-5 mb-lg-0">
                        <h6 class="heading mb-3">按钮组3</h6>
                        <ul class="list-unstyled">
                            <li><a href="#">按钮组3</a></li>
                            <li><a href="#">按钮组3</a></li>
                            <li><a href="#">按钮组3</a></li>
                        </ul>
                    </div>
                </div>
                <hr class="divider divider-fade divider-dark my-4">
                <div class="row align-items-center justify-content-md-between pb-4">
                    <div class="col-md-6">
                        <!-- 左下 版权标识 -->
                        <div class="copyright text-sm font-weight-bold text-center text-md-left">
                            &copy; 2023. All rights reserved
                        </div>
                    </div>
                    <div class="col-md-6">
                        <ul class="nav justify-content-center justify-content-md-end mt-3 mt-md-0">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    按钮组
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    按钮组
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    按钮组
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="./js/bootstrap.bundle.js"></script>
    <script src="./js/bootstrap.js"></script>
    <script src="./js/jquery-3.6.0.min.js"></script>
    <script src="./js/Rolling_line.js"></script>
</body>
</html>