<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.niu.bean.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

	
<title>My JSP 'headerUp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->
	<!-- header -->
	<header> <!-- header-top-area-start -->
	<div class="header-top-area black-bg ptb-7 hidden-xs">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-4">
					<div class="header-top-left">
						<span><a href="#">服务热线:</a>(+1)866-550-3669</span>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-8">
					<div class="header-top-right">
						<ul>
							<li class="slide-toggle"><a href="${loginUrl }"><i
									class="fa fa-user"></i>${userName}</a>
								<ul class="show-toggle">
									<li><a href="#">register</a></li>
									<li><a href="#">login</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li><a href="#"><i class="fa fa-check"></i> Checkout</a></li>
						</ul>
						<ul>
							<li class="slide-toggle-2 text-uppercase"><a href="#"><i
									class="fa fa-usd"></i>USD</a>
								<ul class="show-toggle-2">
									<li><a href="#"><i class="fa fa-eur"></i> EUR</a></li>
									<li><a href="#"><i class="fa fa-gbp"></i> GBP</a></li>
									<li><a href="#"><i class="fa fa-usd"></i> USD</a></li>
								</ul>
							</li>
						</ul>
						<ul>
							<li class="slide-toggle-3 text-uppercase"><a href="#">fr-ca</a>
								<ul class="show-toggle-3">
									<li><a href="#">en-gb</a></li>
									<li><a href="#">fr-ca</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header-top-area-end --> <!-- header-bottom-area-start -->
	<div class="header-bottom-area bg-color-1 ptb-25">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="logo">
						<a href="index.html"><img src="img/logo.png" alt="" /> </a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="header-bottom-middle">
						<div class="top-search">
							<span class="tex_top_skype"><i class="fa fa-skype"></i>Skype:
								<span class="">Support.skype</span> </span> <span class="tex_top_email"><i
								class="fa fa-envelope"></i>Email: <span class="">demo@towerthemes.com</span>
							</span>
						</div>
						<div class="search-box">
							<form action="#">
								<select name="#" id="select">
									<option value="">All categories</option>
									<option value="40">Accessories</option>
									<option value="41">Clothing</option>
									<option value="42">-Hoodies</option>
									<option value="47">-T-shirts</option>
									<option value="43">Men's</option>
									<option value="50">-Hats</option>
									<option value="44">Music</option>
									<option value="46">-Singles</option>
									<option value="49">-Albums</option>
									<option value="45">Posters</option>
									<option value="48">Women's</option>
									<option value="51">-Hats</option>
									<option value="52">----Shoes</option>
									<option value="53">----Scarves</option>
									<option value="54">Jewellery</option>
									<option value="55">---Rings</option>
									<option value="56">----Gold Ring</option>
									<option value="57">----platinum ring</option>
									<option value="58">----Silver Ring</option>
									<option value="59">----Diamond rings</option>
									<option value="60">---Necklaces</option>
									<option value="61">----Diamond necklaces</option>
									<option value="62">----Pearl necklaces</option>
									<option value="63">----Silver necklaces</option>
									<option value="64">----Statement necklaces</option>
									<option value="65">Equipments</option>
									<option value="73">---Accessories</option>
									<option value="78">----headphone</option>
									<option value="79">----health</option>
									<option value="80">----camera</option>
									<option value="74">---beauty</option>
									<option value="75">----run</option>
									<option value="76">----evening</option>
									<option value="77">----coats</option>
									<option value="66">Watches</option>
									<option value="67">Books</option>
									<option value="68">Sports</option>
									<option value="69">Gifts</option>
								</select> <input type="text" placeholder="Search...">
								<button>
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</div>
					<div class="header-bottom-right">
						<div class="left-cart">
							<div class="header-compire">
								<a href="#"><i class="fa fa-heart"></i> Wish List 0 </a> <a
									href="#"><i class="fa fa-refresh"></i> Compare 0 </a>
							</div>
						</div>
						<div class="shop-cart-area">
							<div class="top-cart-wrapper">
								<div class="block-cart">
									<div class="top-cart-title">
										<a href="#"> <span class="title-cart">my cart</span> <span
											class="count-item">2 items</span> <span class="price">$444.00</span>
										</a>
									</div>
									<div class="top-cart-content">
										<ol class="mini-products-list">
											<!-- single item -->
											<li><a class="product-image" href="product-details.html">
													<img alt="" src="img/cart/1.jpg"> </a>
												<div class="product-details">
													<p class="cartproduct-name">
														<a href="product-details.html">Pellentesque habitant </a>
													</p>
													<strong class="qty">qty:1</strong> <span class="sig-price">$222.00</span>
												</div>
												<div class="pro-action">
													<a class="btn-remove" href="#">remove</a>
												</div>
											</li>
											<!-- single item -->
											<!-- single item -->
											<li><a class="product-image" href="product-details.html">
													<img alt="" src="img/cart/2.jpg"> </a>
												<div class="product-details">
													<p class="cartproduct-name">
														<a href="product-details.html">New catolog</a>
													</p>
													<strong class="qty">qty:1</strong> <span class="sig-price">$222.00</span>
												</div>
												<div class="pro-action">
													<a class="btn-remove" href="#">remove</a>
												</div>
											</li>
											<!-- single item -->

										</ol>
										<div class="top-subtotal">
											Subtotal: <span class="sig-price">$444.00</span>
										</div>
										<div class="cart-actions">
											<button>
												<span>Checkout</span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header-bottom-area-end --> </header>
	<!-- header -->
	<!-- mainmenu-area-start -->
	<div class="mainmenu-area bg-color-2 hidden-xs hidden-sm">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="mainmenu-left visible-lg checkout-page  visible-md">
						<div class="product-menu-title">
							<h2>
								All categories <i class="fa fa-arrow-circle-down"></i>
							</h2>
						</div>
						<div class="product_vmegamenu">
							<ul>
								<li><a href="#"><img src="img/menu-l/1.png" alt="" />
										Automotive & Motorcycle</a></li>
								<li><a href="#"><img src="img/menu-l/2.png" alt="" />Bags,
										Shoes & Accessories</a></li>
								<li><a href="#"><img src="img/menu-l/3.png" alt="" />
										Cameras & Photo</a>
								</li>
								<li><a href="#"><img src="img/menu-l/4.png" alt="" />
										Computers & Networking</a>
								</li>
								<li><a href="#"><img src="img/menu-l/5.png" alt="" />Flashlights
										& Lamps</a>
								</li>
								<li><a href="#" class="hover-icon"><img
										src="img/menu-l/6.png" alt="" />Laptops & Accessories</a>
									<div class="vmegamenu">
										<span> <a href="#" class="vgema-title">Linux</a> <a
											href="#">Edubuntu</a> <a href="#">Kubuntu</a> <a href="#">Lubuntu</a>
										</span> <span> <a href="#" class="vgema-title">Mac </a> <a
											href="#">Mac OS X 10.0</a> <a href="#">Mac OS X 10.7</a> <a
											href="#">OS X 10.11</a> </span> <span> <a href="#"
											class="vgema-title">Ubuntu</a> <a href="#">Ubuntu Server</a>
											<a href="#">Ubuntu Studio</a> <a href="#">Ubuntu TV</a> </span> <span>
											<a href="#" class="vgema-title">Windows</a> <a href="#">Windows
												10</a> <a href="#">Windows 7</a> <a href="#">Windows 8.1</a> </span>
									</div>
								</li>
								<li><a href="#" class="hover-icon"><img
										src="img/menu-l/12.png" alt="" />Sports & Outdoors</a>
									<div class="vmegamenu">
										<span> <a href="#" class="vgema-title">Electronic</a> <a
											href="#">Bedroom</a> <a href="#">Kitchen</a> <a href="#">Living
												room</a> <a href="#">Out door</a> </span> <span> <a href="#"
											class="vgema-title">Lights</a> <a href="#">All lights</a> <a
											href="#">Bed room</a> <a href="#">Living room</a> <a href="#">Out
												door</a> </span> <span> <a href="#" class="vgema-title">Television</a>
											<a href="#">Samsung</a> <a href="#">Samsung Oled</a> <a
											href="#">Sony</a> <a href="#">Sony Bravia</a> </span> <span>
											<a href="#" class="vgema-title">Washing</a> <a href="#">Commercial</a>
											<a href="#">Front-Load </a> <a href="#">Pedestal </a> <a
											href="#">Top-Load </a> </span>
									</div>
								</li>
								<li><a href="#" class="hover-icon"><img
										src="img/menu-l/7.png" alt="" />Smartphone & Tablets</a>
									<div class="vmegamenu vmegamenu2">
										<span> <a href="#" class="vgema-title">HandBags</a> <a
											href="#">Kids</a> <a href="#">Mens</a> <a href="#">Student</a>
											<a href="#">Women</a> </span> <span> <a href="#"
											class="vgema-title">Clothing</a> <a href="#">Children</a> <a
											href="#">Kids</a> <a href="#">Mens</a> <a href="#">Womens</a>
										</span>
									</div>
								</li>
								<li><a href="#"><img src="img/menu-l/8.png" alt="" />Health
										& Beauty</a>
								</li>
								<li><a href="#"><img src="img/menu-l/9.png" alt="" />Toys
										& Hobbies</a>
								</li>
								<li><a href="#"><img src="img/menu-l/10.png" alt="" />Holiday
										Supplies & Gifts</a>
								</li>
								<li><a href="#"><img src="img/menu-l/11.png" alt="" />Jewelry
										& Watches</a>
								</li>
								<li><a href="#"><img src="img/menu-l/5.png" alt="" />Smartphone
										& Watches</a>
								</li>
								<li><a href="#"><img src="img/menu-l/4.png" alt="" />Health
										Watches</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="mainmenu">
						<nav>
						<ul>
							<li><a href="index.jsp">首页</a></li>
							<li><a href="about.jsp">关于我们</a></li>
							<li><a href="shop.jsp">商城</a></li>
							<li><a href="cart.jsp">购物车</a></li>
							<li><a href="${loginUrl }">${userName}</a></li>
							<li><a href="contact-us.jsp">联系我们</a></li>
						</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- mobile-menu-start -->
	<div class="mobile-menu-area hidden-md hidden-lg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="mobile-menu">
						<nav id="mobile-menu">
						<ul>
							<li><a href="index.jsp">首页</a>
							</li>
							<li><a href="about.jsp">关于我们</a>
							</li>
							<li><a href="shop.jsp">商城</a>
							</li>
							<li><a href="cart.jsp">购物车</a>
							</li>
							<li><a href="${loginUrl }">${userName}</a>
							</li>
							<li><a href="contact-us.jsp">联系我们</a>
							</li>
						</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- mobile-menu-end -->
	<!-- mainmenu-area-end -->
</body>


</html>
