<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>나만의 박물관</title>
  
  <!-- Viewport-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Vendor Styles-->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/simplebar.min.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/flatpickr.min.css"/>
  <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
  <!-- 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/index.css"> 
</head>


<body>
  <!-- Page loading spinner-->
  <div class="page-loading active">
    <div class="page-loading-inner">
      <div class="page-spinner"></div><span>Loading...</span>
    </div>
  </div>
  
  <main class="page-wrapper">
    <header class="navbar navbar-expand-lg navbar-light bg-light d-flex flex-column p-0" data-scroll-header>
      <!-- 헤더 -->
      <div class="container header">
        <!-- 로고 -->
        <h1 class="logo"><a href="/mvc">나만의 박물관</a></h1>

        <!-- 로그인 전 -->
        <a class="btn btn-primary btn-sm rounded-pill order-lg-3" href="sign_in.html">로그인</a>
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
              <a class="nav-link" href="/mvc/search">문화재</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle"  role="button" data-bs-toggle="dropdown" aria-expanded="false" href="#"=>컬렉션</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="/mvc/collection-list">다른 사람의 컬렉션</a></li>
                <li><a class="dropdown-item" href="/mvc/collection-main">나의 컬렉션</a></li>
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
              <a class="nav-link" href="event-main">행사일정</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="/mvc/main">공지사항</a></li>
                <li><a class="dropdown-item" href="/mvc/board-best">베스트게시판</a></li>
                <li><a class="dropdown-item" href="/mvc/board-free">자유게시판</a></li>
                <li><a class="dropdown-item" href="/mvc/board-question">질문게시판</a></li>
                <li><a class="dropdown-item" href="/mvc/board-customer">고객센터</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </header>
    

    <!-- 메인 슬라이더 -->
    <section>
      <div class="content-overlay container py-md-0 p-0" style="max-width: 100%;">
        <div class="mb-md-5">
          <div class="tns-carousel-wrapper">
            <div class="tns-carousel-inner " data-carousel-options='{"gutter": 16, "autoplay": true, "autoplayTimeout":3000}'>
              <div class="main-slide one" style="background-image: url(${path}/resources/img/슬라이더배경1.png);">
                <div class="slide-item d-flex flex-row justify-content-between col-xl-8 col-lg-8 col-md-10 mx-auto mb-sm-0 mb-5 px-0 ">
                  <div class="text-area">
                    <!-- 차례대로 text-light, test-white 였음 -->
                    <p class="fs-lg text-dark">문화재 검색하고, <br/> 컬렉션에 추가하고, <br/> 사람들한테 자랑하자!</p>
                    <h1 class="display-5 text-dark mt-sm-0 my-4">나만의 컬렉션 만들기</h1>
                    <a class="btn btn-primary btn-sm rounded-pill order-lg-3" href="collection-main.html">컬렉션 구경하기</a>
                  </div>
                  <div class="card-area">
                    <!-- <h1>문화재 이미지 들어올 공간. <br/> 만드는 중...</h1> -->
                  </div>
                </div>
              </div>
              <div class="main-slide" style="background-image: url(${path}/resources/img/행사1.jpg);">
                <div class="slide-item col-xl-8 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0" style="text-align: right;">
                  <p class="fs-lg text-white">당신의 곁으로 찾아가는 문화재</p>
                  <h1 class="display-5 text-light mt-sm-0 my-4">직접 보고 느끼는 문화재 체험</h1>
                  <a class="btn btn-primary btn-sm rounded-pill order-lg-3" href="evevt-main.html">행사 더 보러가기</a>
                </div>
              </div>
              <div class="main-slide" style="background-image: url(${path}/resources/img/행사3.jpg);">
                <div class="slide-item col-xl-8 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0">
                  <p class="fs-lg text-white">우리의 것을 찾아가는 여정 <br/> 나도 발걸음을 남기고 싶다면,</p>
                  <h1 class="display-5 text-light mt-sm-0 my-4">테마별 문화재 투어</h1>
                  <a class="btn btn-primary btn-sm rounded-pill order-lg-3" href="#">더 알아보기</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>


    <!-- 컬렉션 추천 -->
    <section class="container mb-5 pb-md-4">
      <div class="d-flex flex-column align-items-center justify-content-between mb-3">
        <span class="category h5 mb-2">컬렉션 추천</span>
        <h2 class="h2 mb-0 mx-auto">이런 문화재는 어때요?</h2>
      </div>
      <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside tns-nav-outside-flush mx-n2">
        <div class="tns-carousel-inner row gx-4 mx-0 pt-3 pb-4" data-carousel-options="{&quot;items&quot;: 4, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;500&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3},&quot;992&quot;:{&quot;items&quot;:5}}}">
          <!-- Item -->
          <div class="col">
            <div class="card shadow-sm card-hover border-0">
              <div class="card-img-top card-img-hover"><a class="img-overlay" href="search-detail.html"></a>
                <div class="content-overlay end-0 top-0 pt-3 pe-3"></div>
                <img src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="Image">
              </div>
              <div class="card-body position-relative pb-2">
                <div class="mb-2"><span class="d-table badge bg-success">국보</span></div>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="search-detail.html">문화재 이름1</a></h3>
              </div>
            </div>
          </div>
          <!-- Item -->
          <div class="col">
            <div class="card shadow-sm card-hover border-0">
              <div class="card-img-top card-img-hover"><a class="img-overlay" href="search-detail.html"></a>
                <div class="content-overlay end-0 top-0 pt-3 pe-3"></div>
                <img src="${path}/resources/img/석굴암_본존불2.jpg" alt="Image">
              </div>
              <div class="card-body position-relative pb-2">
                <div class="mb-2"><span class="d-table badge bg-success">국보</span></div>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="search-detail.html">문화재 이름2</a></h3>
              </div>
            </div>
          </div>
          <!-- Item -->
          <div class="col">
            <div class="card shadow-sm card-hover border-0">
              <div class="card-img-top card-img-hover"><a class="img-overlay" href="search-detail.html"></a>
                <div class="content-overlay end-0 top-0 pt-3 pe-3"></div>
                <img src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg" alt="Image">
              </div>
              <div class="card-body position-relative pb-2">
                <div class="mb-2"><span class="d-table badge bg-success">국보</span></div>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="search-detail.html">문화재 이름3</a></h3>
              </div>
            </div>
          </div>
          <!-- Item -->
          <div class="col">
            <div class="card shadow-sm card-hover border-0">
              <div class="card-img-top card-img-hover"><a class="img-overlay" href="search-detail.html"></a>
                <div class="content-overlay end-0 top-0 pt-3 pe-3"></div>
                <img src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="Image">
              </div>
              <div class="card-body position-relative pb-2">
                <div class="mb-2"><span class="d-table badge bg-success">국보</span></div>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="search-detail.html">문화재 이름4</a></h3>
              </div>
            </div>
          </div>
          <!-- Item -->
          <div class="col">
            <div class="card shadow-sm card-hover border-0">
              <div class="card-img-top card-img-hover"><a class="img-overlay" href="search-detail.html"></a>
                <div class="content-overlay end-0 top-0 pt-3 pe-3"></div>
                <img src="${path}/resources/img/석굴암_본존불2.jpg" alt="Image">
              </div>
              <div class="card-body position-relative pb-2">
                <div class="mb-2"><span class="d-table badge bg-success">국보</span></div>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="search-detail.html">문화재 이름5</a></h3>
              </div>
            </div>
          </div>
          <!-- Item -->
          <div class="col">
            <div class="card shadow-sm card-hover border-0">
              <div class="card-img-top card-img-hover"><a class="img-overlay" href="search-detail.html"></a>
                <div class="content-overlay end-0 top-0 pt-3 pe-3"></div>
                <img src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg" alt="Image">
              </div>
              <div class="card-body position-relative pb-2">
                <div class="mb-2"><span class="d-table badge bg-success">국보</span></div>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="search-detail.html">문화재 이름6</a></h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    
    <!-- 행사 및 기획전 -->
    <section class="container mb-5 pb-lg-3">
      <div class="d-flex flex-column align-items-start justify-content-between mb-3">
        <span class="event category h5 mb-2">행사 및 기획전</span>
        <div class="w-100 d-flex align-items-center justify-content-between">
          <h2 class="h2 mb-0">우리 문화재, 직접 보고 느껴요!</h2>
          <a class="event more btn btn-link ms-md-3 ms-auto p-0 fw-bold" href="evevt-main.html">더 보러가기<i class="fi-arrow-long-right ms-2"></i></a>
        </div>
      </div>
      <!-- Carousel-->
      <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside tns-center">
        <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 1, &quot;edgePadding&quot;: true, &quot;responsive&quot;: {&quot;0&quot;:{&quot;controls&quot;: false, &quot;gutter&quot;: 16},&quot;500&quot;:{&quot;controls&quot;: true, &quot;gutter&quot;: 16}, &quot;768&quot;: {&quot;gutter&quot;: 24}}}">
          <!-- Item-->
          <div>
            <div class="card border-0 bg-size-cover pt-5" style="background-image: url(${path}/resources/img/행사1.jpg);">
              <div class="d-none d-md-block" style="height: 10rem;"></div>
              <div class="card-body text-center text-md-start pt-4 pt-xl-0">
                <div class="d-md-flex justify-content-between align-items-end">
                  <div class="me-2 mb-4 mb-md-0">
                    <div class="d-flex justify-content-center justify-content-md-start text-light fs-sm mb-2">
                      <div class="text-nowrap me-3"><i class="fi-calendar-alt me-1 opacity-70"></i><span class="align-middle"> 00월 00일</span></div>
                      <div class="text-nowrap"><i class="fi-clock me-1 opacity-70"></i><span class="align-middle"> D - 0</span></div>
                    </div>
                    <h3 class="h2 text-light mb-0">문화재 행사1</h3>
                  </div>
                  <div class="btn-group">
                    <a class="ticket btn btn-primary rounded-pill px-5" href="event-detail.html">예매하기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Item-->
          <div>
            <div class="card border-0 bg-size-cover pt-5" style="background-image: url(${path}/resources/img/행사2.jpg);">
              <div class="d-none d-md-block" style="height: 10rem;"></div>
              <div class="card-body text-center text-md-start pt-4 pt-xl-0">
                <div class="d-md-flex justify-content-between align-items-end">
                  <div class="me-2 mb-4 mb-md-0">
                    <div class="d-flex justify-content-center justify-content-md-start text-light fs-sm mb-2">
                      <div class="text-nowrap me-3"><i class="fi-calendar-alt me-1 opacity-70"></i><span class="align-middle"> 00월 00일</span></div>
                      <div class="text-nowrap"><i class="fi-clock me-1 opacity-70"></i><span class="align-middle"> D - 0</span></div>
                    </div>
                    <h3 class="h2 text-light mb-0">문화재 행사2</h3>
                  </div>
                  <div class="btn-group">
                    <a class="ticket btn btn-primary rounded-pill px-5" href="event-detail.html">예매하기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Item-->
          <div>
            <div class="card border-0 bg-size-cover pt-5" style="background-image: url(${path}/resources/img/행사3.jpg);">
              <div class="d-none d-md-block" style="height: 10rem;"></div>
              <div class="card-body text-center text-md-start pt-4 pt-xl-0">
                <div class="d-md-flex justify-content-between align-items-end">
                  <div class="me-2 mb-4 mb-md-0">
                    <div class="d-flex justify-content-center justify-content-md-start text-light fs-sm mb-2">
                      <div class="text-nowrap me-3"><i class="fi-calendar-alt me-1 opacity-70"></i><span class="align-middle"> 00월 00일</span></div>
                      <div class="text-nowrap"><i class="fi-clock me-1 opacity-70"></i><span class="align-middle"> D - 0</span></div>
                    </div>
                    <h3 class="h2 text-light mb-0">문화재 행사3</h3>
                  </div>
                  <div class="btn-group">
                    <a class="ticket btn btn-primary rounded-pill px-5" href="event-detail.html">예매하기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 테마별 문화재 투어 + 커뮤니티 -->
    <section class="container mb-5 pb-lg-3">
      <!-- 테마별 문화재 투어 -->
      <div class="bottom-ss">
        <div class="img-six-box">
          <div class="mb-2">
            <span class="category h5 w-100 mb-md-2">테마별 문화재 투어</span>
            <h2 class="h3 w-100 mb-md-0">방문 인증하고 스탬프도 받자!</h2>
          </div>

          <div class="tab-content">
            <!-- <div class="tab-pane fade show active" id="result5" role="tabpane1"> -->

            <!-- Gallery grid no gutters -->
            <div class="row gallery g-0">
              <!-- Item 1-->
              <div class="col-xl-4 col-sm-6 img-six">
                <a href="#" class="gallery-item">
                  <img src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="문화재이미지" img-responsive>
                  <div class="carousel-caption text6">
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                  </div>
                  <span class="gallery-item-caption">문화재이미지1</span>
                </a>
              </div>
              <!-- Item 2 -->
              <div class="col-xl-4 col-sm-6 img-six">
                <a href="#" class="gallery-item">
                  <img src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg" alt="문화재이미지" img-responsive>
                  <div class="carousel-caption text6">
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                  </div>
                  <span class="gallery-item-caption">문화재이미지2</span>
                </a>
              </div>
              <!-- Item 3 -->
              <div class="col-xl-4 col-sm-6 img-six">
                <a href="#" class="gallery-item">
                  <img src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="문화재이미지3" img-responsive>
                  <div class="carousel-caption text6">
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                  </div>
                  <span class="gallery-item-caption">문화재이미지3</span>
                </a>
              </div>
              <!-- Item 4 -->
              <div class="col-xl-4 col-sm-6 img-six">
                <a href="#" class="gallery-item">
                  <img src="${path}/resources/img/석굴암_본존불2.jpg" alt="문화재이미지" img-responsive>
                  <div class="carousel-caption text6">
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                  </div>
                  <span class="gallery-item-caption">문화재이미지</span>
                </a>
              </div>
              <!-- Item 5 -->
              <div class="col-xl-4 col-sm-6 img-six">
                <a href="#" class="gallery-item">
                  <img src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg" alt="Gallery thumbnail" img-responsive>
                  <div class="carousel-caption text6">
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                  </div>
                  <span class="gallery-item-caption">문화재이미지</span>
                </a>
              </div>
              <!-- Item 6 -->
              <div class="col-xl-4 col-sm-6 img-six">
                <a href="#" class="gallery-item">
                  <img src="${path}/resources/img/석굴암_본존불2.jpg" alt="문화재이미지" img-responsive>
                  <div class="carousel-caption text6">
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                    <h3 class="fs-6 text-white text-start">방문인증코스1</h3>
                  </div>
                  <span class="gallery-item-caption">문화재이미지</span>
                </a>
              </div>
              <!-- Add as many columns with gallery item inside as you need -->
            </div>
            <!-- </div> -->
          </div>
        </div>

        <!-- 커뮤니티 -->
        <section class="community">
          <span class="category h5 w-100 mb-md-2">커뮤니티</span>
          <div class="d-md-flex align-items-center justify-content-between mb-2 pb-md-2">
            <h2 class="h3 w-100 mb-md-0">자유게시판</h2>
            <!-- Sorting by date-->
            <div class="w-100 ms-md-3 mb-n3 pt-2 pb-3 px-1" data-simplebar data-simplebar-auto-hide="false">
              <div class="d-flex align-items-start flex-row-reverse">
                <a class="more btn btn-link ms-md-3 ms-auto p-0 fw-bold" href="board-free.html">더 보러가기
                  <i class="fi-arrow-long-right ms-2"></i>
                </a>
              </div>
            </div>
          </div>
          <table class="main_community_title">
            <tr>
              <td onClick="location.href='board-detail.html'">[미술]북한사찰들은 안료나 단청양식에서 세세하게... </td>
            </tr>
            <tr>
              <td onClick="location.href='board-detail.html'">1960년대 도정궁 모습</td>
            </tr>
            <tr>
              <td onClick="location.href='board-detail.html'">실제 신라 유물로 두는 바둑</td>
            </tr>
            <tr>
              <td onClick="location.href='board-detail.html'">태종 이방원 세트 건축에 대한 생각</td>
            </tr>
            <tr>
              <td onClick="location.href='board-detail.html'">[미술사]꼭 봐야 할 이건희 특별전. 어느 수집가의...</td>
            </tr>
            <tr>
              <td onClick="location.href='board-detail.html'">서원 철폐령 당시에 6개 남기고 다 철폐하였다 하...</td>
            </tr>
            <tr>
              <td onClick="location.href='board-detail.html'">국외소재문화재 현황 및 환수가치에 관한 설문조사...</td>
            </tr>
          </table>
        </section>
      </div>
    </section>

  </main>

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
            reserved. Made by </span><a class="nav-link-light fw-bold" href="https://createx.studio/" target="_blank"
            rel="noopener">Createx Studio</a></p>
        <div class="d-flex flex-lg-row flex-column align-items-center order-lg-2 order-1 ms-lg-4 mb-lg-0 mb-4">
          <!-- Links-->
          <div class="d-flex flex-wrap fs-sm mb-lg-0 mb-4 pe-lg-4"><a class="nav-link-light px-2 mx-1"
              href="#">About</a><a class="nav-link-light px-2 mx-1" href="#">Blog</a><a class="nav-link-light px-2 mx-1"
              href="#">Support</a><a class="nav-link-light px-2 mx-1" href="#">Contacts</a></div>
          <div class="d-flex align-items-center">
            <!-- Language switcher -->
            <div class="dropdown"><a
                class="nav-link nav-link-light dropdown-toggle fs-sm align-items-center p-0 fw-normal" href="#"
                id="langSwitcher" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i
                  class="fi-globe mt-n1 me-2 align-middle"></i>Eng</a>
              <ul class="dropdown-menu dropdown-menu-dark my-1" aria-labelledby="langSwitcher">
                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="${path}/resources/img/flags/de.png"
                      width="20" alt="Deutsch">Deutsch</a></li>
                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="${path}/resources/img/flags/fr.png"
                      width="20" alt="Français">Français</a></li>
                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="${path}/resources/img/flags/es.png"
                      width="20" alt="Español">Español</a></li>
              </ul>
            </div>
            <!-- Socials-->
            <div class="ms-4 ps-lg-2 text-nowrap">
              <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" style="color:black;" href="#">
                <i class="fi-facebook"></i></a>
              <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" style="color:black;" href="#">
                <i class="fi-twitter"></i></a>
              <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" style="color:black;" href="#">
                <i class="fi-telegram"></i></a>
              <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" style="color:black;" href="#">
                <i class="fi-messenger"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  
  <!-- Back to top button-->
  <a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up"></i></a>

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