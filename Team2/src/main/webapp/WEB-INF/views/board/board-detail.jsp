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
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  
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
  <link rel="stylesheet" media="screen" href="${path}/resources/css/board.css">
  <link rel="stylesheet" href="${path}/resources/css/search-main.css">
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

    <section class="jarallax bg-dark  main-section" data-jarallax data-speed="0.5">
      <!-- 배경이미지, 불투명도-->
      <span class="img-overlay bg-transparent opacity-75"
        style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));">
      </span>
      <div class="jarallax-img img-main" style="background-image: url(${path}/resources/img/경복궁_근정전_내부_어좌.jpg);"></div>
      <!-- 문화재 검색칸 문구, 입력창-->
      <div class="content-overlay container content1">
          </div>
        </div>
      </div>
      </div>
    </section>
    <!-- 게시판시작 -->
  <div class="board">
    <div class="board-name">
      <span>해당 게시물</span>
    </div>
    <div class="board-container">
      <div class="board-list">
         <ul>
          <li><a href="${path}/main">공지사항</a></li>
          <li><a href="${path}/board-best">베스트게시판</a></li>
          <li><a href="${path}/board-free">자유게시판</a></li>
          <li><a href="${path}/board-question">질문게시판</a></li>
          <li><a href="${path}/board-customer">고객센터</a></li>
        </ul>
      </div>
      <!-- 게시판-->
      <div class="board-detail">
        <div class="board-detail_ttl">
          <div class="detail_text-ttl">제목</div>
          <div class="detail_text-content">글의 제목입니다</div>
          <div class="detail_text-writer">작성자</div>
        </div>
        <div class="board-detail-context">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam incidunt nobis molestias quaerat sequi nulla, dicta laudantium aperiam eveniet distinctio consectetur repudiandae a, saepe, esse exercitationem officia nesciunt quis asperiores.
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam incidunt nobis molestias quaerat sequi nulla, dicta laudantium aperiam eveniet distinctio consectetur repudiandae a, saepe, esse exercitationem officia nesciunt quis asperiores.
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam incidunt nobis molestias quaerat sequi nulla, dicta laudantium aperiam eveniet distinctio consectetur repudiandae a, saepe, esse exercitationem officia nesciunt quis asperiores.
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam incidunt nobis molestias quaerat sequi nulla, dicta laudantium aperiam eveniet distinctio consectetur repudiandae a, saepe, esse exercitationem officia nesciunt quis asperiores.
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam incidunt nobis molestias quaerat sequi nulla, dicta laudantium aperiam eveniet distinctio consectetur repudiandae a, saepe, esse exercitationem officia nesciunt quis asperiores.
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam incidunt nobis molestias quaerat sequi nulla, dicta laudantium aperiam eveniet distinctio consectetur repudiandae a, saepe, esse exercitationem officia nesciunt quis asperiores.
        </div>
        <div class="board-detail-list-like-modify">
          <div class="board-detail-list">목록보기</div>
          <div class="board-detail-like">추천</div>
          <div class="board-detail-like-icon"><i class="bi bi-chat-heart"></i></div>
          <div class="board-detail-modify">수정하기</div>
        </div>
        <div class="board-detail-comment">
          <div class="board-detail-comment-name">댓글 내용 입력</div>
          <div class="board-detail-comment-area"><textarea name="" id="" cols="210" rows="10"></textarea></div>
          <div class="board-detail-comment-enroll">댓글 등록</div>
        </div>
        <div class="board-detail-comment-user">
          <div class="board-detail-comment-user-info">
            <i class="bi bi-person-circle"></i>
            <span class="board-detail-comment-user-name">작성자 닉네임</span>
            <span class="board-detail-comment-user-data">2022.12.12</span>
          </div>
        </div>
        <div class="board-detail-comment-user-context">
          <textarea class="board-detail-comment-user-context-textarea"></textarea>
        </div>
        <div class="board-detail-comment-user-contorller">
          <div class="board-detail-comment-user-contorller-mofidy">수정</div>
          <div class="board-detail-comment-user-contorller-del">삭제</div>
        </div>
      </div>
  </div>

  <jsp:include page="../common/footer.jsp"/>
  
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
  <script src="${path}/resources/js/board.js"></script>
</body>
</html>