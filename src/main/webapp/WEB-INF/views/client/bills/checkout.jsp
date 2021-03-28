<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Datali House - Checkout</title>

<div class="breadcrumb-wrap">
	<div class="container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Products</a></li>
			<li class="breadcrumb-item active">Checkout</li>
		</ul>
	</div>
</div>
<!-- Breadcrumb End -->

<!-- Checkout Start -->
<div class="checkout">
	<form action="checkout" method="post">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-8">
					<div class="checkout-inner">
						<div class="billing-address">
							<h2>Billing Address</h2>
							<div class="row">
								<div class="col-md-6">
									<label>First Name</label> <input class="form-control"
										type="text" placeholder="First Name" value="${LoginInfo.name}">
								</div>
								<div class="col-md-6">
									<label>Mobile No</label> <input class="form-control"
										type="text" placeholder="Mobile No" value="${LoginInfo.phone}">
								</div>
								<div class="col-md-12">
									<label>E-mail</label> <input class="form-control" type="text"
										placeholder="E-mail" value="${LoginInfo.email}">
								</div>
								<div class="col-md-12">
									<label>Address</label> <input class="form-control" type="text"
										placeholder="Address" value="${LoginInfo.address}">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="checkout-inner">
						<div class="checkout-summary">
							<h1>Cart Total</h1>
							<p class="sub-total">
								Sub Total<span>$${TotalPriceCart }</span>
							</p>
							<h2>
								Grand Total<span>$${TotalPriceCart }</span>
							</h2>
						</div>

						<div class="checkout-payment">
							<div class="checkout-btn">
								<button type="submit" class="btn">Create order</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<!-- Checkout End -->