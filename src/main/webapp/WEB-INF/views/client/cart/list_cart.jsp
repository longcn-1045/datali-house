<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Datali House - Cart</title>

<div class="breadcrumb-wrap">
	<div class="container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item"><a href="#">Products</a></li>
			<li class="breadcrumb-item active">Cart</li>
		</ul>
	</div>
</div>
<!-- Breadcrumb End -->

<!-- Cart Start -->
<div class="cart-page">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8">
				<div class="cart-page-inner">
					<div class="table-responsive">
						<table class="table table-bordered">
							<thead class="thead-dark">
								<tr>
									<th>Product</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody class="align-middle">
								<c:forEach var="item" items="${Cart}">
									<tr>
										<td>
											<div class="img">
												<a href="#"><img
													src="<c:url value="${item.value.product.imgString}" />"
													alt="Image"></a>
												<p>${item.value.product.nameString}</p>
											</div>
										</td>
										<td>${item.value.product.price}</td>
										<td>
											<div class="qty">
												<button class="btn-minus">
													<i class="fa fa-minus"></i>
												</button>
												<input type="text" value="${item.value.quantity}"
													id="quantity-cart-${item.key }">
												<button class="btn-plus">
													<i class="fa fa-plus"></i>
												</button>
											</div>
										</td>
										<td>${item.value.totalPrice}</td>
										<td>
											<button data-id="${item.key }" class="btn edit-cart"
												type="button" style="padding: 0px 0px 2px 2px;">
												<i class="fas fa-edit"></i>
											</button>
											<button>
												<a class="text-white"
													href="<c:url value="/destroy-cart/${item.key }" />"> <i
													class="fa fa-trash"></i>
												</a>
											</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="cart-page-inner">
					<div class="row">
						<div class="col-md-12">
							<div class="cart-summary">
								<div class="cart-content">
									<h1>Cart Summary</h1>
									<p>
										Sub Total<span>$99</span>
									</p>
									<p>
										Shipping Cost<span>$1</span>
									</p>
									<h2>
										Grand Total<span>$100</span>
									</h2>
								</div>
								<div class="cart-btn">
									<a href="<c:url value="#" />">Checkout</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Cart End -->

<content tag="script"> <script>
	$(".edit-cart").on("click", function() {
		var cart_id = $(this).data("id");
		var quantity = $("#quantity-cart-" + cart_id).val();
		window.location = "update-cart/" + cart_id + "/" + quantity;
	});
</script></content>