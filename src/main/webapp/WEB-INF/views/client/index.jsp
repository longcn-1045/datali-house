<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Datali House - HomePage</title>
<!-- Main Slider Start -->
<div class="header">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<nav class="navbar bg-light">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="/DataliHouse/"><i
								class="fa fa-home"></i>Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/best-selling" />"><i
								class="fa fa-shopping-bag"></i>Best Selling</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/new-arrivals" />"><i
								class="fa fa-plus-square"></i>New Arrivals</a></li>
						<c:forEach var="categoryItem" items="${categories}">
							<li class="nav-item"><a class="nav-link"
								href="<c:url value="/${categoryItem.slugString}" />"><i
									class="fa ${categoryItem.iconString}"></i>${categoryItem.nameString}</a></li>
						</c:forEach>
					</ul>
				</nav>
			</div>
			<div class="col-md-6">
				<div class="header-slider normal-slider">
					<div class="header-slider-item">
						<img src="<c:url value="/assets/client/img/slider-1.jpg" />"
							alt="Slider Image" />
						<div class="header-slider-caption">
							<p>Best Selling</p>
							<a class="btn" href="/DataliHouse/best-selling"><i
								class="fa fa-shopping-cart"></i>Shop Now</a>
						</div>
					</div>
					<div class="header-slider-item">
						<img src="<c:url value="/assets/client/img/slider-2.jpg" />"
							alt="Slider Image" />
						<div class="header-slider-caption">
							<p>New Arrivals</p>
							<a class="btn" href="/DataliHouse/new-arrivals"><i
								class="fa fa-shopping-cart"></i>Shop Now</a>
						</div>
					</div>
					<div class="header-slider-item">
						<img src="<c:url value="/assets/client/img/slider-3.jpg" />"
							alt="Slider Image" />
						<div class="header-slider-caption">
							<p>Electronics & Accessories</p>
							<a class="btn" href="/DataliHouse/electronics-accessories"><i
								class="fa fa-shopping-cart"></i>Shop Now</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="header-img">
					<div class="img-item">
						<img src="<c:url value="/assets/client/img/category-1.jpg" />" />
						<a class="img-text" href="/DataliHouse/fashion-beauty">
							<p>Fashion & Beauty</p>
						</a>
					</div>
					<div class="img-item">
						<img src="<c:url value="/assets/client/img/category-2.jpg" />" />
						<a class="img-text" href="/DataliHouse/kid-babies-clothes">
							<p>Kids & Babies Clothes</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Main Slider End -->

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

<!-- Feature Start-->
<div class="feature">
	<div class="container-fluid">
		<div class="row align-items-center">
			<div class="col-lg-3 col-md-6 feature-col">
				<div class="feature-content">
					<i class="fab fa-cc-mastercard"></i>
					<h2>Secure Payment</h2>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 feature-col">
				<div class="feature-content">
					<i class="fa fa-truck"></i>
					<h2>Worldwide Delivery</h2>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 feature-col">
				<div class="feature-content">
					<i class="fa fa-sync-alt"></i>
					<h2>90 Days Return</h2>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 feature-col">
				<div class="feature-content">
					<i class="fa fa-comments"></i>
					<h2>24/7 Support</h2>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Feature End-->

<!-- Category Start-->
<div class="category">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<div class="category-item ch-400">
					<img src="<c:url value="/assets/client/img/category-3.jpg" />" />
					<a class="category-name" href="/DataliHouse/men-women-clothes">
						<p>Men & Women Clothes</p>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="category-item ch-250">
					<img src="<c:url value="/assets/client/img/category-4.jpg" />" />
					<a class="category-name" href="/DataliHouse/fashion-beauty">
						<p>Fashion & Beauty</p>
					</a>
				</div>
				<div class="category-item ch-150">
					<img src="<c:url value="/assets/client/img/category-5.jpg" />" />
					<a class="category-name"
						href="/DataliHouse/electronics-accessories">
						<p>Electronics & Accessories</p>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="category-item ch-150">
					<img src="<c:url value="/assets/client/img/category-6.jpg" />" />
					<a class="category-name" href="/DataliHouse/fashion-beauty">
						<p>Fashion & Beauty</p>
					</a>
				</div>
				<div class="category-item ch-250">
					<img src="<c:url value="/assets/client/img/category-7.jpg" />" />
					<a class="category-name"
						href="/DataliHouse/electronics-accessories">
						<p>Electronics & Accessories</p>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="category-item ch-400">
					<img src="<c:url value="/assets/client/img/category-8.jpg" />" />
					<a class="category-name" href="/DataliHouse/men-women-clothes">
						<p>Men & Women Clothes</p>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Category End-->

<!-- Call to Action Start -->
<div class="call-to-action">
	<div class="container-fluid">
		<div class="row align-items-center">
			<div class="col-md-6">
				<h1>call us for any queries</h1>
			</div>
			<div class="col-md-6">
				<a href="tel:0123456789">+012-345-6789</a>
			</div>
		</div>
	</div>
</div>
<!-- Call to Action End -->

<!-- Featured Product Start -->
<div class="featured-product product">
	<div class="container-fluid">
		<div class="section-header">
			<h1>Best Selling Products</h1>
		</div>
		<div class="row align-items-center product-slider product-slider-4">
			<c:forEach var="bestSellingItem" items="${products}">
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="<c:url value="product/${bestSellingItem.id}" />">${bestSellingItem.nameString}</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="<c:url value="${bestSellingItem.imgString}" />"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>${bestSellingItem.price}
							</h3>
							<a class="btn"
								href="<c:url value="/add-cart/${bestSellingItem.id}" />"><i
								class="fa fa-shopping-cart"></i>Add to Cart</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<!-- Featured Product End -->

<!-- Newsletter Start -->
<div class="newsletter">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<h1>Subscribe Our Newsletter</h1>
			</div>
			<div class="col-md-6">
				<div class="form">
					<input type="email" value="Your email here">
					<button>Submit</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Newsletter End -->

<!-- Recent Product Start -->
<div class="recent-product product">
	<div class="container-fluid">
		<div class="section-header">
			<h1>New Arrivals Products</h1>
		</div>
		<div class="row align-items-center product-slider product-slider-4">
			<c:forEach var="newArrivalProduct" items="${products}">
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="<c:url value="product/${newArrivalProduct.id}" />">${newArrivalProduct.nameString}</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="<c:url value="${newArrivalProduct.imgString}" />"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>${newArrivalProduct.price}
							</h3>
							<a class="btn"
								href="<c:url value="/add-cart/${newArrivalProduct.id}" />"><i
								class="fa fa-shopping-cart"></i>Add to Cart</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<!-- Recent Product End -->

<!-- Review Start -->
<div class="review">
	<div class="container-fluid">
		<div class="row align-items-center review-slider normal-slider">
			<div class="col-md-6">
				<div class="review-slider-item">
					<div class="review-img">
						<img src="<c:url value="/assets/client/img/review-1.jpg" />"
							alt="Image">
					</div>
					<div class="review-text">
						<h2>Customer Name</h2>
						<h3>Profession</h3>
						<div class="ratting">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Curabitur vitae nunc eget leo finibus luctus et vitae lorem</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="review-slider-item">
					<div class="review-img">
						<img src="<c:url value="/assets/client/img/review-2.jpg" />"
							alt="Image">
					</div>
					<div class="review-text">
						<h2>Customer Name</h2>
						<h3>Profession</h3>
						<div class="ratting">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Curabitur vitae nunc eget leo finibus luctus et vitae lorem</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="review-slider-item">
					<div class="review-img">
						<img src="<c:url value="/assets/client/img/review-3.jpg" />"
							alt="Image">
					</div>
					<div class="review-text">
						<h2>Customer Name</h2>
						<h3>Profession</h3>
						<div class="ratting">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Curabitur vitae nunc eget leo finibus luctus et vitae lorem</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Review End -->
