<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>로그인 페이지</title>
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
    <link rel="stylesheet" media="screen" href="resources/css/sign_in.css">

    <!--쿠키로 아이디 저장하는 스크립트-->
    <script>
        $(document).ready(function () {
            // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
            var key = getCookie("key");
            $("#ID").val(key);

            // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
            if ($("#ID").val() != "") {
                $("#checkId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
            }

            $("#checkId").change(function () { // 체크박스에 변화가 있다면,
                if ($("#checkId").is(":checked")) { // ID 저장하기 체크했을 때,
                    setCookie("key", $("#ID").val(), 7); // 7일 동안 쿠키 보관
                } else { // ID 저장하기 체크 해제 시,
                    deleteCookie("key");
                }
            });

            // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
            $("#userId").keyup(function () { // ID 입력 칸에 ID를 입력할 때,
                if ($("#checkId").is(":checked")) { // ID 저장하기를 체크한 상태라면,
                    setCookie("key", $("#ID").val(), 7); // 7일 동안 쿠키 보관
                }
            });
        });

        // 쿠키 저장하기 
        // setCookie => saveid함수에서 넘겨준 시간이 현재시간과 비교해서 쿠키를 생성하고 지워주는 역할
        function setCookie(cookieName, value, exdays) {
            var exdate = new Date();
            exdate.setDate(exdate.getDate() + exdays);
            var cookieValue = escape(value)
                + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
            document.cookie = cookieName + "=" + cookieValue;
        }

        // 쿠키 삭제
        function deleteCookie(cookieName) {
            var expireDate = new Date();
            expireDate.setDate(expireDate.getDate() - 1);
            document.cookie = cookieName + "= " + "; expires="
                + expireDate.toGMTString();
        }

        // 쿠키 가져오기
        function getCookie(cookieName) {
            cookieName = cookieName + '=';
            var cookieData = document.cookie;
            var start = cookieData.indexOf(cookieName);
            var cookieValue = '';
            if (start != -1) { // 쿠키가 존재하면
                start += cookieName.length;
                var end = cookieData.indexOf(';', start);
                if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
                    end = cookieData.length;
                console.log("end위치  : " + end);
                cookieValue = cookieData.substring(start, end);
            }
            return unescape(cookieValue);
        }
    </script>

</head>

<body>
    <div class="page">
        <h1 class="logo"><a href="${path}/">나만의 박물관</a></h1>


        <div class="login">
            <h1>로그인</h1>
        </div>
        <hr style="
        margin-top: 10px;
        margin-bottom: 20px;
        background-color: var(--clr-green);
        border: none;
        width: 100%;
        height: 2px;">

        <form id="loginFrm" action="IDmemLogin" method="POST">
            <div class="text_id">
                <h1>아이디</h1>
            </div>
            <input type="text" name="ID" id="ID" class="text_field" required="required">


            <div class="text_pw">
                <h1>비밀번호</h1>
            </div>
            <input type="password" name="PASSWORD" id="PASSWORD" class="text_field" required="required">

            <div class="save" style="margin-top: 5px">
                <input type="checkbox" id="checkId">
                <label for="checkId"></label>
                <h1>아이디 기억하기</h1>
            </div>

            <input type="submit" class="login_btn" value="로그인">
        </form>

        <hr style="
        margin-top: 10px;
        background-color: var(--clr-green);
        border: none;
        width: 100%;
        height: 2px;">

        <!-- 링크 -->
        <ul class="links">
            <li>
                <h1><a href="${path}/findId.do">아이디 찾기 </a></h1>
            </li>
            <li>
                <h1><a href="${path}/find.pw">비밀번호 찾기 </a> </h1>
            </li>
            <li>
                <h1><a href="${path}/sign_up">회원가입</a></h1>
            </li>
        </ul>


        <div class="simple_login">
            <!-- <h1>간편 로그인</h1> -->
        </div>


        <!--카카오 간편로그인-->
        <a href="javascript:kakaoLogin();">
            <div class="kakao_btn">
                <img src="resources/img/login_image/kakao_logo.png" class="logo_icon">
                <h1>카카오 로그인</h1>
            </div>
        </a>
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
        <script>
            window.Kakao.init('본인 JAVASCRIPT API 키');
            function kakaoLogin() {
                window.Kakao.Auth.login({
                    scope: 'profile, account_email, gender, age_range, birthday', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                    success: function (response) {
                        console.log(response) // 로그인 성공하면 받아오는 데이터
                        window.Kakao.API.request({ // 사용자 정보 가져오기 
                            url: '/v2/user/me',
                            success: (res) => {
                                const kakao_account = res.kakao_account;
                                console.log(kakao_account)
                            }
                        });
                        // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                    },
                    fail: function (error) {
                        console.log(error);
                    }
                });
            }
        </script>

        <!--네이버 간편로그인-->
        <a id="naverIdLogin_loginButton" href="javascript:void(0)">
            <div class="naver_btn">
                <img src="resources/img/login_image/naver_logo.png" class="logo_icon">
                <h1>네이버 로그인</h1>
            </div>
        </a>
        <!-- 네이버 스크립트 -->
        <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
        <script>
            var naverLogin = new naver.LoginWithNaverId(
                {
                    clientId: "", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
                    callbackUrl: "", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
                    isPopup: false,
                    callbackHandle: true
                }
            );
            naverLogin.init();
            window.addEventListener('load', function () {
                naverLogin.getLoginStatus(function (status) {
                    if (status) {
                        var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.

                        console.log(naverLogin.user);

                        if (email == undefined || email == null) {
                            alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                            naverLogin.reprompt();
                            return;
                        }
                    } else {
                        console.log("callback 처리에 실패하였습니다.");
                    }
                });
            });
            var testPopUp;
            function openPopUp() {
                testPopUp = window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
            }
            function closePopUp() {
                testPopUp.close();
            }
        </script>


        <!--구글 간편로그인-->
        <a href="">
            <div class="google_btn">
                <img src="resources/img/login_image/google_logo.png" class="logo_icon">
                <h1>구글 로그인</h1>
            </div>
        </a>

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
                                            src="resources/img/flags/de.png" width="20" alt="Deutsch">Deutsch</a></li>
                                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2"
                                            src="resources/img/flags/fr.png" width="20" alt="Français">Français</a></li>
                                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2"
                                            src="resources/img/flags/es.png" width="20" alt="Español">Español</a></li>
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