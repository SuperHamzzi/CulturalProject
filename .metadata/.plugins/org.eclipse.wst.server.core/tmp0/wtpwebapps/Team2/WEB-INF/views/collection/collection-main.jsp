 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
 
 
 <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>컬렉션 메인</title>

  <!-- SEO Meta Tags-->
  <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
  <meta name="keywords"
    content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
  <meta name="author" content="Createx Studio">

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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/collection-main.css">

</head>


<body>
  <!-- Page loading spinner-->
  <div class="page-loading active">
    <div class="page-loading-inner">
      <div class="page-spinner"></div><span>Loading...</span>
    </div>
  </div>

  <main class="page-wrapper">
    	
    	<jsp:include page="../common/header.jsp"/>

    <!-- 컬렉션 검색칸-->
    <section class="mb-3">
      <!-- 배경이미지, 불투명도-->

      <!-- 배경이미지, 크기, 불투명도-->
      <div class="jarallax bg-dark" data-jarallax data-speed="0.5" style="height: 270px;">
        <span class="img-overlay bg-transparent opacity-80"
          style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(img/경복궁_근정전_내부_어좌.jpg);"></div>
        <div class="row content-overlay d-flex justify-content-center align-items-end"
          style="height: 170px; padding-top: 140px;">
          <!-- 배경박스-->
          <div class="content-overlay d-block justify-content-center text-center bg-white border-top"
            style="width: 1200px; height: 140px; border-radius: 40px;">
            <!-- 입력박스-->
            <div class="d-block justify-content-center text-center my-2 pt-3 pb-1">
              <div class="row d-flex justify-content-center">
                <div class="col-11 d-flex align-items-center justify-content-end p-0">
                  <div class="col-4 d-flex align-items-center justify-content-center">
                    <h1 class=" text-center m-0 pe-5">컬렉션 검색</h1>
                  </div>
                  <div class="col-7 d-flex justify-content-between">
                    <form class="bg-white d-flex position-relative rounded-md-pill p-1 col-sch-form"
                      style="border: 1px solid rgba(126, 126, 126, 0.521);">
                      <div class="input-group input-group-lg ">
                        <span class="input-group-text text-muted rounded-pill border-0 ms-3 p-1 ">
                          <i class="fi-search"></i>
                        </span>
                        <!-- 컬렉션 입력창-->
                        <input class="form-control border-0 ms-3 p-1 col-sch-input" type="text" placeholder="컬렉션 입력">
                      </div>
                      <div class="d-sm-flex">
                        <button
                          class="btn btn-primary btn-lg rounded-pill w-100 w-md-auto ms-sm-3 col-sch-btn px-4 py-0"
                          type="button">검색하기</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <!-- 정렬 선택-->
            <div class="content-overlay d-block justify-content-center mb-5 d-flex">
              <div class="row " style="height: 55px; width:1200px;">
                <div class="col-12 bg-white">
                  <div class="d-flex flex-md-row flex-column align-items-md-center justify-content-md-between my-2">
                    <div class="col-8 d-flex align-items-sm-center ps-5">
                      <hr class="" style="border: .5px solid rgba(108, 108, 108, 0.389); width: 1400px;" />
                    </div>
                    <!-- Sort-->
                    <div class="d-flex align-items-sm-center align-items-end">
                      <div class="d-flex flex-sm-row flex-column align-items-sm-center w-100 pe-sm-5">
                        <label class="mb-sm-0 mb-2 me-sm-2 pe-sm-1 text-nowrap" for="sortby"><i
                            class="fi-arrows-sort me-2"></i>정렬 선택 :</label>
                        <select class="form-select form-select-sm" id="sortby" style="min-width: 180px;">
                          <option>좋아요순</option>
                          <option>일별 조회순</option>
                          <option>누적 조회순</option>
                        </select>
                      </div>
                      <!-- <a class="d-inline-block ms-sm-4 ms-3 mb-sm-0 mb-2 fs-sm fw-bold text-decoration-none text-nowrap" href="#"><i class="fi-x fs-xs me-2 align-middle"></i>Clear all</a> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>


    </section>



    <!-- 주간 베스트 컬렉션 -->
    <section class="container mb-lg-4 mt-3" style="padding: 0px 100px;">
      <div class="d-flex align-items-center justify-content-between mb-2 pb-2">
        <h2 class="h2 mb-0 ps-1">주간 베스트 컬렉션</h2>
        <!-- <a class="btn btn-link fw-bold ms-sm-3 pe-1" href="#">더보러가기
          <i class="fi-arrow-long-right ms-2"></i></a> -->
      </div>
      <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2 px-2">
        <div class="tns-carousel-inner"
          data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:2,&quot;nav&quot;:false}}}">
          <!-- item 1-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="#">문화재컬렉션 1</a>
            </h3>
          </div>
          <!-- item 2-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="#">문화재컬렉션 2</a>
            </h3>
          </div>
          <!-- item 3-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/행사3.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="#">문화재컬렉션 3</a>
            </h3>
          </div>
          <!-- item 4-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/경주_불국사_다보탑.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="#">문화재컬렉션 4</a>
            </h3>
          </div>
          <!-- item 5-->
          <div class="position-relative">
            <div class="position-relative mb-2 col-main-box">
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="rounded-4" src="${path}/resources/img/경복궁_근정전_전경.jpg">
            </div>
            <h3 class="h4 mb-2">
              <a class="nav-link stretched-link text-center" href="#">문화재컬렉션 5</a>
            </h3>
          </div>
        </div>
      </div>
    </section>


    <!-- 이달의 수집가 -->
    <section>
      <div class="container mt-2" style="padding: 0px 100px;">
        <div class="d-sm-flex align-items-center justify-content-between pb-2 mb-sm-2">
          <h2 class="h3 mb-sm-0 ">이달의 인기 수집가</h2>
        </div>
        <!-- 1행 -->
        <div class="col-12 mt-1">
          <!-- Item-->
          <div class="card card-hover mb-2 shadow-sm" style="border-radius: 50px;">
            <div class="card-body p-2">
              <div class="d-flex justify-content-between">
                <div class="d-flex align-items-center ps-4">
                  <div class="d-flex align-items-center month-pp">
                    <a href="#">
                      <img class="d-none d-sm-block rounded-circle" src="img/행사3.JPG">
                    </a>
                  </div>
                  <div class="ps-sm-3">
                    <h3 class="h6 card-title pb-1 mb-2">
                      <a class="text-nav text-decoration-none" href="#">
                        <span class="me-3 h5">문화재홀릭남</span>
                        <!-- <span class="badge bg-faded-accent fs-sm rounded-pill">Featured</span> -->
                      </a>
                    </h3>
                  </div>
                </div>
                <div class="col-8 d-flex align-items-center justify-content-end ">
                  <!--리스트1-->
                  <div class="month-col-list d-flex align-items-center">
                    <div class="position-relative text-center me-4 align-items-center">
                      <button
                        class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                        type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                        data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="" src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg">
                      <h4 class="h4 m-0 mt-1">
                        <a class="nav-link stretched-link" href="#">컬렉션1</a>
                      </h4>
                      </figure>
                    </div>
                  </div>
                  <!--리스트2-->
                  <div class="month-col-list">
                    <div class="position-relative text-center me-4">
                      <button
                        class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                        type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                        data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="" src="${path}/resources/img/석굴암_본존불2.jpg">
                      <h4 class="h4 m-0 mt-1">
                        <a class="nav-link stretched-link" href="#">컬렉션1</a>
                      </h4>
                      </figure>
                    </div>
                  </div>
                  <!--리스트3-->
                  <div class="month-col-list">
                    <div class="position-relative text-center me-4">
                      <button
                        class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                        type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                        data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="" src="${path}/resources/img/부여_정림사지_오층석탑_정면_(촬영년도___2015년).jpg">
                      <h4 class="h4 m-0 mt-1">
                        <a class="nav-link stretched-link" href="#">컬렉션1</a>
                      </h4>
                      </figure>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 2행 -->
        <div class="col-12 mt-1">
          <!-- Item-->
          <div class="card card-hover mb-2 shadow-sm" style="border-radius: 50px;">
            <div class="card-body p-2">
              <div class="d-flex justify-content-between">
                <div class="d-flex align-items-center ps-4">
                  <div class="d-flex align-items-center month-pp">
                    <img class="d-none d-sm-block rounded-circle" src="${path}/resources/img/행사2.JPG">
                  </div>
                  <div class="ps-sm-3">
                    <h3 class="h6 card-title pb-1 mb-2">
                      <a class="text-nav text-decoration-none" href="#">
                        <span class="me-3 h5">둥이엄마</span>
                        <!-- <span class="badge bg-faded-accent fs-sm rounded-pill">Featured</span> -->
                      </a>
                    </h3>
                  </div>
                </div>
                <div class="col-8 d-flex align-items-center justify-content-end ">
                  <!--리스트1-->
                  <div class="month-col-list d-flex align-items-center">
                    <div class="position-relative text-center me-4 align-items-center">
                      <button
                        class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                        type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                        data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="" src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg">
                      <h4 class="h4 m-0 mt-1">
                        <a class="nav-link stretched-link" href="#">컬렉션1</a>
                      </h4>
                      </figure>
                    </div>
                  </div>
                  <!--리스트2-->
                  <div class="month-col-list">
                    <div class="position-relative text-center me-4">
                      <button
                        class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                        type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                        data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="" src="${path}/resources/img/석굴암_본존불2.jpg">
                      <h4 class="h4 m-0 mt-1">
                        <a class="nav-link stretched-link" href="#">컬렉션1</a>
                      </h4>
                      </figure>
                    </div>
                  </div>
                  <!--리스트3-->
                  <div class="month-col-list">
                    <div class="position-relative text-center me-4">
                      <button
                        class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                        type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                        data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="" src="${path}/resources/img/부여_정림사지_오층석탑_정면_(촬영년도___2015년).jpg">
                      <h4 class="h4 m-0 mt-1">
                        <a class="nav-link stretched-link" href="#">컬렉션1</a>
                      </h4>
                      </figure>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- 3행 -->
        <div class="col-12 mt-1">
          <!-- Item-->
          <div class="card card-hover mb-2 shadow-sm" style="border-radius: 50px;">
            <div class="card-body p-2">
              <div class="d-flex justify-content-between">
                <div class="d-flex align-items-center ps-4">
                  <div class="d-flex align-items-center month-pp">
                    <a href="#">
                      <img class="d-none d-sm-block rounded-circle" src="img/행사3.JPG">
                    </a>
                  </div>
                  <div class="ps-sm-3">
                    <h3 class="h6 card-title pb-1 mb-2">
                      <a class="text-nav text-decoration-none" href="#">
                        <span class="me-3 h5">혼자잘간다</span>
                        <!-- <span class="badge bg-faded-accent fs-sm rounded-pill">Featured</span> -->
                      </a>
                    </h3>
                  </div>
                </div>
                <div class="col-8 d-flex align-items-center justify-content-end ">
                  <!--리스트1-->
                  <div class="month-col-list d-flex align-items-center">
                    <div class="position-relative text-center me-4 align-items-center">
                      <button
                        class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                        type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                        data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="" src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg">
                      <h4 class="h4 m-0 mt-1">
                        <a class="nav-link stretched-link" href="#">컬렉션1</a>
                      </h4>
                      </figure>
                    </div>
                  </div>
                  <!--리스트2-->
                  <div class="month-col-list">
                    <div class="position-relative text-center me-4">
                      <button
                        class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                        type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                        data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="" src="${path}/resources/img/석굴암_본존불2.jpg">
                      <h4 class="h4 m-0 mt-1">
                        <a class="nav-link stretched-link" href="#">컬렉션1</a>
                      </h4>
                      </figure>
                    </div>
                  </div>
                  <!--리스트3-->
                  <div class="month-col-list">
                    <div class="position-relative text-center me-4">
                      <button
                        class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                        type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                        data-bs-original-title="Add to Favorites">
                        <i class="fi-heart"></i>
                      </button>
                      <img class="" src="${path}/resources/img/부여_정림사지_오층석탑_정면_(촬영년도___2015년).jpg">
                      <h4 class="h4 m-0 mt-1">
                        <a class="nav-link stretched-link" href="#">컬렉션1</a>
                      </h4>
                      </figure>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>


    <!--조회수 탑50 컬렉션 -->
    <section class="container mb-5 mt-5" style="padding: 0px 100px;">
      <div class="d-sm-flex align-items-center justify-content-between pb-2 mb-sm-2">
        <h2 class="h3 mb-sm-0">주간 조회수 TOP 50</h2><a class="btn btn-link fw-bold p-0" href="#">더보러가기<i
            class="fi-arrow-long-right ms-2"></i></a>
      </div>
      <div class="row">
        <!-- item 1 -->
        <div class="col-md-3 " style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <a class="card-img-top overflow-hidden position-relative " href="#">
              <!-- <span class="badge bg-faded-info position-absolute top-0 end-0 fs-sm rounded-pill m-3">New</span> -->
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="d-block col-top-img" src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="#">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1" href="#">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 2 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <a class="card-img-top overflow-hidden position-relative " href="#">
              <!-- <span class="badge bg-faded-info position-absolute top-0 end-0 fs-sm rounded-pill m-3">New</span> -->
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="d-block col-top-img" src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="#">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1" href="#">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 3 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <a class="card-img-top overflow-hidden position-relative " href="#">
              <!-- <span class="badge bg-faded-info position-absolute top-0 end-0 fs-sm rounded-pill m-3">New</span> -->
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="d-block col-top-img" src="${path}/resources/img/행사2.JPG" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="#">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1" href="#">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 4 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <a class="card-img-top overflow-hidden position-relative " href="#">
              <!-- <span class="badge bg-faded-info position-absolute top-0 end-0 fs-sm rounded-pill m-3">New</span> -->
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="d-block col-top-img" src="${path}/resources/img/국보_제70호_훈민정음(2014년_국보_동산_앱사진).jpg" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="#">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1" href="#">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>

      </div>
    </section>

    <!--지금뜨는 컬렉션 -->
    <section class="container mb-2 mt-3" style="padding: 0px 100px;">
      <div class="d-sm-flex align-items-center justify-content-between pb-2 mb-sm-2">
        <h2 class="h3 mb-sm-0">주간 조회수 TOP 50</h2><a class="btn btn-link fw-bold p-0" href="#">더보러가기<i
            class="fi-arrow-long-right ms-2"></i></a>
      </div>
      <div class="row">
        <!-- item 1 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <a class="card-img-top overflow-hidden position-relative " href="#">
              <!-- <span class="badge bg-faded-info position-absolute top-0 end-0 fs-sm rounded-pill m-3">New</span> -->
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="d-block col-top-img" src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="#">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1" href="#">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 2 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <a class="card-img-top overflow-hidden position-relative " href="#">
              <!-- <span class="badge bg-faded-info position-absolute top-0 end-0 fs-sm rounded-pill m-3">New</span> -->
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="d-block col-top-img" src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="#">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1" href="#">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 3 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <a class="card-img-top overflow-hidden position-relative " href="#">
              <!-- <span class="badge bg-faded-info position-absolute top-0 end-0 fs-sm rounded-pill m-3">New</span> -->
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="d-block col-top-img" src="${path}/resources/img/행사2.JPG" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="#">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1" href="#">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>
        <!-- item 4 -->
        <div class="col-md-3" style="height: 350px;">
          <article class="card card-hover border-0 shadow h-100">
            <a class="card-img-top overflow-hidden position-relative " href="#">
              <!-- <span class="badge bg-faded-info position-absolute top-0 end-0 fs-sm rounded-pill m-3">New</span> -->
              <button
                class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5 "
                type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                data-bs-original-title="Add to Favorites">
                <i class="fi-heart"></i>
              </button>
              <img class="d-block col-top-img" src="${path}/resources/img/국보_제70호_훈민정음(2014년_국보_동산_앱사진).jpg" alt="Image"></a>
            <div class="card-body pb-3">
              <h3 class="fs-base pt-1 mb-2"><a class="nav-link" href="#">반가사유사유사유사유상</a></h3>
            </div><a class="card-footer d-flex align-items-center text-decoration-none border-top-0 pt-0 mb-1" href="#">
              <div class="d-flex align-items-center col-top-pp">
                <img class="rounded-circle" src="${path}/resources/img/행사2.JPG">
              </div>
              <div class="ps-2">
                <h6 class="fs-sm text-nav lh-base mb-1">Bessie Cooper</h6>
              </div>
            </a>
          </article>
        </div>

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
                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="img/flags/de.png"
                      width="20" alt="Deutsch">Deutsch</a></li>
                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="img/flags/fr.png"
                      width="20" alt="Français">Français</a></li>
                <li><a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="img/flags/es.png"
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