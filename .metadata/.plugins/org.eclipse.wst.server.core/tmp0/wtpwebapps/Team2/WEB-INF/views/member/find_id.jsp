<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>아이디 찾기 페이지</title>
    <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
    <link rel="stylesheet" media="screen" href="resources/css/theme.css">
    <link rel="stylesheet" media="screen" href="resources/css/common/page-loading.css">
    <!-- SEO Meta Tags-->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords"
        content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="resources/css/vendor/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="resources/css/vendor/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="resources/css/vendor/flatpickr.min.css" />
    <!-- 직접 작성한 Styles -->
    <link rel="stylesheet" media="screen" href="resources/css/common/common.css">
    <link rel="stylesheet" media="screen" href="resources/css/common/header-footer.css">
    <link rel="stylesheet" media="screen" href="resources/css/sign_up.css">
</head>

<body>
    <div class="page">
        <h1 class="logo"><a href="${path}/">나만의 박물관</a></h1>

        <div class="login">
            <h1>아이디 찾기</h1>
        </div>
        <hr style="
        margin-top: 10px;
        margin-bottom: 10px;
        background-color: var(--clr-green);
        border: none;
        width: 100%;
        height: 2px;">

        <form id="findId-container" name="" action="" method="post">
            <div class="sec1">


                <div class="word">
                    <h1>이름</h1>
                </div>
                <div class="onlybox">
                    <input type="name" id="name" class="textbox2" required />
                </div>


                <div class="word">
                    <h1>이메일</h1>
                </div>
                <div class="onlybox">
                    <input type="email" id="email" class="textbox2" required />
                </div>


                <div class="buttons">
                    <input type="submit" id="findId" value="아이디 찾기" class="b" style="width:100%; height: 50px;" />
                </div>

            </div>
        </form>

    </div>
    <!-- Footer-->
    <footer class="footer pt-lg-5 pt-4 footer_color text-light">
        <br> <br>
        <hr />
        <br> <br>
        <div class="footer_expression">
            © Front. 2021 Htmlstream. All rights reserved.<br>

            When you visit or interact with our sites, services or tools, we or our authorised service providers may use
            cookies for storing information to <br>
            help provide you with a better, faster and safer experience and for marketing purposes.
        </div>

        <div class="py-4 border-top border-light">
            <div class="container d-flex flex-column flex-lg-row align-items-center justify-content-between py-2">
                <!-- Copyright-->
                <p class="order-lg-1 order-2 fs-sm mb-2 mb-lg-0"><span class="text-light opacity-60">&copy; All rights
                        reserved. Made by </span><a class="nav-link-light fw-bold" href="https://createx.studio/"
                        target="_blank" rel="noopener">Createx Studio</a></p>
                <div class="d-flex flex-lg-row flex-column align-items-center order-lg-2 order-1 ms-lg-4 mb-lg-0 mb-4">
                    <!-- Links-->
                    <div class="d-flex flex-wrap fs-sm mb-lg-0 mb-4 pe-lg-4"><a class="nav-link-light px-2 mx-1"
                            href="#">About</a><a class="nav-link-light px-2 mx-1" href="#">Blog</a><a
                            class="nav-link-light px-2 mx-1" href="#">Support</a><a class="nav-link-light px-2 mx-1"
                            href="#">Contacts</a></div>
                    <div class="d-flex align-items-center">
                        <!-- Language switcher -->
                        <div class="dropdown"><a
                                class="nav-link nav-link-light dropdown-toggle fs-sm align-items-center p-0 fw-normal"
                                href="#" id="langSwitcher" data-bs-toggle="dropdown" role="button"
                                aria-expanded="false"><i class="fi-globe mt-n1 me-2 align-middle"></i>Eng</a>
                            <ul class="dropdown-menu dropdown-menu-dark my-1" aria-labelledby="langSwitcher">
                                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2"
                                            src="img/flags/de.png" width="20" alt="Deutsch">Deutsch</a></li>
                                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2"
                                            src="img/flags/fr.png" width="20" alt="Français">Français</a></li>
                                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2"
                                            src="img/flags/es.png" width="20" alt="Español">Español</a></li>
                            </ul>
                        </div>
                        <!-- Socials-->
                        <div class="ms-4 ps-lg-2 text-nowrap">
                            <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2"
                                style="color:black;" href="#">
                                <i class="fi-facebook"></i></a>
                            <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2"
                                style="color:black;" href="#">
                                <i class="fi-twitter"></i></a>
                            <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2"
                                style="color:black;" href="#">
                                <i class="fi-telegram"></i></a>
                            <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2"
                                style="color:black;" href="#">
                                <i class="fi-messenger"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll><span
            class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
            class="btn-scroll-top-icon fi-chevron-up"></i></a>

    <!-- Vendor scrits: js libraries and plugins-->
    <script src="resources/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="resources/js/vendor/simplebar.min.js"></script>
    <script src="resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
    <script src="resources/js/vendor/tiny-slider.js"></script>
    <script src="resources/js/vendor/flatpickr.min.js"></script>
    <script src="resources/js/vendor/jarallax.min.js"></script>
    <!-- Main theme script + Page Loading script -->
    <script src="resources/js/theme.js"></script>
    <script src="resources/js/page-loading.js"></script>
    
</body>

</html>