<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>나만의 박물관</title>

    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/flatpickr.min.css" />
    <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
    <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
    <!-- 직접 작성한 Styles -->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
    <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
    <link rel="stylesheet" media="screen" href="${path}/resources/css/sign_up.css">
</head>

<body>
    <div class="page">
        <h1 class="logo"><a href="index.html">나만의 박물관</a></h1>

        <div class="login">
            <h1>비밀번호 찾기</h1>
        </div>
        <hr style="
        margin-top: 10px;
        margin-bottom: 10px;
        background-color: var(--clr-green);
        border: none;
        width: 100%;
        height: 2px;">

        <form id="findPw-container" name="" action="" method="post">
            <div class="sec1">

                <div class="word">
                    <h1>이름</h1>
                </div>
                <div class="onlybox">
                    <input type="name" id="name" class="textbox2" required />
                </div>

                <div class="word">
                    <h1>아이디</h1>
                </div>
                <div class="onlybox">
                    <input type="text" name="id" id="Id" class="textbox2" required> 
                </div>

                <div class="word">
                    <h1>이메일</h1>
                </div>
                <div class="onlybox">
                    <input type="email" id="email" class="textbox2" required />
                </div>



                <div class="buttons">
                    <input type="submit" id="findPw" value="비밀번호 찾기" class="b" style="width:100%; height: 50px;" />
                </div>

            </div>
        </form>

    </div>

    <jsp:include page="../common/footer.jsp"/>

    <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll><span
            class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
            class="btn-scroll-top-icon fi-chevron-up"></i></a>

    <!-- Vendor scrits: js libraries and plugins-->
    <script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/js/vendor/simplebar.min.js"></script>
    <script src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
    <script src="${path}/resources/js/vendor/tiny-slider.js"></script>
    <script src="${path}/resources/js/vendor/flatpickr.min.js"></script>
    <script src="${path}/resources/js/vendor/jarallax.min.js"></script>
    <!-- Main theme script + Page Loading script -->
    <script src="${path}/resources/js/theme.js"></script>
    <script src="${path}/resources/js/page-loading.js"></script>
</body>

</html>