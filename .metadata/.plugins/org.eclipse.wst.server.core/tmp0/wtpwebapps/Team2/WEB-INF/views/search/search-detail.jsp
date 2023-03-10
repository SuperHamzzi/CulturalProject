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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/simplebar.min.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/lightgallery-bundle.min.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/tiny-slider.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/css/vendor/flatpickr.min.css"/>
  <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/page-loading.css">
  <!-- 직접 작성한 Styles -->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/common.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/common/header-footer.css">
  <link rel="stylesheet" media="screen" href="${path}/resources/css/search-detail.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
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

    <!-- 문화재 이름, 문화재 위치 -->
    <section class="container pt-1 mt-1">
      <!-- 문화재 이름-->
      <div class="d-flex mb-0">
        <h2 class="ps-3 m-0 mt-5 fw-bold">반가 사유상</h2>
      </div>
      <div class="text-nowrap d-flex align-items-center justify-content-between">
        <!-- 문화재 위치 -->
        <div>
          <i class="bi bi-geo-alt-fill ps-3"></i>&nbsp;&nbsp;부여군 부여읍 부여성
        </div>
        <!-- 좋아요 버튼-->
        <div class="mb-2 me-0">
          <div class="d-inline-block likebtn p-1 ps-2 pb-1 fw-bold">
            <button class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle" type="button"
              data-bs-toggle="tooltip" title="Add to Wishlist"><i
                class="fi-heart"></i></button>&nbsp;&nbsp;<span>좋아요</span>
          </div>
          <!-- 컬렉션 버튼-->
          <div class="d-inline-block likebtn p-1  fw-bold">
            <div class="dropdown d-inline-block" data-bs-toggle="tooltip" title="Share">
              <button class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle ms-2" type="button"
                data-bs-toggle="dropdown"><i class="bi bi-box-arrow-up-right"></i></button>&nbsp;&nbsp;
              <span>컬렉션</span>
              <div class="dropdown-menu dropdown-menu-end my-1">
                <button class="dropdown-item" type="button">새 컬렉션에 추가하기</button>
                <button class="dropdown-item" type="button">컬렉션1</button>
                <button class="dropdown-item" type="button">컬렉션2</button>
              </div>
            </div>
          </div><!-- 컬렉션 버튼-->
        </div>
      </div>
      <hr style="border: 0.5px solid #67778876;"> <br>
    </section>

    <!-- 문화재 사진 -->
    <section class="container overflow-auto mb-5" data-simplebar>
      <!-- 메인 사진-->
      <div class="row g-2 g-md-3 gallery" data-thumbnails="true" style="min-width: 30rem;">
        <div class="col-6 d-flex" style="width: 680px; height: 500px;">
          <a class="gallery-item rounded-md-3 main-p" href="img/경복궁_근정전_내부_어좌.jpg"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;이곳에 이름이 들어온다.&lt;/h6&gt;">
            <img class="shadow" src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="Gallery thumbnail"></a>
        </div>
        <!--작은 4개 사진-->
        <div class="d-flex flex-wrap mine-pic" style="width: 620px; height: 500px; padding: 0;">
          <!-- 사진1-->
          <a class="gallery-item rounded-md-3 mb-2 mb-md-3 ms-1 picture1 " href="img/국보_국보_청자_투각칠보문뚜껑_향로.jpg"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;Kids bed&lt;/h6&gt;">
            <img src="${path}/resources/img/국보_국보_청자_투각칠보문뚜껑_향로.jpg" alt="Gallery thumbnail"></a>

          <a class=" gallery-item rounded-md-3 mb-2 mb-md-3 ms-3 picture1" href="img/city-guide/single/03.jpg"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;Working desk&lt;/h6&gt;">
            <img src="${path}/resources/img/행사3.jpg" alt="Gallery thumbnail"></a>
          <a class=" gallery-item rounded-md-3 mb-2 mb-md-3 ms-1 picture1" href="img/city-guide/single/02.jpg"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;Kids bed&lt;/h6&gt;">
            <img src="${path}/resources/img/석굴암_본존불2.jpg" alt="Gallery thumbnail"></a>
          <a class=" gallery-item rounded-md-3 mb-2 mb-md-3 ms-3 picture1" href="img/city-guide/single/03.jpg"
            data-sub-html="&lt;h6 class=&quot;fs-sm text-light&quot;&gt;Working desk&lt;/h6&gt;">
            <img src="${path}/resources/img/경복궁_근정전_내부_어좌.jpg" alt="Gallery thumbnail"></a>
        </div>

      </div>
    </section>

    <!-- 기본정보, 문화재설명 -->
    <section class="container pb-4 mb-md-4">
      <div class="row">
        <div class="col-md-bih1 mb-md-0 mb-3">
          <div class="card py-2 px-sm-4 px-3 shadow">
            <div class="card-body mx-n2 fw-bold fs-6">
              <!-- 기본정보 제목 -->
              <h3 class="h4 mb-2"> 기본정보</h3>
              <hr><br>
              <!-- 기본정보 표 -->
              <table class="tg">
                <tr>
                  <td>종목</td>
                  <td>보물 제61호</td>
                </tr>
                <tr>
                  <td>분류</td>
                  <td>유적건조물/종교신앙/불교/탑</td>
                </tr>
                <tr>
                  <td>수량/면적</td>
                  <td>1기</td>
                </tr>
                <tr>
                  <td>지정(등록)일&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td>1963년 01월 21일</td>
                </tr>
                <tr>
                  <td>소재지</td>
                  <td>경북 경주시 진현동 산1-1번지</td>
                </tr>
                <tr>
                  <td>시대</td>
                  <td>고려시대</td>
                </tr>
                <tr>
                  <td>소유자</td>
                  <td>불국사</td>
                </tr>
                <tr>
                  <td>관리자</td>
                  <td>불국사</td>
                </tr>
              </table>
              <br>
            </div>
          </div>
        </div>

        <!-- 문화재설명-->
        <div class="col-md-bih2">
          <div class="explanation pt-3 ps-3">
            <h5>문화재 설명</h5>
            원각사는 지금의 탑골공원 자리에 있었던 절로, 조선 세조 11년(1465)에 세웠다. 조선시대의 숭유억불정책 속에서도 중요한 사찰로 보호되어
            오다가 1504년 연산군이 이 절을 ‘연방원(聯芳院)’이라는 이름의 기생집으로 만들어 승려들을 내보냄으로써 절은 없어지게 되었다.

            이 탑은 조선시대의 석탑으로는 유일한 형태로, 높이는 약 12m이다. 대리석으로 만들어졌으며 탑 구석구석에 표현된 화려한 조각이 대리석의
            회백색과 잘 어울려 더욱 아름답게 보인다.

            탑을 받쳐주는 기단(基壇)은 3단으로 되어있고, 위에서 보면 아(亞)자 모양이다. 기단의 각 층 옆면에는 여러가지 장식이 화사하게 조각되었는데
            용, 사자, 연꽃무늬 등이 표현되었다. 탑신부(塔身部)는 10층으로 이루어져 있으며, 3층까지는 기단과 같은 아(亞)자 모양을 하고 있고 4층부터는
            정사각형의 평면을 이루고 있다. 각 층마다 목조건축을 모방하여 지붕, 공포(목조건축에서 처마를 받치기 위해 기둥 위에 얹는 부재), 기둥 등을
            세부적으로 잘 표현하였다.

            우리나라 석탑의 일반적 재료가 화강암인데 비해 대리석으로 만들어 졌고, 전체적인 형태나 세부구조 등이 고려시대의 경천사지 10층석탑과 매우
            비슷하여 더욱 주의를 끌고 있다. 탑의 윗부분에 남아있는 기록으로 세조 13년(1467)에 만들어졌음을 알 수 있으며, 형태가 특이하고 표현장식이
            풍부하여 훌륭한 걸작품으로 손꼽히고 있다.
          </div>
        </div>
      </div>
    </section>


    <!-- 문화재위치, 댓글 -->
    <section class="container pb-4 mb-md-4">
      <div class="row">
        <!-- Location (Map)-->
        <div class="col-md-bih1">
          <h4 class="ms-4">문화재 위치</h4>
          <div class="position-relative bg-size-cover bg-position-center bg-repeat-0 rounded-3 shadow"
            style="height: 550px; background-image: url(${path}/resources/img/city-guide/single/map.jpg);">
            <a class="h-100 w-100" href="#"></a>
          </div>
        </div>


        <!-- Review-->
        <div class="col-md-bih2">
          <span class="fs-5 fw-bold ps-3">리뷰(2개)</span>
          <div class="" style="margin-top: 30px;">
            <div class="mb-3 pb-1 border-bottom ps-3">
              <div class="d-flex justify-content-between mb-3 ps-2">
                <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/13.png"
                    width="48" alt="Avatar">
                  <div class="ps-2">
                    <h6 class="fs-5 mb-0">Floyd Miles</h6>
                    <!-- <span class="star-rating">
                      <i
                        class="star-rating-icon fi-star-filled active"></i><i
                        class="star-rating-icon fi-star-filled active"></i><i
                        class="star-rating-icon fi-star-filled active"></i><i
                        class="star-rating-icon fi-star-filled active"></i><i
                        class="star-rating-icon fi-star-filled active"></i>
                      </span> -->
                  </div>
                </div><span class="text-muted fs-sm">Oct 28, 2020</span>
              </div>
              <p>Viverra nunc blandit sapien non imperdiet sit. Purus tempus elementum aliquam eu urna. A aenean duis
                non
                egestas at libero porttitor integer eget. Sed dictum lobortis laoreet gravida.</p>
              <!-- <div class="d-flex align-items-center">
                <button class="btn-like" type="button"><i class="fi-like"></i><span>(2)</span></button>
                <div class="border-end me-1">&nbsp;</div>
                <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(1)</span></button>
              </div> -->
            </div>
            <!-- Review-->
            <div class="mb-3 pb-1 border-bottom ps-3">
              <div class="d-flex justify-content-between mb-3 ps-2">
                <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/04.jpg"
                    width="48" alt="Avatar">
                  <div class="ps-2">
                    <h6 class="fs-5 mb-0">Ralph Edwards</h6>
                    <!-- <span class="star-rating">
                      <i
                        class="star-rating-icon fi-star-filled active"></i><i
                        class="star-rating-icon fi-star-filled active"></i><i
                        class="star-rating-icon fi-star-filled active"></i><i
                        class="star-rating-icon fi-star-filled active"></i><i
                        class="star-rating-icon fi-star"></i>
                      </span> -->
                  </div>
                </div><span class="text-muted fs-sm">Sep 14, 2020</span>
              </div>
              <p>Elementum nisl, egestas nam consectetur nisl, at pellentesque cras. Non sed ac vivamus dolor dignissim
                ut.
                Nisl sapien blandit pulvinar sagittis donec sociis ipsum arcu est. Tempus, rutrum morbi scelerisque
                tempor
                mi. Etiam urna, cras bibendum leo nec faucibus velit. Tempor lectus dignissim at auctor integer neque
                quam
                amet.</p>
              <!-- <div class="d-flex align-items-center">
                <button class="btn-like" type="button"><i class="fi-like"></i><span>(0)</span></button>
                <div class="border-end me-1">&nbsp;</div>
                <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(0)</span></button>
              </div> -->
            </div>

            <div>
              <!-- 댓글칸입력 -->
              <div class="input-group">
                <input class="form-control" type="text" placeholder="내용을 입력하세요." style="height: 120px;">
              </div>
              <!-- 댓글 버튼+ 페이지칸 -->
              <div class="d-flex justify-content-between mt-1">
                <!-- Review pagination + Add review btn-->
                <div class="d-flex align-items-center justify-content-start ms-2">
                  <nav aria-label="Reviews pagination">
                    <ul class="pagination mb-0">
                      <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 8</span></li>
                      <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">1<span
                            class="visually-hidden">(current)</span></span></li>
                      <li class="page-item d-none d-sm-block"><a class="page-link" href="#">2</a></li>
                      <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
                      <li class="page-item d-none d-sm-block">...</li>
                      <li class="page-item d-none d-sm-block"><a class="page-link" href="#">8</a></li>
                      <li class="page-item"><a class="page-link" href="#" aria-label="Next"><i
                            class="fi-chevron-right"></i></a>
                      </li>
                    </ul>
                  </nav>
                </div>
                <!-- 입력 버튼3종 -->
                <div class="d-flex align-items-center ">
                  <div class="input-group-text p-0"><a class="d-inline align-self-center text-body px-3 py-2"
                      href="#"><i class="fi-edit mt-n1"></i></a></div>
                  <!-- <div class="input-group-text p-0"><a class="d-block text-success px-3 py-2" href="#"><i class="fi-check mt-n1"></i></a></div> -->
                  <div class="input-group-text p-0"><a class=" d-inline text-danger px-3 py-2" href="#"><i
                        class="fi-trash mt-n1"></i></a></div>
                  <!-- <button class="btn btn-primary rounded-pill" type="button">Add review</button> -->
                  <a class="btn btn-outline-primary rounded-pill ms-1" href="#modal-review" data-bs-toggle="modal"><i
                      class="fi-edit mt-n1 me-1 align-middle"></i>Add review</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </section>

    <!-- 유사한 문화재 -->
    <section class="container pb-5 mb-lg-4">
      <div class="d-flex align-items-center justify-content-between mb-4 pb-2 bih-mg">
        <h2 class="h3 mb-0">이런 문화재는 어때요?</h2><a class="btn btn-link fw-normal ms-sm-3 p-0"
          href="search-main.html">더보기<i class="fi-arrow-long-right ms-2"></i></a>
      </div>
      <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
        <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: 
            {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:4,&quot;nav&quot;:false}}}">
          <!-- Item-->
          <div>
            <div class="position-relative">
              <div class="position-relative mb-3">
                <button
                  class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                  type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                    class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/경복궁_근정전_전경.jpg"
                  alt="Article img">
              </div>
              <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
              <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">경복궁</a></h3>
            </div>
          </div>
          <!-- Item-->
          <div>
            <div class="position-relative">
              <div class="position-relative mb-3">
                <button
                  class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                  type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                    class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/경주_불국사_다보탑.jpg"
                  alt="Article img">
              </div>
              <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
              <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">경주 불국사 다보탑</a></h3>
            </div>
          </div>
          <!-- Item-->
          <div>
            <div class="position-relative">
              <div class="position-relative mb-3">
                <button
                  class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                  type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                    class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/국보_계유명전씨아미타불비상(2014년_국보_동산_앱사진)005.jpg"
                  alt="Article img">
              </div>
              <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
              <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">계유명전씨아미타불비상</a></h3>
            </div>
          </div>
          <!-- Item-->
          <div>
            <div class="position-relative">
              <div class="position-relative mb-3">
                <button
                  class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                  type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                    class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/국보_제70호_훈민정음(2014년_국보_동산_앱사진).jpg"
                  alt="Article img">
              </div>
              <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
              <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">훈민정음</a></h3>
            </div>
          </div>
          <!-- Item-->
          <div>
            <div class="position-relative">
              <div class="position-relative mb-3">
                <button
                  class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                  type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i
                    class="fi-heart"></i></button><img class="rounded-3 size-bih" src="${path}/resources/img/부여_정림사지_오층석탑_정면_(촬영년도___2015년).jpg"
                  alt="Article img">
              </div>
              <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="search-detail.html">국보</a></h3>
              <h4 class="mb-2 fs-lg2"><a class="nav-link stretched-link" href="search-detail.html">정림사지_오층석탑</a></h3>
            </div>
          </div>
        </div>
      </div>
    </section>

  </main>

  <jsp:include page="../common/footer.jsp"/>

  <!-- Back to top button-->
  <a class="btn-scroll-top" href="#top" data-scroll><span
      class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
      class="btn-scroll-top-icon fi-chevron-up"></i></a>

  <!-- Vendor scrits: js libraries and plugins-->
  <script src="${path}/resources/js/vendor/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/js/vendor/simplebar.min.js"></script>
  <script src="${path}/resources/js/vendor/smooth-scroll.polyfills.min.js"></script>

  <script src="${path}/resources/js/vendor/lightgallery.min.js"></script>
  <script src="${path}/resources/js/vendor/lg-fullscreen.min.js"></script>
  <script src="${path}/resources/js/vendor/lg-zoom.min.js"></script>
  <script src="${path}/resources/js/vendor/lg-thumbnail.min.js"></script>

  <script src="${path}/resources/js/vendor/tiny-slider.js"></script>
  <script src="${path}/resources/js/vendor/flatpickr.min.js"></script>

  <!-- Main theme script-->
  <script src="${path}/resources/js/theme.js"></script>
  <script src="${path}/resources/js/page-loading.js"></script>
</body>

</html>