/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.69
 * Generated at: 2022-12-24 19:56:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.event;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class event_002ddetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1670891023399L));
    _jspx_dependants.put("jar:file:/C:/dev_source/Team2/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Team2/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <title>나만의 박물관</title>\r\n");
      out.write("  <!-- Viewport-->\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  \r\n");
      out.write("  <!-- Page loading styles-->\r\n");
      out.write("  <style>\r\n");
      out.write("    .page-loading {\r\n");
      out.write("      position: fixed;\r\n");
      out.write("      top: 0;\r\n");
      out.write("      right: 0;\r\n");
      out.write("      bottom: 0;\r\n");
      out.write("      left: 0;\r\n");
      out.write("      width: 100%;\r\n");
      out.write("      height: 100%;\r\n");
      out.write("      -webkit-transition: all .4s .2s ease-in-out;\r\n");
      out.write("      transition: all .4s .2s ease-in-out;\r\n");
      out.write("      background-color: #fff;\r\n");
      out.write("      opacity: 0;\r\n");
      out.write("      visibility: hidden;\r\n");
      out.write("      z-index: 9999;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .page-loading.active {\r\n");
      out.write("      opacity: 1;\r\n");
      out.write("      visibility: visible;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .page-loading-inner {\r\n");
      out.write("      position: absolute;\r\n");
      out.write("      top: 50%;\r\n");
      out.write("      left: 0;\r\n");
      out.write("      width: 100%;\r\n");
      out.write("      text-align: center;\r\n");
      out.write("      -webkit-transform: translateY(-50%);\r\n");
      out.write("      transform: translateY(-50%);\r\n");
      out.write("      -webkit-transition: opacity .2s ease-in-out;\r\n");
      out.write("      transition: opacity .2s ease-in-out;\r\n");
      out.write("      opacity: 0;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .page-loading.active>.page-loading-inner {\r\n");
      out.write("      opacity: 1;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .page-loading-inner>span {\r\n");
      out.write("      display: block;\r\n");
      out.write("      font-size: 1rem;\r\n");
      out.write("      font-weight: normal;\r\n");
      out.write("      color: #666276;\r\n");
      out.write("      ;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .page-spinner {\r\n");
      out.write("      display: inline-block;\r\n");
      out.write("      width: 2.75rem;\r\n");
      out.write("      height: 2.75rem;\r\n");
      out.write("      margin-bottom: .75rem;\r\n");
      out.write("      vertical-align: text-bottom;\r\n");
      out.write("      border: .15em solid #bbb7c5;\r\n");
      out.write("      border-right-color: transparent;\r\n");
      out.write("      border-radius: 50%;\r\n");
      out.write("      -webkit-animation: spinner .75s linear infinite;\r\n");
      out.write("      animation: spinner .75s linear infinite;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    @-webkit-keyframes spinner {\r\n");
      out.write("      100% {\r\n");
      out.write("        -webkit-transform: rotate(360deg);\r\n");
      out.write("        transform: rotate(360deg);\r\n");
      out.write("      }\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    @keyframes spinner {\r\n");
      out.write("      100% {\r\n");
      out.write("        -webkit-transform: rotate(360deg);\r\n");
      out.write("        transform: rotate(360deg);\r\n");
      out.write("      }\r\n");
      out.write("    }\r\n");
      out.write("  </style>\r\n");
      out.write("  <!-- Page loading scripts-->\r\n");
      out.write("  <script>\r\n");
      out.write("    (function () {\r\n");
      out.write("      window.onload = function () {\r\n");
      out.write("        var preloader = document.querySelector('.page-loading');\r\n");
      out.write("        preloader.classList.remove('active');\r\n");
      out.write("        setTimeout(function () {\r\n");
      out.write("          preloader.remove();\r\n");
      out.write("        }, 2000);\r\n");
      out.write("      };\r\n");
      out.write("    })();\r\n");
      out.write("\r\n");
      out.write("  </script>\r\n");
      out.write("  <!-- Vendor Styles-->\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/vendor/simplebar.min.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/vendor/lightgallery-bundle.min.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/vendor/tiny-slider.css\" />\r\n");
      out.write("  <!-- Main Theme Styles + Bootstrap-->\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/theme.css\">\r\n");
      out.write("  <!-- 채원 직접 작성한 Styles -->\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/common/common.css\">\r\n");
      out.write("  <!-- 인화스타일시트 -->\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/event-detail.css\">\r\n");
      out.write("  <!-- 인화아이콘 -->\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<!-- Body-->\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <!-- Page loading spinner-->\r\n");
      out.write("  <div class=\"page-loading active\">\r\n");
      out.write("    <div class=\"page-loading-inner\">\r\n");
      out.write("      <div class=\"page-spinner\"></div><span>Loading...</span>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <main class=\"page-wrapper\">\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../common/header.jsp", out, false);
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <!-- Page content-->\r\n");
      out.write("    <section class=\"container pt-5 mt-5\">\r\n");
      out.write("      <!-- Home>행사일정>행사상세 -->\r\n");
      out.write("      <nav class=\"mb-3 pt-md-3\" aria-label=\"breadcrumb\">\r\n");
      out.write("        <ol class=\"breadcrumb\">\r\n");
      out.write("          <li class=\"breadcrumb-item\"><a href=\"index.html\">Home</a></li>\r\n");
      out.write("          <li class=\"breadcrumb-item\"><a href=\"evevt-main.html\">행사 일정</a></li>\r\n");
      out.write("          <li class=\"breadcrumb-item active\">행사 상세</li>\r\n");
      out.write("        </ol>\r\n");
      out.write("        <hr>\r\n");
      out.write("      </nav>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <!-- 행사사진, 행사 정보 -->\r\n");
      out.write("    <section class=\"container mb-md-4\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("        <div class=\"mb-md-0 mb-3\">\r\n");
      out.write("          <!-- 행사 사진 -->\r\n");
      out.write("          <div class=\"pic\">\r\n");
      out.write("            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/공연1.png\">\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- 행사 정보 -->\r\n");
      out.write("          <div class=\"ps-2 ms-1\">\r\n");
      out.write("            <h3 class=\"h5 mb-2 bih-f-1\"> 외규장각 의궤, 그 고귀함의 의미</h3>\r\n");
      out.write("          </div>\r\n");
      out.write("          <hr><br>\r\n");
      out.write("          <div class=\"card py-2 px-sm-4 px-3 shadow-sm bih-s-1\">\r\n");
      out.write("            <div class=\"card-body mx-n2\">\r\n");
      out.write("              <h3 class=\"h5 mb-2 bih-f-2\"> 국립중앙박물관</h3>\r\n");
      out.write("              <hr><br><br><br>\r\n");
      out.write("              <div class=\"mb-3 pb-3\">\r\n");
      out.write("                <ul class=\"nav row  row-cols-1 gy-1 bih-f-3 bih-s-2\">\r\n");
      out.write("                  <li class=\"col\"><a class=\"nav-link p-0 fw-normal d-flex align-items-start\"><i\r\n");
      out.write("                        class=\"fi-map-pin mt-1 me-2 align-middle opacity-70\"></i>국립중앙박물관 특별전시실</a></li>\r\n");
      out.write("                  <li class=\"col\"><a class=\"nav-link d-inline-block p-0 fw-normal d-inline-flex align-items-start\"\r\n");
      out.write("                      ><i class=\"fi-phone mt-1 me-2 align-middle opacity-70\"></i>1688-0361</a></li>\r\n");
      out.write("                  <li class=\"col\"><a class=\"nav-link p-0 fw-normal d-flex align-items-start bih-m-1\"><i\r\n");
      out.write("                        class=\"bi bi-bank\"></i>국립박물관재단</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <hr>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"mb-3 pb-3 \">\r\n");
      out.write("                <div class=\"row row-cols-sm-2 row-cols-1\">\r\n");
      out.write("                  <div class=\"col mb-sm-0 mb-3 bih-s-3\">\r\n");
      out.write("                    <h4 class=\"h5 mb-0\"><span class=\"fs-4\">&nbsp;관람료 5,000원</span></h4>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"col bih-s-4\"><a class=\"btn btn-primary btn-lg rounded-pill\"\r\n");
      out.write("                      href=\"#\">&nbsp;&nbsp;&nbsp;결제&nbsp;&nbsp;&nbsp;<i class=\"fi-chevron-right fs-sm ms-2\"></i></a>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <!-- 행사 안내 -->\r\n");
      out.write("    <section class=\"container pb-5 mb-md-4\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("        <div class=\"mb-md-0 mb-3\">\r\n");
      out.write("          <hr>\r\n");
      out.write("          <div class=\"bih-f-4\">행사안내</div>\r\n");
      out.write("          <div class=\"bih-f-5\">\r\n");
      out.write("            2022년 11월 1일(화) ~ 2023년 3월 19일(일)<br>\r\n");
      out.write("            월,화,목,금,일요일 10:00~18:00(발권마감 17:20 입장마감 17:30)/ 수,토요일 10:00~21:00(발권마감 20:20 입장마감 20:30)<br>\r\n");
      out.write("            *관람 시간 내 관람 원하시는 시간대에 입장 가능합니다.<br>\r\n");
      out.write("            *휴관일 1.1.(신정), 1.22.(설날 당일)<br>\r\n");
      out.write("            *외규장각 의궤의 존재를 세상에 알리고 연구에 헌신하다 2011년 11월 23일 타계하신 고故 박병선 박사를 기리며 추모기간 동안 무료로 전시장을 개방합니다. (추모기간: 2022. 11.\r\n");
      out.write("            21.(월) ~ 11. 27.(일) / 1주일\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <!-- 지도 -->\r\n");
      out.write("    <section class=\"container pb-5 mb-md-4\">\r\n");
      out.write("      <div class=\"map\">\r\n");
      out.write("        <i class=\"bi bi-geo-alt-fill\"></i>&nbsp;국립중앙박물관 특별전시실\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("        <div class=\"position-relative bg-size-cover bg-position-center bg-repeat-0 h-100 rounded-3\"\r\n");
      out.write("          style=\"background-image: url(img/city-guide/single/map.jpg); min-height: 250px;\">\r\n");
      out.write("          <div class=\"d-flex h-100 flex-column align-items-center justify-content-center\"><a class=\"btn btn-primary rounded-pill stretched-link\"\r\n");
      out.write("              href=\"#\"\r\n");
      out.write("              data-iframe=\"true\" data-bs-toggle=\"lightbox\"><i class=\"fi-route me-2\"></i>Get directions</a></div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <!-- 유사 행사 -->\r\n");
      out.write("    <section class=\"container pb-5 mb-lg-4\">\r\n");
      out.write("      <hr>\r\n");
      out.write("      <div class=\"d-flex align-items-center justify-content-between mb-4 pb-2 bih-f-6\">\r\n");
      out.write("        <h2 class=\"h3 mb-0\">이런 행사는 어때요?</h2><a class=\"btn btn-link fw-normal ms-sm-3 p-0\"\r\n");
      out.write("          href=\"#\">더보기<i class=\"fi-arrow-long-right ms-2\"></i></a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2\">\r\n");
      out.write("        <div class=\"tns-carousel-inner\"\r\n");
      out.write("          data-carousel-options=\"{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}\">\r\n");
      out.write("          <!-- Item-->\r\n");
      out.write("          <div>\r\n");
      out.write("            <div class=\"position-relative\">\r\n");
      out.write("              <div class=\"position-relative mb-3\">\r\n");
      out.write("                <img class=\"rounded-3 bih-s-5\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/121526_한국문화재재단_풍류_공연_64_국가무형_서도소리_2017_기록화_국립무형유산원.jpg\"\r\n");
      out.write("                  alt=\"Article img\">\r\n");
      out.write("              </div>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link stretched-link\" href=\"event-detail.html\">서도소리</a></h3>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link bih-f-7\">2022.12.1-2023.3.4</a></h3>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link bih-f-7\">서울시 광화문 샤롯데시어터</a></h3>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- Item-->\r\n");
      out.write("          <div>\r\n");
      out.write("            <div class=\"position-relative\">\r\n");
      out.write("              <div class=\"position-relative mb-3\">\r\n");
      out.write("                <img class=\"rounded-3 bih-s-5\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/8579_사자춤_앉아서_모래기_치기_국가무형_북청사자놀음_2001_서울_기록화_국립무형유산원__.jpg\"\r\n");
      out.write("                  alt=\"Article img\">\r\n");
      out.write("              </div>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link stretched-link\" href=\"event-detail.html\">북청사자놀음</a></h3>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link bih-f-7\">2023.7.4-2023.9.23</a></h3>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link bih-f-7\">서울특별시</a></h3>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- Item-->\r\n");
      out.write("          <div>\r\n");
      out.write("            <div class=\"position-relative\">\r\n");
      out.write("              <div class=\"position-relative mb-3\">\r\n");
      out.write("                <img class=\"rounded-3 bih-s-5\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/82876_정전_뒤에서_본_전경_국가무형_종묘제례악_2008_서울_기록화_국립무형유산원.jpg\"\r\n");
      out.write("                  alt=\"Article img\">\r\n");
      out.write("              </div>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link stretched-link\" href=\"event-detail.html\">김천금릉빗내농악</a></h3>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link bih-f-7\">2023.6.4-2023.8.9</a></h3>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link bih-f-7\">경상북도 김천시</a></h3>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- Item-->\r\n");
      out.write("          <div>\r\n");
      out.write("            <div class=\"position-relative\">\r\n");
      out.write("              <div class=\"position-relative mb-3\">\r\n");
      out.write("                <img class=\"rounded-3 bih-s-5\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/판굿(문화재청).JPG\" alt=\"Article img\">\r\n");
      out.write("              </div>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link stretched-link\" href=\"event-detail.html\">판굿</a></h3>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link bih-f-7\">2023.6.1-2023.7.4</a></h3>\r\n");
      out.write("              <h3 class=\"mb-2\"><a class=\"nav-link bih-f-7\">서울시 광화문 광장</a></h3>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </section>\r\n");
      out.write("  </main>\r\n");
      out.write("\r\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../common/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!-- Vendor scrits: js libraries and plugins-->\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/simplebar.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/smooth-scroll.polyfills.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/lightgallery.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/lg-fullscreen.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/lg-zoom.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/lg-thumbnail.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/flatpickr.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/tiny-slider.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <!-- Main theme script-->\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/theme.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    boolean _jspx_th_c_005fset_005f0_reused = false;
    try {
      _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fset_005f0.setParent(null);
      // /WEB-INF/views/event/event-detail.jsp(4,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setVar("path");
      // /WEB-INF/views/event/event-detail.jsp(4,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/event/event-detail.jsp(4,0) '${pageContext.request.contextPath}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
      if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      _jspx_th_c_005fset_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f0_reused);
    }
    return false;
  }
}