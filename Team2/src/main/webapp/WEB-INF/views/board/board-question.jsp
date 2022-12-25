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
      <span>질문게시판</span>
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
        <div class="board-search">
          
            <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" id="board-search-ttl" type="button" data-bs-toggle="dropdown" aria-expanded="false">제목</button>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item " href="#" id="board-search-item">제목</a></li>
                <li><a class="dropdown-item" href="#" id="board-search-item">제목 + 내용</a></li>
              </ul>
            </div>
          <form action="" class="board-search-form">
          <input class="board-search-input" type="text" >
          <button class="board-search-icon" type="submit"><i class="bi bi-search"></i></button>
        </form> 
      </div>
      <!-- 게시판 -->
        <table class="board-table">
          <thead>
            <tr class="board-tr">
                <th class="board-no" >번호</th>
                <th class="board-ttl">제목</th>
                <th class="board-writer">작성자</th>
                <th class="board-reg">등록일</th>
                <th class="board-look">조회</th>
            </tr>
          </thead>
          <tbody>
          <tr class="board-content">
            <td class="td-no text-center">1</td>
            <td class="td-ttl "><a href="board-detail.html">질문 게시판입니다</a> <span class="new-txt">new</span></td>
            <td class="td-wrter text-center">조희정</td>
            <td class="td-reg text-center">2022.12.09</td>
            <td class="td-look text-center">99</td>
          </tr>
          <tr class="board-content">
            <td class="td-no text-center">2</td>
            <td class="td-ttl "><a href="board-detail.html">질문 게시판입니다</a> <span class="new-txt">new</span></td>
            <td class="td-wrter text-center">호날두</td>
            <td class="td-reg text-center">2022.12.09</td>
            <td class="td-look text-center">99</td>
          </tr>
          <tr class="board-content">
            <td class="td-no text-center">3</td>
            <td class="td-ttl "><a href="board-detail.html">질문 게시판입니다</a> <span class="new-txt">new</span></td>
            <td class="td-wrter text-center">메시</td>
            <td class="td-reg text-center">2022.12.09</td>
            <td class="td-look text-center">99</td>
          </tr>
          <tr class="board-content">
            <td class="td-no text-center">4</td>
            <td class="td-ttl "><a href="board-detail.html">질문 게시판입니다</a> <span class="new-txt">new</span></td>
            <td class="td-wrter text-center">손흥민</td>
            <td class="td-reg text-center">2022.12.09</td>
            <td class="td-look text-center">99</td>
          </tr>
          <tr class="board-content">
            <td class="td-no text-center">5</td>
            <td class="td-ttl "><a href="board-detail.html">질문 게시판입니다</a> <span class="new-txt">new</span></td>
            <td class="td-wrter text-center">호날두</td>
            <td class="td-reg text-center">2022.12.09</td>
            <td class="td-look text-center">99</td>
          </tr>
          <tr class="board-content">
            <td class="td-no text-center">6</td>
            <td class="td-ttl "><a href="board-detail.html">질문 게시판입니다</a> <span class="new-txt">new</span></td>
            <td class="td-wrter text-center">조희정</td>
            <td class="td-reg text-center">2022.12.09</td>
            <td class="td-look text-center">99</td>
          </tr>
          <tr class="board-content">
            <td class="td-no text-center">7</td>
            <td class="td-ttl "><a href="board-detail.html">질문 게시판입니다</a> <span class="new-txt">new</span></td>
            <td class="td-wrter text-center">조희정</td>
            <td class="td-reg text-center">2022.12.09</td>
            <td class="td-look text-center">99</td>
          </tr>
          <tr class="board-content">
            <td class="td-no text-center">8</td>
            <td class="td-ttl "><a href="board-detail.html">질문 게시판입니다</a> <span class="new-txt">new</span></td>
            <td class="td-wrter text-center">조희정</td>
            <td class="td-reg text-center">2022.12.09</td>
            <td class="td-look text-center">99</td>
          </tr>
        </tbody>  
      </tr>
        </table>
        <div class="create-board"><span><a href="/board-write.html">작성하기</a></span></div>

      <!-- 페이지 넘기기-->
      <div class="my-5 d-flex justify-content-center ">
        <ul class="pagination ">
          <li class="page-item"><a class="page-link" href="#"><i class="fi-chevron-left me-2"></i>Prev</a></li>
          <li class="page-item d-sm-none"><span class="page-link page-link-static">2 / 5</span></li>
          <li class="page-item active d-none d-sm-block"><a class="page-link" href="#">1</a></li>
          <li class="page-item  d-none d-sm-block" aria-current="page"><span class="page-link">2</li>
          <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
          <li class="page-item d-none d-sm-block"><a class="page-link" href="#">4</a></li>
          <li class="page-item d-none d-sm-block"><a class="page-link" href="#">5</a></li>
          <li class="page-item"><a class="page-link" href="#" aria-label="Next">Next<i
                class="fi-chevron-right ms-2"></i></a></li>
        </ul>
      </div> 
      <!-- 페이지 넘기기 끝-->
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