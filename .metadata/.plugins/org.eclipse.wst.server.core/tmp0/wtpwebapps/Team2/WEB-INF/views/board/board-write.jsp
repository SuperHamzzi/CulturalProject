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
      <span>글쓰기</span>
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
      <!-- 게시판 메인 -->
      <div class="board-main">
        <!-- 게시판 검색 -->
        <div class="board-search" id="board-search-writing">
          <div class="dropdown ">
              <button class="btn btn-secondary dropdown-toggle" id="board-search-ttl" type="button" data-bs-toggle="dropdown" aria-expanded="false">게시판 선택</button>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item " href="#" id="board-search-item">공지사항</a></li>
                <li><a class="dropdown-item" href="#" id="board-search-item">베스트게시판</a></li>
                <li><a class="dropdown-item" href="#" id="board-search-item">자유게시판</a></li>
                <li><a class="dropdown-item" href="#" id="board-search-item">고객센터</a></li>
              </ul>
            </div>
          </div>
          <!-- 게시판 제목 -->
          <div class="boder-wrting-ttl" >
            <p>제목</p>  
            <input type="text" placeholder="글의 제목을 적는 곳입니다.">
          </div>
          <div class="boder-wrting-context" >
            <p>내용</p>  
            <textarea placeholder="글의 내용을 적는 곳입니다." class=""></textarea>
            <div class="btns">
              <button type="submit" class="btn_add">등록</button>
              <button type="submit" class="btn_del">지우기</button>
            </div>
          </div>
      <!-- 게시판 -->
        
      
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