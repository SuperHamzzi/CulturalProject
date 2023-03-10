<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>컬렉션 리스트</title>

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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/collection-list.css">

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

<!-- 상단 프로필-->
    <section class="mb-3">
      <!-- 배경이미지, 불투명도-->

      <!-- 배경이미지, 크기, 불투명도-->
      <div class="jarallax bg-dark" style="height: 270px;">
        <span class="img-overlay bg-transparent opacity-80"
          style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(${path}/resources/img/경복궁_근정전_전경.jpg);"></div>
        <div class="row content-overlay d-flex justify-content-center align-items-end"
          style="height: 170px; padding-top: 140px;">
          <!-- 배경박스-->
          <div class="content-overlay d-block justify-content-center text-center bg-white"
            style="width: 1200px; border-top-left-radius:40px; border-top-right-radius:40px;">
            <!-- 프로필 사진, 관리하기-->
            <div class="d-block justify-content-center text-center my-2 pt-4">
              <div class="row d-flex justify-content-center">
                <div class="col-11 d-flex align-items-center justify-content-around p-0">
                  <div class="col-3 d-flex align-items-center flex-column ps-5">
                    <div class="d-flex align-items-center p-img mb-3">
                      <a href="#">
                        <img class="d-none d-sm-block rounded-circle " src="img/행사3.JPG">
                      </a>
                    </div>
                    <div class="d-block">
                      <a class="text-nav text-decoration-none" href="#">
                        <span class="h4">문화재홀릭남</span>
                        <!-- <span class="badge bg-faded-accent fs-sm rounded-pill">Featured</span> -->
                      </a>
                    </div>
                  </div>
                  <div class="col-7 d-flex pb-3 align-content-around flex-column " style="height: 180px;">
                    <div class="d-flex d-block justify-content-end">
                      <button class="btn btn-translucent-primary mb-3 me-2" type="button">관리하기</button>
                      <!-- <a class="h5 d-block block d-flex fw-bold text-decoration-none text-nowrap text-end"
                      href="#">관리하기</a> -->
                    </div>
                    <div class="d-block d-flex pt-2 ">
                      <hr class="" style="border: .5px solid rgba(138, 137, 137, 0.389); width: 700px;" />
                    </div>

                  </div>

                </div>
              </div>
            </div>


          </div>
        </div>

      </div>
      </div>

    </section>


    <!-- 정렬 선택-->
    <section class="container mb-lg-4 mt-3" style="padding: 80px 100px 0px 100px;">
      <div class="content-overlay d-block justify-content-end mb-5 d-flex">
        <div class="row " style="height: 55px; width:600px;">
          <div class="col-12 bg-white">
            <div class="d-flex flex-md-row flex-column align-items-md-center justify-content-end my-2">
              <div class="col-8 d-flex align-items-sm-center ps-5">
              </div>
              <!-- Sort-->
              <div class="d-flex align-items-sm-center align-items-end">
                <div class="d-flex flex-sm-row flex-column align-items-sm-center w-100 pe-sm-5">
                  <label class="mb-sm-0 mb-2 me-sm-2 pe-sm-1 text-nowrap" for="sortby">
                    <i class="fi-arrows-sort me-2"></i>정렬 선택 :</label>
                  <select class="form-select form-select-sm" id="sortby" style="min-width: 180px;">
                    <option>좋아요순</option>
                    <option>조회순</option>
                    <option>이름순</option>
                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 컬렉션 리스트-->
    <section>
      <div class="container" style=" padding: 0 150px;">
        <!-- item-->
        <div class="card card-horizontal mb-3">
          <!-- 이미지-->
          <div class="col-list ">
            <img src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg">
          </div>
          <!-- 컬렉션 리스트명, 버튼-->
          <div class="align-content-around p-2" style="width: 610px; height: 250px;">
            <div class="p-2 ps-4 position-absolute" style="width: 610px; height: 135px;">
              <h3 class="h3 pt-3 mb-2"><a class="nav-link stretched-link" href="city-guide-blog-single.html">경주빵 먹으면서 보는 코스</a></h3>
              <p class="fs-sm text-muted pt-3">경주빵 맛있어. 또 먹어</p>
            </div>
            <!-- 좋아고, 댓글 박스-->
            <div class="d-flex flex-row justify-content-around py-3 px-3 ms-2"
              style="margin-top: 135px; border-top:1px solid rgba(132, 132, 132, 0.395);">
              <div class="d-inline-block d-flex ps-4">
                <a class="icon-box card flex-row align-items-center card-hover border-0 rounded-pill py-2 ps-2 pe-4"
                  href="#" style="width:9rem;">
                  <div class="icon-box-media bg-light text-primary rounded-circle me-2"><i class="fi-chat-circle"></i>
                  </div>
                  <h3 class="icon-box-title fs-4 ps-1 mb-0">댓글</h3>
                </a>
              </div>
              <div class="d-inline-block d-flex ">
                <a class="icon-box card flex-row align-items-center card-hover border-0 rounded-pill py-2 ps-2 pe-4"
                  href="#" style="width:10.5rem;">
                  <div class="icon-box-media bg-faded-primary text-primary rounded-circle me-2"><i class="fi-heart"></i>
                  </div>
                  <h3 class="icon-box-title fs-4 ps-1 mb-0">좋아요</h3>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!-- item-->
        <div class="card card-horizontal mb-3">
          <!-- 이미지-->
          <div class="col-list ">
            <img src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg">
          </div>
          <!-- 컬렉션 리스트명, 버튼-->
          <div class="align-content-around p-2" style="width: 610px; height: 250px;">
            <div class="p-2 ps-4 position-absolute" style="width: 610px; height: 135px;">
              <h3 class="h3 pt-3 mb-2"><a class="nav-link stretched-link" href="city-guide-blog-single.html">경주빵 먹으면서 보는 코스</a></h3>
              <p class="fs-sm text-muted pt-3">경주빵 맛있어. 또 먹어</p>
            </div>
            <!-- 좋아고, 댓글 박스-->
            <div class="d-flex flex-row justify-content-around py-3 px-3 ms-2"
              style="margin-top: 135px; border-top:1px solid rgba(132, 132, 132, 0.395);">
              <div class="d-inline-block d-flex ps-4">
                <a class="icon-box card flex-row align-items-center card-hover border-0 rounded-pill py-2 ps-2 pe-4"
                  href="#" style="width:9rem;">
                  <div class="icon-box-media bg-light text-primary rounded-circle me-2"><i class="fi-chat-circle"></i>
                  </div>
                  <h3 class="icon-box-title fs-4 ps-1 mb-0">댓글</h3>
                </a>
              </div>
              <div class="d-inline-block d-flex ">
                <a class="icon-box card flex-row align-items-center card-hover border-0 rounded-pill py-2 ps-2 pe-4"
                  href="#" style="width:10.5rem;">
                  <div class="icon-box-media bg-faded-primary text-primary rounded-circle me-2"><i class="fi-heart"></i>
                  </div>
                  <h3 class="icon-box-title fs-4 ps-1 mb-0">좋아요</h3>
                </a>
              </div>
            </div>
          </div>
        </div>
                <!-- item-->
                <div class="card card-horizontal mb-3">
                  <!-- 이미지-->
                  <div class="col-list ">
                    <img src="${path}/resources/img/석굴암_본존불2.jpg">
                  </div>
                  <!-- 컬렉션 리스트명, 버튼-->
                  <div class="align-content-around p-2" style="width: 610px; height: 250px;">
                    <div class="p-2 ps-4 position-absolute" style="width: 610px; height: 135px;">
                      <h3 class="h3 pt-3 mb-2"><a class="nav-link stretched-link" href="city-guide-blog-single.html">경주빵 먹으면서 보는 코스</a></h3>
                      <p class="fs-sm text-muted pt-3">경주빵 맛있어. 또 먹어</p>
                    </div>
                    <!-- 좋아고, 댓글 박스-->
                    <div class="d-flex flex-row justify-content-around py-3 px-3 ms-2"
                      style="margin-top: 135px; border-top:1px solid rgba(132, 132, 132, 0.395);">
                      <div class="d-inline-block d-flex ps-4">
                        <a class="icon-box card flex-row align-items-center card-hover border-0 rounded-pill py-2 ps-2 pe-4"
                          href="#" style="width:9rem;">
                          <div class="icon-box-media bg-light text-primary rounded-circle me-2"><i class="fi-chat-circle"></i>
                          </div>
                          <h3 class="icon-box-title fs-4 ps-1 mb-0">댓글</h3>
                        </a>
                      </div>
                      <div class="d-inline-block d-flex ">
                        <a class="icon-box card flex-row align-items-center card-hover border-0 rounded-pill py-2 ps-2 pe-4"
                          href="#" style="width:10.5rem;">
                          <div class="icon-box-media bg-faded-primary text-primary rounded-circle me-2"><i class="fi-heart"></i>
                          </div>
                          <h3 class="icon-box-title fs-4 ps-1 mb-0">좋아요</h3>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                        <!-- item-->
        <div class="card card-horizontal mb-3">
          <!-- 이미지-->
          <div class="col-list ">
            <img src="${path}/resources/img/국보_제70호_훈민정음(2014년_국보_동산_앱사진).jpg">
          </div>
          <!-- 컬렉션 리스트명, 버튼-->
          <div class="align-content-around p-2" style="width: 610px; height: 250px;">
            <div class="p-2 ps-4 position-absolute" style="width: 610px; height: 135px;">
              <h3 class="h3 pt-3 mb-2"><a class="nav-link stretched-link" href="city-guide-blog-single.html">경주빵 먹으면서 보는 코스</a></h3>
              <p class="fs-sm text-muted pt-3">경주빵 맛있어. 또 먹어</p>
            </div>
            <!-- 좋아고, 댓글 박스-->
            <div class="d-flex flex-row justify-content-around py-3 px-3 ms-2"
              style="margin-top: 135px; border-top:1px solid rgba(132, 132, 132, 0.395);">
              <div class="d-inline-block d-flex ps-4">
                <a class="icon-box card flex-row align-items-center card-hover border-0 rounded-pill py-2 ps-2 pe-4"
                  href="#" style="width:9rem;">
                  <div class="icon-box-media bg-light text-primary rounded-circle me-2"><i class="fi-chat-circle"></i>
                  </div>
                  <h3 class="icon-box-title fs-4 ps-1 mb-0">댓글</h3>
                </a>
              </div>
              <div class="d-inline-block d-flex ">
                <a class="icon-box card flex-row align-items-center card-hover border-0 rounded-pill py-2 ps-2 pe-4"
                  href="#" style="width:10.5rem;">
                  <div class="icon-box-media bg-faded-primary text-primary rounded-circle me-2"><i class="fi-heart"></i>
                  </div>
                  <h3 class="icon-box-title fs-4 ps-1 mb-0">좋아요</h3>
                </a>
              </div>
            </div>
          </div>
        </div>


      </div>
    </section>


    <!-- 페이지 넘기기-->
    <section class="my-5">
      <div class="container d-flex justify-content-center">
        <nav aria-label="Page navigation example">
          <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#"><i class="fi-chevron-left me-2"></i>Prev</a></li>
            <li class="page-item d-sm-none"><span class="page-link page-link-static">2 / 5</span></li>
            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">1</a></li>
            <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">2<span
                  class="visually-hidden">(current)</span></span></li>
            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">4</a></li>
            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">5</a></li>
            <li class="page-item"><a class="page-link" href="#" aria-label="Next">Next<i
                  class="fi-chevron-right ms-2"></i></a></li>
          </ul>
        </nav>
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