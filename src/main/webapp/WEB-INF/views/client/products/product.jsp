<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Datali House - Product Detail</title>
<!-- Breadcrumb Start -->
<div class="breadcrumb-wrap">
	<div class="container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="/DataliHouse/">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Products</a></li>
			<li class="breadcrumb-item active">Product Detail</li>
		</ul>
	</div>
</div>
<!-- Breadcrumb End -->

<!-- Product Detail Start -->
<div class="product-detail">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8">
				<div class="product-detail-top">
					<div class="row">
						<div class="col-md-5">
							<div class="product-slider-single normal-slider">
								<img src="<c:url value="${product.imgString}" />"
									alt="Product Image">
							</div>
							<div class="product-slider-single-nav normal-slider">
								<div class="slider-nav-img">
									<img src="<c:url value="${product.imgString}" />"
										alt="Product Image">
								</div>
							</div>
						</div>
						<div class="col-md-7">
							<div class="product-content">
								<form method="get"
									action="<c:url value="/add-cart/${product.id}" />">
									<div class="title">
										<h2>${product.nameString}</h2>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<div class="price">
										<h4>Price:</h4>
										<p>$${product.price}</p>
									</div>
									<div class="p-size">
										<h4>Size:</h4>
										<div class="btn-group btn-group-sm">
											<button type="button" class="btn">S</button>
											<button type="button" class="btn">M</button>
											<button type="button" class="btn">L</button>
											<button type="button" class="btn">XL</button>
										</div>
									</div>
									<div class="p-color">
										<h4>Color:</h4>
										<div class="btn-group btn-group-sm">
											<button type="button" class="btn">White</button>
											<button type="button" class="btn">Black</button>
											<button type="button" class="btn">Blue</button>
										</div>
									</div>
									<div class="action">
										<button type="submit" class="btn">
											<i class="fa fa-shopping-cart"> </i> Add to Cart
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

				<div class="row product-detail-bottom">
					<div class="col-lg-12">
						<ul class="nav nav-pills nav-justified">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="pill" href="#reviews">Reviews (1)</a></li>
						</ul>

						<div class="tab-content">
							<div id="reviews" class="container tab-pane active">
								<div class="reviews-submitted">
									<div class="reviewer">
										Admin - <span>01 Jan 2020</span>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<p>Your item is greate!</p>
								</div>
								<div class="reviews-submit">
									<h4>Give your Review:</h4>
									<div class="ratting">
										<i class="far fa-star"></i> <i class="far fa-star"></i> <i
											class="far fa-star"></i> <i class="far fa-star"></i> <i
											class="far fa-star"></i>
									</div>
									<div class="row form">
										<div class="col-sm-6">
											<input type="text" placeholder="Name">
										</div>
										<div class="col-sm-6">
											<input type="email" placeholder="Email">
										</div>
										<div class="col-sm-12">
											<textarea placeholder="Review"></textarea>
										</div>
										<div class="col-sm-12">
											<button>Submit</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="product">
					<div class="section-header">
						<h1>Related Products</h1>
					</div>

					<div class="row align-items-center product-slider product-slider-3">
						<c:forEach var="relatedProductsItem" items="${related_products}">
							<div class="col-lg-3">
								<div class="product-item">
									<div class="product-title">
										<a href="<c:url value="/product/${relatedProductsItem.id}" />">${relatedProductsItem.nameString}</a>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
									</div>
									<div class="product-image">
										<a href="product-detail.html"> <img
											src="<c:url value="${relatedProductsItem.imgString}" />"
											alt="Product Image">
										</a>
										<div class="product-action">
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
									</div>
									<div class="product-price">
										<h3>
											<span>$</span>${relatedProductsItem.price}
										</h3>
										<a class="btn"
											href="<c:url value="/add-cart/${relatedProductsItem.id}" />"><i
											class="fa fa-shopping-cart"></i>Add to Cart</a>
									</div>
								</div>
							</div>
						</c:forEach>
						<div class="col-lg-3"></div>
					</div>
				</div>
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
						<c:forEach var="relatedProductsItem" items="${related_products}">
							<div class="product-item">
								<div class="product-title">
									<a href="<c:url value="/product/${relatedProductsItem.id}" />">${relatedProductsItem.nameString }</a>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</div>
								<div class="product-image">
									<a href="product-detail.html"> <img
										src="<c:url value="${relatedProductsItem.imgString}" />"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a href="#"><i class="fa fa-heart"></i></a>
									</div>
								</div>
								<div class="product-price">
									<h3>
										<span>$</span>${relatedProductsItem.price}
									</h3>
									<a class="btn"
										href="<c:url value="/add-cart/${relatedProductsItem.id}" />"><i
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
<!-- Product Detail End -->

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
