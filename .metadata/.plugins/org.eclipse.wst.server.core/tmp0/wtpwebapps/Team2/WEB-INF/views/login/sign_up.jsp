<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>
    <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
    <link rel="stylesheet" media="screen" href="/resources/css/theme.css">
    <link rel="stylesheet" media="screen" href="/resources/css/common/page-loading.css">
    <!-- SEO Meta Tags-->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords"
        content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="/resources/css/vendor/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="/resources/css/vendor/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="/resources/css/vendor/flatpickr.min.css" />
    <!-- 직접 작성한 Styles -->
    <link rel="stylesheet" media="screen" href="/resources/css/common/common.css">
    <link rel="stylesheet" media="screen" href="/resources/css/common/header-footer.css">
    <link rel="stylesheet" media="screen" href="/resources/css/sign_up.css">
    
    
</head>

<body>
    <div class="page">
        <h1 class="logo"><a href="/">나만의 박물관</a></h1>

        <div class="login">
            <h1>회원가입</h1>
        </div>
        <hr style="
        margin-top: 10px;
        margin-bottom: 10px;
        background-color: var(--clr-green);
        border: none;
        width: 100%;
        height: 2px;">

        <form id="enroll-container" name="memberEnrollFrm" action="${path}/memRegister.do" method="post">
            <div class="sec1">
                <div class="word">
                    <h1>아이디</h1>
                </div>
                <div class="box_and_check">
                    <input type="text" name="id" id="newId" class="textbox1" required />
                    <button type="button" onclick="registerCheck()" value="중복확인" class="checkDup" ></button>
                </div>

                <div class="word">
                    <h1>별명</h1>
                </div>
                <div class="box_and_check">
                    <input type="text" name="nickName" id="newnickName" class="textbox1" required />
                    <input type="button" id="nickNameDuplicate" value="중복확인" class="checkDup" />
                </div>

                <div class="word">
                    <h1>패스워드</h1>
                </div>
                <div class="onlybox">
                    <input type="password" name="password" id="pass1" class="textbox2"
                        placeholder=" · 8자 이상 / 특수문자 1개 이상 포함 / 대소문자 포함" required />
                </div>
				
                <div class="word">
                    <h1>패스워드 확인</h1>
                </div>
                <div class="onlybox">
                    <input type="password" id="pass2" class="textbox2" required />
                </div>

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

                <div class="word">
                    <h1>주소</h1>
                </div>
                <div class="onlybox">
                    <input type="address" id="address" class="textbox2" required />
                </div>

                <div class="buttons">
                    <input type="reset" value="지우기" class="b" />
                    <input type="submit" id="enrollSubmit" value="회원가입" class="b" />
                </div>

            </div>
        </form>


        <div class="large_empty"></div>

    </div>
      <jsp:include page="../common/footer.jsp"/>

  <!-- Back to top button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
            <span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span>
            <i class="btn-scroll-top-icon fi-chevron-up"></i></a>

    <!-- Vendor scrits: js libraries and plugins-->
    <script src="/resources/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/vendor/simplebar.min.js"></script>
    <script src="/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
    <script src="/resources/js/vendor/tiny-slider.js"></script>
    <script src="/resources/js/vendor/flatpickr.min.js"></script>
    <script src="/resources/js/vendor/jarallax.min.js"></script>
    <!-- Main theme script + Page Loading script -->
    <script src="/resources/js/theme.js"></script>
    <script src="/resources/js/page-loading.js"></script>
</body>

</html>