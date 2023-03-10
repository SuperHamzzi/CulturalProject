<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
  <meta charset="utf-8">
  <title>Header</title>

  <!-- SEO Meta Tags-->
  <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
  <meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
  <meta name="author" content="Createx Studio">
  
  <!-- Viewport-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Main Theme Styles + Bootstrap -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <!-- 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
</head>

<body>
  <!-- ※ 해당 주석은 확인하고 지우셔도 됩니다!

    로그인 영역에 두 개의 태그(<a>, <dix>)가 있는데, 로그인 전에는 <a> 태그가 보이고 로그인 후에는 <div> 태그가 보여요.
    해당 태그의 class값에 'd-none'가 있으면 보이지 않고, 없으면 보이는 방식이에요.
    그래서 로그인에 성공하면 <a> 태그에 있던 'd-none'가  <div> 태그로 옮겨가는 자바스크립트 코드를 짜야하는데,
    로그인 성공 여부 자체를 백엔드에서 처리하다보니... 자바스크립트를 어떻게 짜야할지 모르겠더라구요...ㅠㅠ
    
    아까 회의 때 로그인 기능을 먼저 만들어보겠다고 들었던 것 같아서...
    혹시 구현에 헤더 코드가 필요하시면 일단 로그인 전과 로그인 후를 분리해 놓은 버전(2번, 3반)도 있으니
    header.jsp, header-login.jsp 이렇게 해서 로그인 전과 로그인 후를 다르게 사용해보셔도 될 것 같아요...!

    +) 아직 페이지가 완성되지 않아 페이지 이동을 할 수 없는 링크들은 <href="#"> 이런 식으로 처리해놨습니다.

  -->

  <main class="page-wrapper">
    <!-- 1. 로그인 전 + 로그인 후 -->
    <header class="navbar navbar-expand-lg navbar-light bg-light d-flex flex-column p-0" data-scroll-header>
      <!-- 헤더 -->
      <div class="container header">
        <!-- 로고 -->
        <h1 class="logo"><a href="index.html">나만의 박물관</a></h1>

        <!-- 로그인 전 -->
        <a class="btn btn-primary btn-sm rounded-pill order-lg-3" href="#">로그인</a>
        <!-- 로그인 후 -->
        <div class="d-none user-icons d-flex justify-content-center order-lg-3">
          <a href="#"><img src="${path}/resources/icon/account.svg" alt="account"/></a>
          <div class="dropdown">
            <a href="#"><img src="${path}/resources/icon/notification.svg" alt="notification"/></a>
            <ul class="dropdown-menu dropdown-menu-end">
              <li class="d-flex align-items-center">
                <i class="fi-chat-circle"></i>
                <a class="dropdown-item" href="#">"XXX..." 게시글에 댓글이 달렸어요.</a>
              </li>
              <li><hr class="dropdown-divider"></li>
              <li class="d-flex align-items-center">
                <i class="fi-award"></i>
                <a class="dropdown-item" href="#">"XXX..." 게시글의 답변이 채택되었어요.</a>
              </li>
              <li><hr class="dropdown-divider"></li>
              <li class="d-flex align-items-center">
                <i class="fi-chat-circle"></i>
                <a class="dropdown-item" href="#">"XXX..." 게시글에 댓글이 달렸어요.</a>
              </li>
              <li><hr class="dropdown-divider"></li>
              <li class="d-flex align-items-center">
                <i class="fi-award"></i>
                <a class="dropdown-item" href="#">"XXX..." 게시글의 답변이 채택되었어요.</a>
              </li>
            </ul>
          </div>
        </div>

        <!-- 검색바 -->
        <div class="col-xl-6 col-lg-9 col-md-10 mx-auto px-0">
          <form class="form-group d-block d-md-flex position-relative rounded-md-pill mb-2 mb-sm-4 mb-lg-0">
            <div class="input-group input-group-lg">
              <input class="form-control mx-auto" type="text" placeholder="문화재를 검색하세요.">
              <span class="input-group-text text-muted rounded-pill pe-3"><i class="fi-search"></i></span>
            </div>
            <hr class="d-md-none my-2">
          </form>
        </div>
      </div>

      <!-- 네비 -->
      <div class="container nav">
        <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
          <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem; margin: 0 auto;">
            <!-- Menu items-->
            <li class="nav-item dropdown">
              <a class="nav-link" href="search.html">문화재</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">컬렉션</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">나의 컬렉션</a></li>
                <li><a class="dropdown-item" href="#">다른 사람의 컬렉션</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">테마별 안내</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">테마 보기</a></li>
                <li><a class="dropdown-item" href="#">테마별 문화재 투어</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">행사일정</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">공지사항</a></li>
                <li><a class="dropdown-item" href="#">베스트게시판</a></li>
                <li><a class="dropdown-item" href="#">자유게시판</a></li>
                <li><a class="dropdown-item" href="#">질문게시판</a></li>
                <li><a class="dropdown-item" href="#">고객센터</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </header>

    <!-- 2. 로그인 전 -->
    <header class="navbar navbar-expand-lg navbar-light bg-light d-flex flex-column p-0" data-scroll-header>
      <!-- 헤더 -->
      <div class="container header">
        <h1 class="logo"><a href="index.html">나만의 박물관</a></h1>
        <a class="btn btn-primary btn-sm rounded-pill order-lg-3" href="#">로그인</a>
        <div class="col-xl-6 col-lg-9 col-md-10 mx-auto px-0">
          <form class="form-group d-block d-md-flex position-relative rounded-md-pill mb-2 mb-sm-4 mb-lg-0">
            <div class="input-group input-group-lg">
              <input class="form-control mx-auto" type="text" placeholder="문화재를 검색하세요.">
              <span class="input-group-text text-muted rounded-pill pe-3"><i class="fi-search"></i></span>
            </div>
            <hr class="d-md-none my-2">
          </form>
        </div>
      </div>

      <!-- 네비 -->
      <div class="container nav">
        <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
          <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem; margin: 0 auto;">
            <!-- Menu items-->
            <li class="nav-item dropdown">
              <a class="nav-link" href="search.html">문화재</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">컬렉션</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">나의 컬렉션</a></li>
                <li><a class="dropdown-item" href="#">다른 사람의 컬렉션</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">테마별 안내</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">테마 보기</a></li>
                <li><a class="dropdown-item" href="#">테마별 문화재 투어</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">행사일정</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">공지사항</a></li>
                <li><a class="dropdown-item" href="#">베스트게시판</a></li>
                <li><a class="dropdown-item" href="#">자유게시판</a></li>
                <li><a class="dropdown-item" href="#">질문게시판</a></li>
                <li><a class="dropdown-item" href="#">고객센터</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </header>

    <!-- 3. 로그인 후 -->
    <header class="navbar navbar-expand-lg navbar-light bg-light d-flex flex-column p-0" data-scroll-header>
      <!-- 헤더 -->
      <div class="container header">
        <h1 class="logo"><a href="index.html">나만의 박물관</a></h1>
        <div class="user-icons d-flex justify-content-center order-lg-3">
          <a href="#"><img src="${path}/resources/icon/account.svg" alt="account"/></a>
          <div class="dropdown">
            <a href="#"><img src="${path}/resources/icon/notification.svg" alt="notification"/></a>
            <ul class="dropdown-menu dropdown-menu-end">
              <li class="d-flex align-items-center">
                <i class="fi-chat-circle"></i>
                <a class="dropdown-item" href="#">"XXX..." 게시글에 댓글이 달렸어요.</a>
              </li>
              <li><hr class="dropdown-divider"></li>
              <li class="d-flex align-items-center">
                <i class="fi-award"></i>
                <a class="dropdown-item" href="#">"XXX..." 게시글의 답변이 채택되었어요.</a>
              </li>
              <li><hr class="dropdown-divider"></li>
              <li class="d-flex align-items-center">
                <i class="fi-chat-circle"></i>
                <a class="dropdown-item" href="#">"XXX..." 게시글에 댓글이 달렸어요.</a>
              </li>
              <li><hr class="dropdown-divider"></li>
              <li class="d-flex align-items-center">
                <i class="fi-award"></i>
                <a class="dropdown-item" href="#">"XXX..." 게시글의 답변이 채택되었어요.</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-xl-6 col-lg-9 col-md-10 mx-auto px-0">
          <form class="form-group d-block d-md-flex position-relative rounded-md-pill mb-2 mb-sm-4 mb-lg-0">
            <div class="input-group input-group-lg">
              <input class="form-control mx-auto" type="text" placeholder="문화재를 검색하세요.">
              <span class="input-group-text text-muted rounded-pill pe-3"><i class="fi-search"></i></span>
            </div>
            <hr class="d-md-none my-2">
          </form>
        </div>
      </div>

      <!-- 네비 -->
      <div class="container nav">
        <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
          <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem; margin: 0 auto;">
            <!-- Menu items-->
            <li class="nav-item dropdown">
              <a class="nav-link" href="search.html">문화재</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">컬렉션</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">나의 컬렉션</a></li>
                <li><a class="dropdown-item" href="#">다른 사람의 컬렉션</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">테마별 안내</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">테마 보기</a></li>
                <li><a class="dropdown-item" href="#">테마별 문화재 투어</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">행사일정</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">공지사항</a></li>
                <li><a class="dropdown-item" href="#">베스트게시판</a></li>
                <li><a class="dropdown-item" href="#">자유게시판</a></li>
                <li><a class="dropdown-item" href="#">질문게시판</a></li>
                <li><a class="dropdown-item" href="#">고객센터</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </header>
  </main>

  <!-- Main theme script + Page Loading script -->
  <script src="${path}/resources/js/theme.js"></script>
</body>
</html>