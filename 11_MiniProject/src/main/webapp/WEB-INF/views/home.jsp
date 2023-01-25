<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


    <!-- Hero (Banners + Slider)-->
    <!-- Promo banner-->
    <section class="container mt-4 mb-grid-gutter">
      <div class="bg-faded-info rounded-3 py-4">
        <div class="row align-items-center">
          <div class="col-md-5">
            <div class="px-4 pe-sm-0 ps-sm-5"><span class="badge bg-danger">Limited Offer</span>
              <h3 class="mt-4 mb-1 text-body fw-light">All new</h3>
              <h2 class="mb-1">Last Gen iPad Pro</h2>
              <p class="h5 text-body fw-light">at discounted price. Hurry up!</p>
              <div class="countdown py-2 h4" data-countdown="07/01/2023 07:00:00 PM">
                <div class="countdown-days"><span class="countdown-value"></span><span
                    class="countdown-label text-muted">d</span></div>
                <div class="countdown-hours"><span class="countdown-value"></span><span
                    class="countdown-label text-muted">h</span></div>
                <div class="countdown-minutes"><span class="countdown-value"></span><span
                    class="countdown-label text-muted">m</span></div>
                <div class="countdown-seconds"><span class="countdown-value"></span><span
                    class="countdown-label text-muted">s</span></div>
              </div><a class="btn btn-accent" href="#">View offers<i class="ci-arrow-right fs-ms ms-1"></i></a>
            </div>
          </div>
          <div class="col-md-7"><img src="img/home/banners/offer.jpg" alt="iPad Pro Offer"></div>
        </div>
      </div>
    </section>


    <!-- Products grid (Trending products)-->
    <section class="container pt-2">
      <!-- Heading-->
      <div class="d-flex flex-wrap justify-content-between align-items-center pt-1 border-bottom pb-4 mb-4">
        <h2 class="h3 mb-0 pt-3 me-2">추천 상품</h2>
        <div class="pt-3"><a class="btn btn-outline-accent btn-sm" href="shop-grid-ls.html">More products<i
              class="ci-arrow-right ms-1 me-n1"></i></a></div>
      </div>
      <!-- Grid-->
      <div class="row pt-2 mx-n2">


        <!-- Product-->
        <div class="col-lg-3 col-md-4 col-sm-6 px-2 mb-2">
          <div class="card product-card">
            <div class="product-card-actions d-flex align-items-center">
              <button class="btn-wishlist btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                title="Add to wishlist"><i class="ci-heart"></i></button>
            </div><a class="card-img-top d-block overflow-hidden" href="shop-single-v2.html">
              <img style="height:250px"  src="img/shop/catalog/58.jpg" alt="Product"></a>
            <div class="card-body py-2"><a class="product-meta d-block fs-xs pb-1" href="#">Headphones</a>
              <h3 class="product-title fs-sm"><a href="shop-single-v2.html">Wireless Bluetooth Headphones</a></h3>
              <div class="d-flex justify-content-between">
                <div class="product-price"><span class="text-accent">$198.<small>00</small></span></div>
                <div class="star-rating"><i class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i>
                </div>
              </div>
            </div>
            <div class="card-body card-body-hidden">
              <button class="btn btn-primary btn-sm d-block w-100 mb-2" type="button"><i
                  class="ci-cart fs-sm me-1"></i>Add to Cart</button>
            </div>
          </div>
          <hr class="d-sm-none">
        </div>

        
        <!-- Product-->
        <div class="col-lg-3 col-md-4 col-sm-6 px-2 mb-2">
          <div class="card product-card">
            <div class="product-card-actions d-flex align-items-center">
              <button class="btn-wishlist btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                title="Add to wishlist"><i class="ci-heart"></i></button>
            </div><a class="card-img-top d-block overflow-hidden" href="shop-single-v2.html">
              <img style="height:250px"  src="img/shop/catalog/58.jpg" alt="Product"></a>
            <div class="card-body py-2"><a class="product-meta d-block fs-xs pb-1" href="#">Headphones</a>
              <h3 class="product-title fs-sm"><a href="shop-single-v2.html">Wireless Bluetooth Headphones</a></h3>
              <div class="d-flex justify-content-between">
                <div class="product-price"><span class="text-accent">$198.<small>00</small></span></div>
                <div class="star-rating"><i class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i>
                </div>
              </div>
            </div>
            <div class="card-body card-body-hidden">
              <button class="btn btn-primary btn-sm d-block w-100 mb-2" type="button"><i
                  class="ci-cart fs-sm me-1"></i>Add to Cart</button>
            </div>
          </div>
          <hr class="d-sm-none">
        </div>

        
        <!-- Product-->
        <div class="col-lg-3 col-md-4 col-sm-6 px-2 mb-2">
          <div class="card product-card">
            <div class="product-card-actions d-flex align-items-center">
              <button class="btn-wishlist btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                title="Add to wishlist"><i class="ci-heart"></i></button>
            </div><a class="card-img-top d-block overflow-hidden" href="shop-single-v2.html">
              <img style="height:250px"  src="img/shop/catalog/58.jpg" alt="Product"></a>
            <div class="card-body py-2"><a class="product-meta d-block fs-xs pb-1" href="#">Headphones</a>
              <h3 class="product-title fs-sm"><a href="shop-single-v2.html">Wireless Bluetooth Headphones</a></h3>
              <div class="d-flex justify-content-between">
                <div class="product-price"><span class="text-accent">$198.<small>00</small></span></div>
                <div class="star-rating"><i class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i>
                </div>
              </div>
            </div>
            <div class="card-body card-body-hidden">
              <button class="btn btn-primary btn-sm d-block w-100 mb-2" type="button"><i
                  class="ci-cart fs-sm me-1"></i>Add to Cart</button>
            </div>
          </div>
          <hr class="d-sm-none">
        </div>


        
        <!-- Product-->
        <div class="col-lg-3 col-md-4 col-sm-6 px-2 mb-2">
          <div class="card product-card">
            <div class="product-card-actions d-flex align-items-center">
              <button class="btn-wishlist btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left"
                title="Add to wishlist"><i class="ci-heart"></i></button>
            </div><a class="card-img-top d-block overflow-hidden" href="shop-single-v2.html">
              <img style="height:250px"  src="img/shop/catalog/58.jpg" alt="Product"></a>
            <div class="card-body py-2"><a class="product-meta d-block fs-xs pb-1" href="#">Headphones</a>
              <h3 class="product-title fs-sm"><a href="shop-single-v2.html">Wireless Bluetooth Headphones</a></h3>
              <div class="d-flex justify-content-between">
                <div class="product-price"><span class="text-accent">$198.<small>00</small></span></div>
                <div class="star-rating"><i class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i><i
                    class="star-rating-icon ci-star-filled active"></i>
                </div>
              </div>
            </div>
            <div class="card-body card-body-hidden">
              <button class="btn btn-primary btn-sm d-block w-100 mb-2" type="button"><i
                  class="ci-cart fs-sm me-1"></i>Add to Cart</button>
            </div>
          </div>
          <hr class="d-sm-none">
        </div>




      </div>
    </section>

    <!-- Product widgets-->
    <section class="container pb-2 pb-md-5 mt-3">
      <h2 class="h3 mb-0 pt-3 me-2">뉴스</h2>
      <div class="row">

        <div class="col-md-4 col-sm-6 mb-2 py-3">
          <div class="widget">
            <h3 class="widget-title">키보드 뉴스</h3>

            <div class="d-flex align-items-center pb-2 border-bottom">
              <div class="ps-2">
                <h6 class="widget-product-title"><a href="shop-single-v2.html">Wireless Bluetooth Headphones</a></h6>
                <div class="widget-product-meta"><span class="text-accent">중앙일보</span></div>
              </div>
            </div>

            <p class="mb-0">...</p><a class="fs-sm" href="shop-grid-ls.html">View more<i
                class="ci-arrow-right fs-xs ms-1"></i></a>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-2 py-3">
          <div class="widget">
            <h3 class="widget-title">마우스 뉴스</h3>

            <div class="d-flex align-items-center pb-2 border-bottom">
              <div class="ps-2">
                <h6 class="widget-product-title"><a href="shop-single-v2.html">Wireless Bluetooth Headphones</a></h6>
                <div class="widget-product-meta"><span class="text-accent">중앙일보</span></div>
              </div>
            </div>

            <p class="mb-0">...</p><a class="fs-sm" href="shop-grid-ls.html">View more<i
                class="ci-arrow-right fs-xs ms-1"></i></a>
          </div>
        </div>

        <div class="col-md-4 col-sm-6 mb-2 py-3">
          <div class="widget">
            <h3 class="widget-title">최신 뉴스</h3>

            <div class="d-flex align-items-center pb-2 border-bottom">
              <div class="ps-2">
                <h6 class="widget-product-title"><a href="shop-single-v2.html">Wireless Bluetooth Headphones</a></h6>
                <div class="widget-product-meta"><span class="text-accent">중앙일보</span></div>
              </div>
            </div>

            <p class="mb-0">...</p><a class="fs-sm" href="shop-grid-ls.html">View more<i
                class="ci-arrow-right fs-xs ms-1"></i></a>
          </div>
        </div>

      </div>
    </section>
  </main>
  <!-- Footer-->
  <footer class="footer bg-dark pt-5">
    <div class="pt-5 bg-darker">
      <div class="container">
        <div class="row pb-3">
          <div class="col-md-3 col-sm-6 mb-4">
            <div class="d-flex"><i class="ci-rocket text-primary" style="font-size: 2.25rem;"></i>
              <div class="ps-3">
                <h6 class="fs-base text-light mb-1">Fast and free delivery</h6>
                <p class="mb-0 fs-ms text-light opacity-50">Free delivery for all orders over $200</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 mb-4">
            <div class="d-flex"><i class="ci-currency-exchange text-primary" style="font-size: 2.25rem;"></i>
              <div class="ps-3">
                <h6 class="fs-base text-light mb-1">Money back guarantee</h6>
                <p class="mb-0 fs-ms text-light opacity-50">We return money within 30 days</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 mb-4">
            <div class="d-flex"><i class="ci-support text-primary" style="font-size: 2.25rem;"></i>
              <div class="ps-3">
                <h6 class="fs-base text-light mb-1">24/7 customer support</h6>
                <p class="mb-0 fs-ms text-light opacity-50">Friendly 24/7 customer support</p>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 mb-4">
            <div class="d-flex"><i class="ci-card text-primary" style="font-size: 2.25rem;"></i>
              <div class="ps-3">
                <h6 class="fs-base text-light mb-1">Secure online payment</h6>
                <p class="mb-0 fs-ms text-light opacity-50">We possess SSL / Secure сertificate</p>
              </div>
            </div>
          </div>
        </div>
        <hr class="hr-light mb-5">
        <div class="row pb-2">
          <div class="col-md-6 text-center text-md-start mb-4">
            <div class="text-nowrap mb-4"><a class="d-inline-block align-middle mt-n1 me-3" href="#"><img
                  class="d-block" src="img/footer-logo-light.png" width="117" alt="Cartzilla"></a>
              <div class="btn-group dropdown disable-autohide">
                <button class="btn btn-outline-light border-light btn-sm dropdown-toggle px-2" type="button"
                  data-bs-toggle="dropdown"><img class="me-2" src="img/flags/en.png" width="20" alt="English">Eng /
                  $</button>
                <ul class="dropdown-menu my-1">
                  <li class="dropdown-item">
                    <select class="form-select form-select-sm">
                      <option value="usd">$ USD</option>
                      <option value="eur">€ EUR</option>
                      <option value="ukp">£ UKP</option>
                      <option value="jpy">¥ JPY</option>
                    </select>
                  </li>
                  <li><a class="dropdown-item pb-1" href="#"><img class="me-2" src="img/flags/fr.png" width="20"
                        alt="Français">Français</a></li>
                  <li><a class="dropdown-item pb-1" href="#"><img class="me-2" src="img/flags/de.png" width="20"
                        alt="Deutsch">Deutsch</a></li>
                  <li><a class="dropdown-item" href="#"><img class="me-2" src="img/flags/it.png" width="20"
                        alt="Italiano">Italiano</a></li>
                </ul>
              </div>
            </div>
            <div class="widget widget-links widget-light">
              <ul class="widget-list d-flex flex-wrap justify-content-center justify-content-md-start">
                <li class="widget-list-item me-4"><a class="widget-list-link" href="#">Outlets</a></li>
                <li class="widget-list-item me-4"><a class="widget-list-link" href="#">Affiliates</a></li>
                <li class="widget-list-item me-4"><a class="widget-list-link" href="#">Support</a></li>
                <li class="widget-list-item me-4"><a class="widget-list-link" href="#">Privacy</a></li>
                <li class="widget-list-item me-4"><a class="widget-list-link" href="#">Terms of use</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 text-center text-md-end mb-4">
            <div class="mb-3"><a class="btn-social bs-light bs-twitter ms-2 mb-2" href="#"><i
                  class="ci-twitter"></i></a><a class="btn-social bs-light bs-facebook ms-2 mb-2" href="#"><i
                  class="ci-facebook"></i></a><a class="btn-social bs-light bs-instagram ms-2 mb-2" href="#"><i
                  class="ci-instagram"></i></a><a class="btn-social bs-light bs-pinterest ms-2 mb-2" href="#"><i
                  class="ci-pinterest"></i></a><a class="btn-social bs-light bs-youtube ms-2 mb-2" href="#"><i
                  class="ci-youtube"></i></a></div><img class="d-inline-block" src="img/cards-alt.png" width="187"
              alt="Payment methods">
          </div>
        </div>
        <div class="pb-4 fs-xs text-light opacity-50 text-center text-md-start">© All rights reserved. Made by <a
            class="text-light" href="https://createx.studio/" target="_blank" rel="noopener">Createx Studio</a></div>
      </div>
    </div>
  </footer>
  <!-- Toolbar for handheld devices (Default)-->
  <div class="handheld-toolbar">
    <div class="d-table table-layout-fixed w-100"><a class="d-table-cell handheld-toolbar-item"
        href="account-wishlist.html"><span class="handheld-toolbar-icon"><i class="ci-heart"></i></span><span
          class="handheld-toolbar-label">Wishlist</span></a><a class="d-table-cell handheld-toolbar-item"
        href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
        onclick="window.scrollTo(0, 0)"><span class="handheld-toolbar-icon"><i class="ci-menu"></i></span><span
          class="handheld-toolbar-label">Menu</span></a><a class="d-table-cell handheld-toolbar-item"
        href="shop-cart.html"><span class="handheld-toolbar-icon"><i class="ci-cart"></i><span
            class="badge bg-primary rounded-pill ms-1">4</span></span><span
          class="handheld-toolbar-label">$265.00</span></a></div>
  </div>
  <!-- Back To Top Button--><a class="btn-scroll-top" href="#top" data-scroll><span
      class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon ci-arrow-up">
    </i></a>
  <!-- Vendor scrits: js libraries and plugins-->
  <script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/simplebar/dist/simplebar.min.js"></script>
  <script src="vendor/tiny-slider/dist/min/tiny-slider.js"></script>
  <script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
  <script src="vendor/drift-zoom/dist/Drift.min.js"></script>
  <script src="vendor/lightgallery/lightgallery.min.js"></script>
  <script src="vendor/lightgallery/plugins/video/lg-video.min.js"></script>
  <!-- Main theme script-->
  <script src="js/theme.min.js"></script>
</body>

</html>