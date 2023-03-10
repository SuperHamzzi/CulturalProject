<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>문화재 검색</title>

  <!-- SEO Meta Tags-->
  <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
  <meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
  <meta name="author" content="Createx Studio">
  
  <!-- Viewport-->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Vendor Styles-->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/simplebar.min.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/flatpickr.min.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/leaflet.css"/>
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/nouislider.min.css"/>
  <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
  <!-- 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/search.css">
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

    <!-- 문화재 검색칸 -->
    <section class="jarallax bg-dark zindex-1 main-section" data-jarallax data-speed="0.5">
      <!-- 배경이미지, 불투명도-->
      <span class="img-overlay bg-transparent opacity-75"
        style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));">
      </span>
      <div class="jarallax-img img-main" style="background-image: url(img/경복궁_근정전_내부_어좌.jpg);"></div>
      <!-- 문화재 검색칸 문구, 입력창-->
      <div class="content-overlay container content1">
        <!-- 문화재 문구 -->
        <div class="col-xl-9 mx-auto mb-4 px-0 text-start">
          <p class="fs-lg text-white mt-5">문화재를 검색하고 나만의 컬렉션을 만들자!</p>
          <h1 class="display-6 mt-4 text-white">문화재 검색</h1>
        </div>
        <!-- 검색창-->
        <div class="col-xl-10 mx-auto">
          <form class="bg-white d-block d-md-flex position-relative rounded-md-pill mb-4 p-2 border-0">
            <div class="input-group input-group-lg">
              <span class="input-group-text text-muted rounded-pill border-0 ms-2">
                <i class="fi-search"></i>
              </span>
              <input class="form-control fs-4 border-0" type="text" placeholder="문화재명 입력">
            </div>
            <div class="d-sm-flex border-0 ">
              <button class="btn btn-search-m rounded-pill ms-sm-3 shadow" type="button">검색하기</button>
            </div>
          </form>
          <!-- 검색 라디오 버튼 -->
          <div class="radio2 text-center m-auto text-white fw-bold">
            <label class="" for="culturalHeritage-name">
              <input class="" type="radio" name="culturalHeritage-s" id="culturalHeritage-name" value="option1" checked>
              <span>문화재명</span>
            </label>&emsp;&emsp;&emsp;&emsp;
            <label class="" for="culturalHeritage-name-d">
              <input class="" type="radio" name="culturalHeritage-s" id="culturalHeritage-name-d" value="option2">
              <span>문화재명 + 내용</span>
            </label>
          </div>
        </div>
      </div>
      </div>
    </section>

    <!-- 문화재 검색 필터 -->
    <section class="container mt-5 mb-5">
      <aside class="col-lg-4 col-xl-3 border-top-lg border-end-lg shadow-sm px-3 px-xl-4 px-xxl-5 pt-lg-2 w-100"> <!-- border-top-lg border-end-lg shadow-sm -->
        <div class="offcanvas offcanvas-start offcanvas-collapse" id="filters-sidebar">
          <!-- ??? -->
          <div class="offcanvas-header d-flex d-lg-none align-items-center">
            <h2 class="h5 mb-0">Filters</h2>
            <button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
          </div>

          <!-- 초기화 버튼 -->
          <div class="border-bottom py-4 text-end">
            <button class="reset btn btn-outline-primary rounded-pill" type="button"><i class="fi-rotate-right me-2"></i>초기화</button>
          </div>
          
          <!-- 검색 필터들 -->
          <div class="offcanvas-body py-lg-4">
            <div class="tab-content">
              <div class="tab-pane fade show active" id="filters" role="tabpanel">
                <div class="filter d-flex flex-row justify-content-between">
                  <!-- 지정종목 -->
                  <div class="pb-4 mb-2">
                    <h3 class="h6">지정종목</h3>
                    <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 15.75rem;">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="hotel">
                        <label class="form-check-label fs-sm" for="hotel">지정종목1</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="hostel">
                        <label class="form-check-label fs-sm" for="hostel">지정종목2</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="motel">
                        <label class="form-check-label fs-sm" for="motel">지정종목3</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="apartment" checked>
                        <label class="form-check-label fs-sm" for="apartment">지정종목4</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="cottage">
                        <label class="form-check-label fs-sm" for="cottage">지정종목5</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="boutique-hotel">
                        <label class="form-check-label fs-sm" for="boutique-hotel">지정종목6</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="room">
                        <label class="form-check-label fs-sm" for="room">지정종목7</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="land">
                        <label class="form-check-label fs-sm" for="land">지정종목8</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="commercial">
                        <label class="form-check-label fs-sm" for="commercial">지정종목9</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="parking-lot">
                        <label class="form-check-label fs-sm" for="parking-lot">지정종목10</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="parking-lot">
                        <label class="form-check-label fs-sm" for="parking-lot">지정종목11</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="parking-lot">
                        <label class="form-check-label fs-sm" for="parking-lot">지정종목12</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="parking-lot">
                        <label class="form-check-label fs-sm" for="parking-lot">지정종목13</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="parking-lot">
                        <label class="form-check-label fs-sm" for="parking-lot">지정종목14</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="parking-lot">
                        <label class="form-check-label fs-sm" for="parking-lot">지정종목15</label>
                      </div>
                    </div>
                  </div>

                  <!-- 지역 -->
                  <div class="pb-4 mb-2">
                    <h3 class="h6">지역</h3>
                    <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 15.75rem;">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="parking">
                        <label class="form-check-label fs-sm" for="parking">Parking</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="restaurant">
                        <label class="form-check-label fs-sm" for="restaurant">Restaurant</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="pet-friendly">
                        <label class="form-check-label fs-sm" for="pet-friendly">Pet Friendly</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="room-service" checked>
                        <label class="form-check-label fs-sm" for="room-service">Room Service</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="fitness-center">
                        <label class="form-check-label fs-sm" for="fitness-center">Fitness Center</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="free-wifi" checked>
                        <label class="form-check-label fs-sm" for="free-wifi">Free WiFi</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="spa-lounge">
                        <label class="form-check-label fs-sm" for="spa-lounge">Spa lounge</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="bar">
                        <label class="form-check-label fs-sm" for="bar">Bar</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="swimming-pool">
                        <label class="form-check-label fs-sm" for="swimming-pool">Swimming pool</label>
                      </div>
                    </div>
                  </div>

                  <!-- 시대 -->
                  <div class="pb-4 mb-2">
                    <h3 class="h6">시대</h3>
                    <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 15.75rem;">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="kitchen">
                        <label class="form-check-label fs-sm" for="kitchen">Kitchen</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="private-bathroom">
                        <label class="form-check-label fs-sm" for="private-bathroom">Private Bathroom</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="air-conditioning" checked>
                        <label class="form-check-label fs-sm" for="air-conditioning">Air Conditioning</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="desk">
                        <label class="form-check-label fs-sm" for="desk">Desk</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="terrace">
                        <label class="form-check-label fs-sm" for="terrace">Terrace</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="washing-machine">
                        <label class="form-check-label fs-sm" for="washing-machine">Washing Machine</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="heating">
                        <label class="form-check-label fs-sm" for="heating">Heating</label>
                      </div>
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="laundry-service">
                        <label class="form-check-label fs-sm" for="laundry-service">Laundry Service</label>
                      </div>
                    </div>
                  </div>

                  <!-- 지정연도 + 유형분류 -->
                  <div class="wide">
                    <!-- 지정연도 -->
                    <div class="pb-4 mb-2">
                      <h3 class="h6">지정연도</h3>
                      <div class="range-slider" data-start-min="300" data-start-max="700" data-min="50" data-max="1000" data-step="20">
                        <!-- <div class="range-slider-ui"></div> -->
                        <div class="d-flex align-items-center p-3">
                          <div class="w-50 pe-2">
                            <div class="input-group"><span class="input-group-text fs-base">시작</span>
                              <input class="form-control range-slider-value-min" type="text">
                            </div>
                          </div>
                          <div class="text-muted">&mdash;</div>
                          <div class="w-50 ps-2">
                            <div class="input-group"><span class="input-group-text fs-base">끝</span>
                              <input class="form-control range-slider-value-max" type="text">
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- 유형분류 -->
                    <div class="pb-4 mb-2">
                      <h3 class="h6">유형분류</h3>
                      <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 5rem;">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="kitchen">
                          <label class="form-check-label fs-sm" for="kitchen">Kitchen</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="private-bathroom">
                          <label class="form-check-label fs-sm" for="private-bathroom">Private Bathroom</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="air-conditioning" checked>
                          <label class="form-check-label fs-sm" for="air-conditioning">Air Conditioning</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="desk">
                          <label class="form-check-label fs-sm" for="desk">Desk</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="terrace">
                          <label class="form-check-label fs-sm" for="terrace">Terrace</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="washing-machine">
                          <label class="form-check-label fs-sm" for="washing-machine">Washing Machine</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="heating">
                          <label class="form-check-label fs-sm" for="heating">Heating</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="laundry-service">
                          <label class="form-check-label fs-sm" for="laundry-service">Laundry Service</label>
                        </div>
                      </div>
                    </div>

                    
                  </div>
                </div>                
              </div>
            </div>
          </div>

          <!-- 검색 버튼 -->
          <div class="border-top py-4 text-center">
            <button class="search btn btn-outline-primary" type="button"><i class="fi-search me-2"></i>검색</button>
          </div>

        </div>
      </aside>
    </section>

    <!-- 문화재 검색 결과 -->
    <section class="container mb-5 pb-md-4">
      <div class="d-flex mb-2 mt-3 re-box">
        <!-- 검색 건수 출력-->
        <div class="flex-grow-1">
          <span class="fs-5 fw-bold">총 (문화재 검색수)건의 자료가 검색되었습니다.</span>
        </div>
        <!-- 정렬 방법 라디오-->
        <div class="radio3 fs-5 fw-bold">
          <label class="" for="sort-name">
            <input class="" type="radio" name="sort" id="sort-name" value="option11" checked>
            <span>이름순</span></label>&emsp;
          <label class="" for="sort-date">
            <input class="" type="radio" name="sort" id="sort-date" value="option22">
            <span>지정일순</span></label>&emsp;
          <label class="" for="sort-pop">
            <input class="" type="radio" name="sort" id="sort-pop" value="option33">
            <span>인기순</span></label>
        </div>
      </div>
      <hr />
      <!-- 검색결과 이미지카드 출력 전체칸-->
      <div class="d-flex align-content-start flex-wrap">
          <!-- Item1 -->
          <div class="result-item1 shadow ">
            <div class="re-card-img">
              <a href="#">
                <img src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="Image"></a>
            </div>
            <div class="d-flex justify-content-between sn-box1">
              <div class="mt-1">
                <span class="fs-5"><a class="nav-link" href="#">반가라라가상</a></span>
              </div>
              <div class="pt-3 pe-3 fs-xs">
                <span class="text-muted"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>부여읍
                  부여성</span>
              </div>
            </div>
            <!--좋아요, 컬렉션-->
            <div class="d-flex justify-content-evenly b2-box">
              <div class="b2-box-ch ps-4">
                <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                  data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                  data-bs-original-title="Add from Favorites"><i class="fi-heart"></i></button><span
                  class="fw-bold align-middle">1165</span>
              </div>
              <div class="b2-box-ch">
                <button class="btn btn-icon btn-light-primary text-primary rounded-circle" type="button"
                  data-bs-toggle="tooltip" data-bs-placement="left" aria-label="Remove from Favorites"
                  data-bs-original-title="Remove from Favorites"><i class="fi-bookmark align-bottom"></i></button><span
                  class="fw-bold align-middle">컬렉션</span>
              </div>
            </div>
          </div>
      </div><!-- 결과값 박스-->
        







      <!-- 페이지 넘기기-->
      <div class="my-5 d-flex justify-content-center">
        <ul class="pagination ">
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
      </div> 
      <!-- 페이지 넘기기 끝-->



    </section>
  </main>

  <!-- Footer  -->
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
      class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up"></i>
  </a>

  <!-- Vendor scrits: js libraries and plugins-->
  <script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/js/vendor/simplebar.min.js"></script>
  <script src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>
  <script src="${path}/resources/js/vendor/tiny-slider.js"></script>
  <script src="${path}/resources/js/vendor/flatpickr.min.js"></script>
  <script src="${path}/resources/js/vendor/jarallax.min.js"></script>
  <script src="${path}/resources/js/vendor/leaflet.js"></script>
  <script src="${path}/resources/js/vendor/nouislider.min.js"></script>
  
  <!-- Main theme script + Page Loading script -->
  <script src="${path}/resources/js/theme.js"></script>
  <script src="${path}/resources/js/page-loading.js"></script>
</body>

</html>