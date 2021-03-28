<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Datali House - Products</title>
<!-- Breadcrumb Start -->
<div class="breadcrumb-wrap">
	<div class="container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="/DataliHouse/">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Products</a></li>
			<li class="breadcrumb-item active">Product List</li>
		</ul>
	</div>
</div>
<!-- Breadcrumb End -->

<!-- Product List Start -->
<div class="product-view">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8">
				<c:if test="${products_paginate.size() > 0}">
					<div class="row">
						<div class="col-md-12">
							<div class="product-view-top">
								<div class="row">
									<div class="col-md-4">
										<div class="product-search">
											<input type="email" value="Search">
											<button>
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
									<div class="col-md-4">
										<div class="product-short">
											<div class="dropdown">
												<div class="dropdown-toggle" data-toggle="dropdown">Product
													short by</div>
												<div class="dropdown-menu dropdown-menu-right">
													<a href="#" class="dropdown-item">Newest</a> <a href="#"
														class="dropdown-item">Popular</a> <a href="#"
														class="dropdown-item">Most sale</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="product-price-range">
											<div class="dropdown">
												<div class="dropdown-toggle" data-toggle="dropdown">Product
													price range</div>
												<div class="dropdown-menu dropdown-menu-right">
													<a href="#" class="dropdown-item">$0 to $50</a> <a href="#"
														class="dropdown-item">$51 to $100</a> <a href="#"
														class="dropdown-item">$101 to $150</a> <a href="#"
														class="dropdown-item">$151 to $200</a> <a href="#"
														class="dropdown-item">$201 to $250</a> <a href="#"
														class="dropdown-item">$251 to $300</a> <a href="#"
														class="dropdown-item">$301 to $350</a> <a href="#"
														class="dropdown-item">$351 to $400</a> <a href="#"
														class="dropdown-item">$401 to $450</a> <a href="#"
														class="dropdown-item">$451 to $500</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<c:forEach var="product_item" items="${products_paginate}">
							<div class="col-md-4">
								<div class="product-item">
									<div class="product-title">
										<a href="<c:url value="product/${product_item.id}" />">${product_item.nameString}</a>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
									</div>
									<div class="product-image">
										<a href="product-detail.html"> <img
											src="<c:url value="${product_item.imgString}" />"
											alt="Product Image">
										</a>
										<div class="product-action">
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
									</div>
									<div class="product-price">
										<h3>
											<span>$</span>${product_item.price}
										</h3>
										<a class="btn"
											href="<c:url value="/add-cart/${product_item.id}" />"><i
											class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<!-- Pagination Start -->
					<div class="col-md-12">
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1">Previous</a></li>
								<c:forEach var="paginate_item" begin="1"
									end="${paginate_info.totalPage}" varStatus="loop">
									<c:if test="${loop.index == paginate_info.currentPage}">
										<li class="page-item active"><a class="page-link"
											href="<c:url value="/${category_slug}?page=${loop.index}" />">${loop.index}</a></li>
									</c:if>
									<c:if test="${loop.index != paginate_info.currentPage}">
										<li class="page-item"><a class="page-link"
											href="<c:url value="/${category_slug}?page=${loop.index}" />">${loop.index}</a></li>
									</c:if>
								</c:forEach>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>
						</nav>
					</div>
					<!-- Pagination Start -->
				</c:if>
			</div>

			<!-- Side Bar Start -->
			<div class="col-lg-4 sidebar">
				<div class="sidebar-widget category">
					<h2 class="title">Category</h2>
					<nav class="navbar bg-light">
						<ul class="navbar-nav">
							<c:forEach var="categoryItem" items="${categories}">
								<li class="nav-item"><a class="nav-link"
									href="<c:url value="/${categoryItem.slugString}" />"><i
										class="fa ${categoryItem.iconString}"></i>${categoryItem.nameString}</a></li>
							</c:forEach>
						</ul>
					</nav>
				</div>

				<div class="sidebar-widget widget-slider">
					<div class="sidebar-slider normal-slider">
						<c:forEach var="item" begin="1" end="3"
							items="${products_paginate }">
							<div class="product-item">
								<div class="product-title">
									<a href="<c:url value="product/${item.id}" />">${item.nameString}</a>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</div>
								<div class="product-image">
									<a href="product-detail.html"> <img
										src="<c:url value="${item.imgString}" />" alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-heart"></i></a>
									</div>
								</div>
								<div class="product-price">
									<h3>
										<span>$</span>${item.price}
									</h3>
									<a class="btn" href="<c:url value="/add-cart/${item.id}" />"><i
										class="fa fa-shopping-cart"></i>Add to Cart</a>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- Side Bar End -->
		</div>
	</div>
</div>
<!-- Product List End -->

<!-- Brand Start -->
<div class="brand">
	<div class="container-fluid">
		<div class="brand-slider">
			<div class="brand-item">
				<img src="<c:url value="/assets/client/img/brand-1.png" />" alt="">
			</div>
			<div class="brand-item">
				<img src="<c:url value="/assets/client/img/brand-2.png" />" alt="">
			</div>
			<div class="brand-item">
				<img src="<c:url value="/assets/client/img/brand-3.png" />" alt="">
			</div>
			<div class="brand-item">
				<img src="<c:url value="/assets/client/img/brand-4.png" />" alt="">
			</div>
			<div class="brand-item">
				<img src="<c:url value="/assets/client/img/brand-5.png" />" alt="">
			</div>
			<div class="brand-item">
				<img src="<c:url value="/assets/client/img/brand-6.png" />" alt="">
			</div>
		</div>
	</div>
</div>
<!-- Brand End -->
