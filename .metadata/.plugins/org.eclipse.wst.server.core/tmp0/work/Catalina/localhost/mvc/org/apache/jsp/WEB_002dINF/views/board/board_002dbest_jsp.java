/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.69
 * Generated at: 2022-12-24 19:59:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class board_002dbest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <title>나만의 박물관</title>\r\n");
      out.write("  \r\n");
      out.write("  <!-- Viewport-->\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css\">\r\n");
      out.write("  \r\n");
      out.write("  <!-- Vendor Styles-->\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/vendor/simplebar.min.css\"/>\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/vendor/tiny-slider.css\"/>\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/vendor/flatpickr.min.css\"/>\r\n");
      out.write("  <!-- Main Theme Styles + Bootstrap  + Page Loading Styles -->\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/theme.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/common/page-loading.css\">\r\n");
      out.write("  <!-- 직접 작성한 Styles -->\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/common/common.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/common/header-footer.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/index.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" media=\"screen\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/board.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/search-main.css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <!-- Page loading spinner-->\r\n");
      out.write("  <div class=\"page-loading active\">\r\n");
      out.write("    <div class=\"page-loading-inner\">\r\n");
      out.write("      <div class=\"page-spinner\"></div><span>Loading...</span>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("  <main class=\"page-wrapper\">\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../common/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <section class=\"jarallax bg-dark  main-section\" data-jarallax data-speed=\"0.5\">\r\n");
      out.write("      <!-- 배경이미지, 불투명도-->\r\n");
      out.write("      <span class=\"img-overlay bg-transparent opacity-75\"\r\n");
      out.write("        style=\"background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));\">\r\n");
      out.write("      </span>\r\n");
      out.write("      <div class=\"jarallax-img img-main\" style=\"background-image: url(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/경복궁_근정전_내부_어좌.jpg);\"></div>\r\n");
      out.write("      <!-- 문화재 검색칸 문구, 입력창-->\r\n");
      out.write("      <div class=\"content-overlay container content1\">\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </section>\r\n");
      out.write("    <!-- 게시판시작 -->\r\n");
      out.write("  <div class=\"board\">\r\n");
      out.write("    <div class=\"board-name\">\r\n");
      out.write("      <span>베스트게시판</span>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"board-container\">\r\n");
      out.write("      <div class=\"board-list\">\r\n");
      out.write("         <ul>\r\n");
      out.write("          <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/main\">공지사항</a></li>\r\n");
      out.write("          <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/board-best\">베스트게시판</a></li>\r\n");
      out.write("          <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/board-free\">자유게시판</a></li>\r\n");
      out.write("          <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/board-question\">질문게시판</a></li>\r\n");
      out.write("          <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/board-customer\">고객센터</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- 게시판 메인 -->\r\n");
      out.write("      <div class=\"board-main\">\r\n");
      out.write("        <!-- 게시판 검색 -->\r\n");
      out.write("        <div class=\"board-search\">\r\n");
      out.write("          \r\n");
      out.write("            <div class=\"dropdown\">\r\n");
      out.write("              <button class=\"btn btn-secondary dropdown-toggle\" id=\"board-search-ttl\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">제목</button>\r\n");
      out.write("              <ul class=\"dropdown-menu\">\r\n");
      out.write("                <li><a class=\"dropdown-item \" href=\"#\" id=\"board-search-item\">제목</a></li>\r\n");
      out.write("                <li><a class=\"dropdown-item\" href=\"#\" id=\"board-search-item\">제목 + 내용</a></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("          <form action=\"\" class=\"board-search-form\">\r\n");
      out.write("          <input class=\"board-search-input\" type=\"text\" >\r\n");
      out.write("          <button class=\"board-search-icon\" type=\"submit\"><i class=\"bi bi-search\"></i></button>\r\n");
      out.write("        </form> \r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- 게시판 -->\r\n");
      out.write("        <table class=\"board-table\">\r\n");
      out.write("          <thead>\r\n");
      out.write("            <tr class=\"board-tr\">\r\n");
      out.write("                <th class=\"board-no\" >번호</th>\r\n");
      out.write("                <th class=\"board-ttl\">제목</th>\r\n");
      out.write("                <th class=\"board-writer\">작성자</th>\r\n");
      out.write("                <th class=\"board-reg\">등록일</th>\r\n");
      out.write("                <th class=\"board-look\">조회</th>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </thead>\r\n");
      out.write("          <tbody>\r\n");
      out.write("          <tr class=\"board-content\">\r\n");
      out.write("            <td class=\"td-no text-center\">1</td>\r\n");
      out.write("            <td class=\"td-ttl \"><a href=\"board-detail.html\">베스트 게시판입니다</a> <span class=\"new-txt\">new</span></td>\r\n");
      out.write("            <td class=\"td-wrter text-center\">조희정</td>\r\n");
      out.write("            <td class=\"td-reg text-center\">2022.12.09</td>\r\n");
      out.write("            <td class=\"td-look text-center\">99</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr class=\"board-content\">\r\n");
      out.write("            <td class=\"td-no text-center\">2</td>\r\n");
      out.write("            <td class=\"td-ttl \"><a href=\"board-detail.html\">베스트 게시판입니다</a> <span class=\"new-txt\">new</span></td>\r\n");
      out.write("            <td class=\"td-wrter text-center\">호날두</td>\r\n");
      out.write("            <td class=\"td-reg text-center\">2022.12.09</td>\r\n");
      out.write("            <td class=\"td-look text-center\">99</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr class=\"board-content\">\r\n");
      out.write("            <td class=\"td-no text-center\">3</td>\r\n");
      out.write("            <td class=\"td-ttl \"><a href=\"board-detail.html\">베스트 게시판입니다</a> <span class=\"new-txt\">new</span></td>\r\n");
      out.write("            <td class=\"td-wrter text-center\">메시</td>\r\n");
      out.write("            <td class=\"td-reg text-center\">2022.12.09</td>\r\n");
      out.write("            <td class=\"td-look text-center\">99</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr class=\"board-content\">\r\n");
      out.write("            <td class=\"td-no text-center\">4</td>\r\n");
      out.write("            <td class=\"td-ttl \"><a href=\"board-detail.html\">베스트 게시판입니다</a> <span class=\"new-txt\">new</span></td>\r\n");
      out.write("            <td class=\"td-wrter text-center\">손흥민</td>\r\n");
      out.write("            <td class=\"td-reg text-center\">2022.12.09</td>\r\n");
      out.write("            <td class=\"td-look text-center\">99</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr class=\"board-content\">\r\n");
      out.write("            <td class=\"td-no text-center\">5</td>\r\n");
      out.write("            <td class=\"td-ttl \"><a href=\"board-detail.html\">베스트 게시판입니다</a> <span class=\"new-txt\">new</span></td>\r\n");
      out.write("            <td class=\"td-wrter text-center\">호날두</td>\r\n");
      out.write("            <td class=\"td-reg text-center\">2022.12.09</td>\r\n");
      out.write("            <td class=\"td-look text-center\">99</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr class=\"board-content\">\r\n");
      out.write("            <td class=\"td-no text-center\">6</td>\r\n");
      out.write("            <td class=\"td-ttl \"><a href=\"board-detail.html\">베스트 게시판입니다</a> <span class=\"new-txt\">new</span></td>\r\n");
      out.write("            <td class=\"td-wrter text-center\">조희정</td>\r\n");
      out.write("            <td class=\"td-reg text-center\">2022.12.09</td>\r\n");
      out.write("            <td class=\"td-look text-center\">99</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr class=\"board-content\">\r\n");
      out.write("            <td class=\"td-no text-center\">7</td>\r\n");
      out.write("            <td class=\"td-ttl \"><a href=\"board-detail.html\">베스트 게시판입니다</a> <span class=\"new-txt\">new</span></td>\r\n");
      out.write("            <td class=\"td-wrter text-center\">조희정</td>\r\n");
      out.write("            <td class=\"td-reg text-center\">2022.12.09</td>\r\n");
      out.write("            <td class=\"td-look text-center\">99</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr class=\"board-content\">\r\n");
      out.write("            <td class=\"td-no text-center\">8</td>\r\n");
      out.write("            <td class=\"td-ttl \"><a href=\"board-detail.html\">베스트 게시판입니다</a> <span class=\"new-txt\">new</span></td>\r\n");
      out.write("            <td class=\"td-wrter text-center\">조희정</td>\r\n");
      out.write("            <td class=\"td-reg text-center\">2022.12.09</td>\r\n");
      out.write("            <td class=\"td-look text-center\">99</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </tbody>  \r\n");
      out.write("      </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        <div class=\"create-board\"><span><a href=\"/board-write.html\">작성하기</a></span></div>\r\n");
      out.write("\r\n");
      out.write("      <!-- 페이지 넘기기-->\r\n");
      out.write("      <div class=\"my-5 d-flex justify-content-center \">\r\n");
      out.write("        <ul class=\"pagination \">\r\n");
      out.write("          <li class=\"page-item\"><a class=\"page-link\" href=\"#\"><i class=\"fi-chevron-left me-2\"></i>Prev</a></li>\r\n");
      out.write("          <li class=\"page-item d-sm-none\"><span class=\"page-link page-link-static\">2 / 5</span></li>\r\n");
      out.write("          <li class=\"page-item active d-none d-sm-block\"><a class=\"page-link\" href=\"#\">1</a></li>\r\n");
      out.write("          <li class=\"page-item  d-none d-sm-block\" aria-current=\"page\"><span class=\"page-link\">2</li>\r\n");
      out.write("          <li class=\"page-item d-none d-sm-block\"><a class=\"page-link\" href=\"#\">3</a></li>\r\n");
      out.write("          <li class=\"page-item d-none d-sm-block\"><a class=\"page-link\" href=\"#\">4</a></li>\r\n");
      out.write("          <li class=\"page-item d-none d-sm-block\"><a class=\"page-link\" href=\"#\">5</a></li>\r\n");
      out.write("          <li class=\"page-item\"><a class=\"page-link\" href=\"#\" aria-label=\"Next\">Next<i\r\n");
      out.write("                class=\"fi-chevron-right ms-2\"></i></a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div> \r\n");
      out.write("      <!-- 페이지 넘기기 끝-->\r\n");
      out.write("      </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../common/footer.jsp", out, false);
      out.write("\r\n");
      out.write("  \r\n");
      out.write("  <!-- Back to top button-->\r\n");
      out.write("  <a class=\"btn-scroll-top\" href=\"#top\" data-scroll><span class=\"btn-scroll-top-tooltip text-muted fs-sm me-2\">Top</span><i class=\"btn-scroll-top-icon fi-chevron-up\"></i></a>\r\n");
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
      out.write("/resources/js/vendor/tiny-slider.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/flatpickr.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/vendor/jarallax.min.js\"></script>\r\n");
      out.write("  <!-- Main theme script + Page Loading script -->\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/theme.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/page-loading.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/board.js\"></script>\r\n");
      out.write("</body>\r\n");
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
      // /WEB-INF/views/board/board-best.jsp(4,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setVar("path");
      // /WEB-INF/views/board/board-best.jsp(4,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/board/board-best.jsp(4,0) '${pageContext.request.contextPath}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
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
