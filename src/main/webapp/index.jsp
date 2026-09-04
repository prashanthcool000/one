<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>StyleHub - Shop Dresses</title>

    <link rel="preconnect"
          href="https://fonts.googleapis.com">

    <link rel="preconnect"
          href="https://fonts.gstatic.com"
          crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">


    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #faf8f9;
            color: #222;
        }


        /* ================= HEADER ================= */

        header {
            background: #ffffff;
            padding: 18px 7%;
            display: flex;
            align-items: center;
            justify-content: space-between;

            position: sticky;
            top: 0;
            z-index: 1000;

            box-shadow: 0 2px 15px rgba(0,0,0,.06);
        }

        .logo {
            font-size: 26px;
            font-weight: 800;
        }

        .logo span {
            color: #db2777;
        }

        nav {
            display: flex;
            gap: 28px;
        }

        nav a {
            color: #555;
            text-decoration: none;
            font-size: 14px;
            font-weight: 600;
        }

        nav a:hover {
            color: #db2777;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .header-actions i {
            cursor: pointer;
            font-size: 19px;
        }

        .cart-icon {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -11px;
            right: -11px;

            width: 19px;
            height: 19px;

            border-radius: 50%;

            background: #db2777;
            color: white;

            font-size: 10px;

            display: flex;
            align-items: center;
            justify-content: center;
        }


        /* ================= HERO ================= */

        .hero {
            background:
                linear-gradient(
                    120deg,
                    #831843,
                    #be185d,
                    #ec4899
                );

            color: white;

            padding: 75px 7%;

            display: flex;
            justify-content: space-between;
            align-items: center;

            gap: 40px;
        }

        .hero-content {
            max-width: 650px;
        }

        .hero h1 {
            font-size: 50px;
            line-height: 1.1;
            margin-bottom: 20px;
        }

        .hero p {
            color: #fce7f3;
            font-size: 17px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        .search-box {
            background: white;

            border-radius: 12px;

            display: flex;
            align-items: center;

            padding: 6px;

            max-width: 620px;
        }

        .search-box i {
            color: #777;
            margin-left: 15px;
        }

        .search-box input {
            border: none;
            outline: none;

            flex: 1;

            padding: 15px;

            font-size: 15px;
        }

        .search-box button {
            background: #222;
            color: white;

            border: none;

            padding: 14px 22px;

            border-radius: 9px;

            cursor: pointer;

            font-weight: 600;
        }

        .hero-dress {
            font-size: 180px;
            opacity: .2;
        }


        /* ================= COMMON ================= */

        .container {
            width: 86%;
            max-width: 1400px;
            margin: auto;
        }

        .section {
            padding: 55px 0;
        }

        .section-title {
            display: flex;
            justify-content: space-between;
            align-items: center;

            margin-bottom: 28px;
        }

        .section-title h2 {
            font-size: 28px;
        }

        #resultCount {
            color: #777;
            font-size: 13px;
        }


        /* ================= CATEGORIES ================= */

        .categories {
            display: flex;
            gap: 14px;

            overflow-x: auto;

            padding-bottom: 10px;
        }

        .category {
            background: white;

            border: 1px solid #e5e7eb;

            padding: 13px 23px;

            border-radius: 30px;

            cursor: pointer;

            white-space: nowrap;

            font-weight: 600;

            transition: .2s;
        }

        .category:hover,
        .category.active {
            background: #db2777;
            color: white;
            border-color: #db2777;
        }


        /* ================= PRODUCTS ================= */

        .product-grid {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 25px;
        }

        .product-card {
            background: white;

            border-radius: 18px;

            overflow: hidden;

            border: 1px solid #e5e7eb;

            transition: .3s;

            position: relative;
        }

        .product-card:hover {
            transform: translateY(-6px);

            box-shadow:
                0 15px 35px
                rgba(0,0,0,.09);
        }

        .wishlist {
            position: absolute;

            right: 15px;
            top: 15px;

            width: 38px;
            height: 38px;

            border-radius: 50%;

            border: none;

            background: white;

            box-shadow:
                0 4px 15px
                rgba(0,0,0,.12);

            cursor: pointer;

            z-index: 2;
        }

        .wishlist:hover {
            color: #e11d48;
        }

        .product-image {
            height: 330px;

            background: #fdf2f8;

            display: flex;

            align-items: center;
            justify-content: center;

            padding: 12px;
        }

        .product-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            border-radius: 12px;

            transition: .3s;
        }

        .product-card:hover
        .product-image img {
            transform: scale(1.04);
        }

        .product-info {
            padding: 20px;
        }

        .category-name {
            color: #db2777;

            font-size: 11px;

            font-weight: 700;

            text-transform: uppercase;
        }

        .product-name {
            font-size: 18px;

            font-weight: 700;

            margin: 7px 0;
        }

        .description {
            color: #777;

            font-size: 12px;

            line-height: 1.6;

            margin-bottom: 12px;
        }

        .rating {
            font-size: 13px;

            margin-bottom: 13px;
        }

        .rating i {
            color: #f59e0b;
        }

        .price-row {
            display: flex;

            justify-content:
                space-between;

            align-items: center;
        }

        .price {
            font-size: 20px;

            font-weight: 800;
        }

        .old-price {
            color: #aaa;

            text-decoration:
                line-through;

            font-size: 12px;

            margin-left: 5px;
        }

        .buy-btn {
            background: #db2777;

            color: white;

            border: none;

            padding: 11px 15px;

            border-radius: 9px;

            cursor: pointer;

            font-weight: 600;
        }

        .buy-btn:hover {
            background: #be185d;
        }


        /* ================= FEATURES ================= */

        .features {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 20px;
        }

        .feature {
            background: white;

            padding: 25px;

            border-radius: 15px;

            text-align: center;
        }

        .feature i {
            font-size: 28px;

            color: #db2777;

            margin-bottom: 15px;
        }

        .feature h3 {
            font-size: 15px;

            margin-bottom: 7px;
        }

        .feature p {
            color: #777;

            font-size: 12px;
        }


        /* ================= MODAL ================= */

        .modal {
            display: none;

            position: fixed;

            inset: 0;

            background:
                rgba(0,0,0,.65);

            z-index: 2000;

            align-items: center;

            justify-content: center;

            padding: 20px;
        }

        .modal.show {
            display: flex;
        }

        .modal-content {
            background: white;

            width: 100%;

            max-width: 580px;

            border-radius: 20px;

            padding: 30px;

            position: relative;

            max-height: 90vh;

            overflow-y: auto;
        }

        .close {
            position: absolute;

            right: 20px;
            top: 18px;

            font-size: 25px;

            cursor: pointer;

            color: #777;
        }

        .modal-title {
            font-size: 24px;

            margin-bottom: 5px;
        }

        .modal-subtitle {
            color: #777;

            font-size: 13px;

            margin-bottom: 25px;
        }


        /* ================= CART ================= */

        .cart-item {
            display: flex;

            align-items: center;

            gap: 14px;

            background: #fdf2f8;

            padding: 12px;

            border-radius: 12px;

            margin-bottom: 10px;
        }

        .cart-item img {
            width: 65px;
            height: 75px;

            object-fit: cover;

            border-radius: 9px;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-info h4 {
            font-size: 14px;

            margin-bottom: 4px;
        }

        .cart-item-price {
            color: #db2777;

            font-size: 13px;

            font-weight: 700;
        }

        .quantity {
            display: flex;

            align-items: center;

            gap: 8px;
        }

        .quantity button {
            width: 27px;
            height: 27px;

            border: none;

            border-radius: 6px;

            background: #db2777;

            color: white;

            cursor: pointer;
        }

        .quantity span {
            font-weight: 700;

            min-width: 15px;

            text-align: center;
        }

        .empty-cart {
            text-align: center;

            padding: 30px;

            color: #888;
        }

        .empty-cart i {
            font-size: 45px;

            margin-bottom: 12px;

            color: #ddd;
        }


        /* ================= FORM ================= */

        .form-group {
            margin-bottom: 17px;
        }

        .form-group label {
            display: block;

            font-size: 13px;

            font-weight: 600;

            margin-bottom: 7px;
        }

        .form-group input,
        .form-group select {
            width: 100%;

            padding: 13px;

            border: 1px solid #d1d5db;

            border-radius: 8px;

            outline: none;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: #db2777;
        }


        /* ================= SUMMARY ================= */

        .summary {
            background: #f8fafc;

            padding: 18px;

            border-radius: 12px;

            margin: 20px 0;
        }

        .summary-row {
            display: flex;

            justify-content:
                space-between;

            margin-bottom: 10px;

            font-size: 14px;
        }

        .summary-total {
            border-top:
                1px solid #ddd;

            padding-top: 12px;

            font-weight: 800;

            font-size: 18px;
        }

        .confirm-btn {
            width: 100%;

            padding: 15px;

            border: none;

            background: #db2777;

            color: white;

            border-radius: 10px;

            font-weight: 700;

            cursor: pointer;
        }

        .confirm-btn:hover {
            background: #be185d;
        }


        /* ================= FOOTER ================= */

        footer {
            background: #171717;

            color: white;

            padding: 50px 7%;

            margin-top: 30px;
        }

        .footer-grid {
            display: grid;

            grid-template-columns:
                2fr 1fr 1fr 1fr;

            gap: 40px;
        }

        footer h3 {
            margin-bottom: 15px;
        }

        footer p,
        footer a {
            color: #aaa;

            font-size: 13px;

            line-height: 2;

            text-decoration: none;

            display: block;
        }

        footer a:hover {
            color: #db2777;
        }

        .copyright {
            border-top:
                1px solid #333;

            margin-top: 35px;

            padding-top: 20px;

            color: #888;

            font-size: 12px;
        }


        /* ================= RESPONSIVE ================= */

        @media(max-width:1000px) {

            .product-grid {
                grid-template-columns:
                    repeat(3,1fr);
            }

            .features {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .hero-dress {
                display: none;
            }

        }


        @media(max-width:700px) {

            header {
                padding: 15px 5%;
            }

            nav {
                display: none;
            }

            .hero {
                padding: 45px 5%;
            }

            .hero h1 {
                font-size: 36px;
            }

            .container {
                width: 90%;
            }

            .product-grid {
                grid-template-columns:
                    repeat(2,1fr);

                gap: 15px;
            }

            .product-image {
                height: 250px;
            }

            .product-info {
                padding: 14px;
            }

            .product-name {
                font-size: 15px;
            }

            .price {
                font-size: 16px;
            }

            .buy-btn {
                padding: 8px 10px;

                font-size: 11px;
            }

            .features {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns:
                    1fr 1fr;
            }

        }


        @media(max-width:450px) {

            .product-grid {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 350px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

        }

    </style>

</head>


<body>


<!-- ================= HEADER ================= -->

<header>

    <div class="logo">
        Style<span>Hub</span>
    </div>


    <nav>

        <a href="#">
            Home
        </a>

        <a href="#dresses">
            Dresses
        </a>

        <a href="#offers">
            Offers
        </a>

        <a href="#about">
            About
        </a>

    </nav>


    <div class="header-actions">

        <i class="fa-regular fa-user"
           onclick="showLogin()">
        </i>


        <div class="cart-icon"
             onclick="openCart()">

            <i class="fa-solid fa-bag-shopping">
            </i>

            <span class="cart-count"
                  id="cartCount">
                0
            </span>

        </div>

    </div>

</header>



<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-content">

        <h1>
            Fashion That<br>
            Feels Like You
        </h1>

        <p>
            Discover beautiful dresses for every occasion.
            Shop the latest styles at amazing prices.
        </p>


        <div class="search-box">

            <i class="fa-solid fa-magnifying-glass">
            </i>

            <input
                type="text"
                id="searchInput"
                placeholder="Search dresses, gowns, sarees..."
                onkeyup="searchProducts()">


            <button onclick="searchProducts()">
                Search
            </button>

        </div>

    </div>


    <div class="hero-dress">

        <i class="fa-solid fa-person-dress">
        </i>

    </div>

</section>



<!-- ================= CATEGORIES ================= -->

<section class="section">

    <div class="container">

        <div class="section-title">

            <h2>
                Shop by Category
            </h2>

        </div>


        <div class="categories">

            <div class="category active"
                 onclick="filterCategory('All',this)">
                All
            </div>

            <div class="category"
                 onclick="filterCategory('Casual',this)">
                👗 Casual
            </div>

            <div class="category"
                 onclick="filterCategory('Party',this)">
                ✨ Party Wear
            </div>

            <div class="category"
                 onclick="filterCategory('Gown',this)">
                💃 Gowns
            </div>

            <div class="category"
                 onclick="filterCategory('Saree',this)">
                🥻 Sarees
            </div>

            <div class="category"
                 onclick="filterCategory('Kurti',this)">
                🌸 Kurtis
            </div>

            <div class="category"
                 onclick="filterCategory('Wedding',this)">
                💍 Wedding
            </div>

        </div>

    </div>

</section>



<!-- ================= PRODUCTS ================= -->

<section class="section"
         id="dresses">

    <div class="container">

        <div class="section-title">

            <h2>
                Trending Dresses
            </h2>

            <span id="resultCount">
            </span>

        </div>


        <div class="product-grid"
             id="productGrid">
        </div>

    </div>

</section>



<!-- ================= FEATURES ================= -->

<section class="section"
         id="offers">

    <div class="container">

        <div class="features">


            <div class="feature">

                <i class="fa-solid fa-truck-fast">
                </i>

                <h3>
                    Fast Delivery
                </h3>

                <p>
                    Quick and reliable delivery
                    to your doorstep.
                </p>

            </div>


            <div class="feature">

                <i class="fa-solid fa-shirt">
                </i>

                <h3>
                    Premium Quality
                </h3>

                <p>
                    Carefully selected fashion
                    for every occasion.
                </p>

            </div>


            <div class="feature">

                <i class="fa-solid fa-tags">
                </i>

                <h3>
                    Best Offers
                </h3>

                <p>
                    Enjoy exciting discounts
                    on trending styles.
                </p>

            </div>


            <div class="feature">

                <i class="fa-solid fa-rotate-left">
                </i>

                <h3>
                    Easy Returns
                </h3>

                <p>
                    Simple and hassle-free
                    return policy.
                </p>

            </div>

        </div>

    </div>

</section>



<!-- ================= CART MODAL ================= -->

<div class="modal"
     id="cartModal">


    <div class="modal-content">


        <span class="close"
              onclick="closeCart()">

            &times;

        </span>


        <h2 class="modal-title">
            Shopping Bag
        </h2>


        <p class="modal-subtitle">
            Review your items before placing your order.
        </p>


        <div id="cartItems">
        </div>


        <div id="checkoutSection">


            <div class="form-group">

                <label>
                    Full Name
                </label>

                <input
                    type="text"
                    id="customerName"
                    placeholder="Enter your name">

            </div>


            <div class="form-group">

                <label>
                    Mobile Number
                </label>

                <input
                    type="tel"
                    id="customerPhone"
                    placeholder="Enter mobile number">

            </div>


            <div class="form-group">

                <label>
                    Email Address
                </label>

                <input
                    type="email"
                    id="customerEmail"
                    placeholder="Enter email">

            </div>


            <div class="form-group">

                <label>
                    Delivery Address
                </label>

                <input
                    type="text"
                    id="customerAddress"
                    placeholder="House No, Street, City">

            </div>


            <div class="form-group">

                <label>
                    Size
                </label>

                <select id="dressSize">

                    <option value="S">
                        Small (S)
                    </option>

                    <option value="M">
                        Medium (M)
                    </option>

                    <option value="L">
                        Large (L)
                    </option>

                    <option value="XL">
                        Extra Large (XL)
                    </option>

                    <option value="XXL">
                        XXL
                    </option>

                </select>

            </div>


            <div class="form-group">

                <label>
                    Payment Method
                </label>

                <select id="paymentMethod">

                    <option value="UPI">
                        UPI
                    </option>

                    <option value="CARD">
                        Credit / Debit Card
                    </option>

                    <option value="COD">
                        Cash on Delivery
                    </option>

                    <option value="NETBANKING">
                        Net Banking
                    </option>

                </select>

            </div>


            <div class="summary">

                <div class="summary-row">

                    <span>
                        Subtotal
                    </span>

                    <span id="summarySubtotal">
                        ₹0
                    </span>

                </div>


                <div class="summary-row">

                    <span>
                        Delivery
                    </span>

                    <span id="deliveryFee">
                        ₹49
                    </span>

                </div>


                <div class="summary-row">

                    <span>
                        Discount
                    </span>

                    <span id="discount">
                        ₹0
                    </span>

                </div>


                <div class="summary-row summary-total">

                    <span>
                        Total
                    </span>

                    <span id="summaryTotal">
                        ₹0
                    </span>

                </div>

            </div>


            <button class="confirm-btn"
                    onclick="confirmOrder()">

                <i class="fa-solid fa-lock">
                </i>

                Place Order

            </button>

        </div>

    </div>

</div>



<!-- ================= FOOTER ================= -->

<footer id="about">


    <div class="footer-grid">


        <div>

            <h3>
                StyleHub
            </h3>

            <p>
                Your destination for stylish dresses,
                modern fashion and affordable prices.
            </p>

        </div>


        <div>

            <h3>
                Quick Links
            </h3>

            <a href="#">
                Home
            </a>

            <a href="#dresses">
                Dresses
            </a>

            <a href="#offers">
                Offers
            </a>

            <a href="#about">
                Contact
            </a>

        </div>


        <div>

            <h3>
                Customer Care
            </h3>

            <a href="#">
                Help Center
            </a>

            <a href="#">
                Orders
            </a>

            <a href="#">
                Shipping
            </a>

            <a href="#">
                Returns
            </a>

        </div>


        <div>

            <h3>
                Follow Us
            </h3>

            <a href="#">
                <i class="fa-brands fa-instagram">
                </i>
                Instagram
            </a>

            <a href="#">
                <i class="fa-brands fa-facebook">
                </i>
                Facebook
            </a>

            <a href="#">
                <i class="fa-brands fa-pinterest">
                </i>
                Pinterest
            </a>

        </div>

    </div>


    <div class="copyright">

        © 2026 StyleHub. All rights reserved.

    </div>

</footer>



<script>


    /* ================= DRESS DATA ================= */

    const products = [

        {
            id: 1,
            category: "Casual",
            name: "Floral Summer Dress",
            price: 899,
            oldPrice: 1299,
            rating: 4.8,
            description:
                "Beautiful floral dress perfect for casual outings.",
            image:
                "https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 2,
            category: "Party",
            name: "Elegant Party Dress",
            price: 1499,
            oldPrice: 1999,
            rating: 4.9,
            description:
                "Stylish party dress with a modern elegant look.",
            image:
                "https://images.unsplash.com/photo-1566174053879-31528523f8ae?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 3,
            category: "Gown",
            name: "Evening Maxi Gown",
            price: 2199,
            oldPrice: 2799,
            rating: 4.7,
            description:
                "Premium evening gown designed for special occasions.",
            image:
                "https://images.unsplash.com/photo-1566174053879-31528523f8ae?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 4,
            category: "Saree",
            name: "Designer Silk Saree",
            price: 2499,
            oldPrice: 3299,
            rating: 4.8,
            description:
                "Traditional designer saree with a premium finish.",
            image:
                "https://images.unsplash.com/photo-1610030469983-98e550d6193c?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 5,
            category: "Kurti",
            name: "Printed Cotton Kurti",
            price: 699,
            oldPrice: 999,
            rating: 4.6,
            description:
                "Comfortable cotton kurti for everyday wear.",
            image:
                "https://images.unsplash.com/photo-1583391733956-6c78276477e2?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 6,
            category: "Wedding",
            name: "Bridal Lehenga",
            price: 5999,
            oldPrice: 7499,
            rating: 4.9,
            description:
                "Luxury bridal lehenga for your special day.",
            image:
                "https://images.unsplash.com/photo-1594223274512-ad4803739b7c?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 7,
            category: "Casual",
            name: "Denim Shirt Dress",
            price: 999,
            oldPrice: 1399,
            rating: 4.7,
            description:
                "Trendy denim shirt dress with a relaxed fit.",
            image:
                "https://images.unsplash.com/photo-1539008835657-9e8e9680c956?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 8,
            category: "Party",
            name: "Satin Cocktail Dress",
            price: 1799,
            oldPrice: 2299,
            rating: 4.8,
            description:
                "Elegant satin dress for parties and celebrations.",
            image:
                "https://images.unsplash.com/photo-1595777457583-95e059d581b8?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 9,
            category: "Gown",
            name: "Princess Style Gown",
            price: 2899,
            oldPrice: 3499,
            rating: 4.9,
            description:
                "Beautiful flowing gown with a princess silhouette.",
            image:
                "https://images.unsplash.com/photo-1566479179817-c0f5d7d8f8f7?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 10,
            category: "Saree",
            name: "Embroidered Saree",
            price: 1999,
            oldPrice: 2599,
            rating: 4.7,
            description:
                "Elegant embroidered saree for festive occasions.",
            image:
                "https://images.unsplash.com/photo-1610030469668-8e9f641aaf1b?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 11,
            category: "Kurti",
            name: "Anarkali Kurti",
            price: 1199,
            oldPrice: 1599,
            rating: 4.8,
            description:
                "Beautiful Anarkali style kurti with a graceful fit.",
            image:
                "https://images.unsplash.com/photo-1597983073493-88cd35cf93e7?auto=format&fit=crop&w=600&q=80"
        },


        {
            id: 12,
            category: "Wedding",
            name: "Embroidered Bridal Dress",
            price: 4499,
            oldPrice: 5999,
            rating: 4.9,
            description:
                "Premium embroidered dress for weddings and receptions.",
            image:
                "https://images.unsplash.com/photo-1594552072238-5c1a0f1f2d4b?auto=format&fit=crop&w=600&q=80"
        }

    ];


    /* ================= VARIABLES ================= */

    let selectedCategory = "All";

    let cart = [];


    /* ================= RENDER PRODUCTS ================= */

    function renderProducts() {

        const grid =
            document.getElementById("productGrid");


        const search =
            document.getElementById("searchInput")
                .value
                .toLowerCase();


        const filteredProducts =
            products.filter(product => {


                const categoryMatch =
                    selectedCategory === "All" ||
                    product.category === selectedCategory;


                const searchMatch =
                    product.name
                        .toLowerCase()
                        .includes(search)

                    ||

                    product.category
                        .toLowerCase()
                        .includes(search)

                    ||

                    product.description
                        .toLowerCase()
                        .includes(search);


                return categoryMatch &&
                       searchMatch;

            });


        document.getElementById("resultCount")
            .innerText =
            filteredProducts.length + " dresses";


        grid.innerHTML = "";


        if (filteredProducts.length === 0) {

            grid.innerHTML = `

                <div style="
                    grid-column:1/-1;
                    text-align:center;
                    padding:50px;
                    color:#777;
                ">

                    <i class="fa-solid fa-face-sad-tear"
                       style="
                       font-size:45px;
                       margin-bottom:15px;
                       ">
                    </i>

                    <h3>
                        No dresses found
                    </h3>

                    <p>
                        Try another search.
                    </p>

                </div>

            `;

            return;
        }


        filteredProducts.forEach(product => {


            grid.innerHTML += `

                <div class="product-card">


                    <button class="wishlist"
                            onclick="
                            addWishlist('${product.name}')
                            ">

                        <i class="
                            fa-regular
                            fa-heart
                        ">
                        </i>

                    </button>


                    <div class="product-image">

                        <img
                            src="${product.image}"
                            alt="${product.name}">

                    </div>


                    <div class="product-info">


                        <div class="category-name">

                            ${product.category}

                        </div>


                        <div class="product-name">

                            ${product.name}

                        </div>


                        <div class="description">

                            ${product.description}

                        </div>


                        <div class="rating">

                            <i class="
                                fa-solid
                                fa-star
                            ">
                            </i>

                            ${product.rating}

                            <span>
                                Excellent
                            </span>

                        </div>


                        <div class="price-row">


                            <div>

                                <span class="price">

                                    ₹${product.price
                                    .toLocaleString("en-IN")}

                                </span>


                                <span class="old-price">

                                    ₹${product.oldPrice
                                    .toLocaleString("en-IN")}

                                </span>

                            </div>


                            <button class="buy-btn"
                                    onclick="
                                    addToCart(${product.id})
                                    ">

                                <i class="
                                    fa-solid
                                    fa-bag-shopping
                                ">
                                </i>

                                Add

                            </button>

                        </div>

                    </div>

                </div>

            `;

        });

    }


    /* ================= CATEGORY FILTER ================= */

    function filterCategory(
        category,
        element
    ) {

        selectedCategory = category;


        document.querySelectorAll(".category")
            .forEach(item =>
                item.classList.remove("active")
            );


        element.classList.add("active");


        renderProducts();

    }


    /* ================= SEARCH ================= */

    function searchProducts() {

        renderProducts();

    }


    /* ================= ADD TO CART ================= */

    function addToCart(id) {


        const product =
            products.find(
                product =>
                    product.id === id
            );


        const existing =
            cart.find(
                item =>
                    item.id === id
            );


        if (existing) {

            existing.quantity++;

        }

        else {

            cart.push({

                ...product,

                quantity: 1

            });

        }


        updateCartCount();


        alert(
            product.name +
            " added to your bag!"
        );

    }


    /* ================= CART COUNT ================= */

    function updateCartCount() {


        const total =
            cart.reduce(
                (sum,item) =>
                    sum + item.quantity,
                0
            );


        document.getElementById(
            "cartCount"
        ).innerText = total;

    }


    /* ================= OPEN CART ================= */

    function openCart() {


        renderCart();


        document.getElementById(
            "cartModal"
        ).classList.add("show");

    }


    /* ================= CLOSE CART ================= */

    function closeCart() {


        document.getElementById(
            "cartModal"
        ).classList.remove("show");

    }


    /* ================= RENDER CART ================= */

    function renderCart() {


        const cartItems =
            document.getElementById(
                "cartItems"
            );


        if (cart.length === 0) {


            cartItems.innerHTML = `

                <div class="empty-cart">

                    <i class="
                        fa-solid
                        fa-bag-shopping
                    ">
                    </i>

                    <h3>
                        Your bag is empty
                    </h3>

                    <p>
                        Add some beautiful dresses
                        to continue shopping.
                    </p>

                </div>

            `;


            document.getElementById(
                "checkoutSection"
            ).style.display = "none";


            return;

        }


        document.getElementById(
            "checkoutSection"
        ).style.display = "block";


        cartItems.innerHTML = "";


        cart.forEach(item => {


            cartItems.innerHTML += `

                <div class="cart-item">


                    <img
                        src="${item.image}"
                        alt="${item.name}">


                    <div class="
                        cart-item-info
                    ">

                        <h4>
                            ${item.name}
                        </h4>

                        <span class="
                            cart-item-price
                        ">

                            ₹${item.price
                            .toLocaleString("en-IN")}

                        </span>

                    </div>


                    <div class="quantity">


                        <button
                            onclick="
                            changeQuantity(
                                ${item.id},
                                -1
                            )">

                            -

                        </button>


                        <span>

                            ${item.quantity}

                        </span>


                        <button
                            onclick="
                            changeQuantity(
                                ${item.id},
                                1
                            )">

                            +

                        </button>

                    </div>

                </div>

            `;

        });


        updateSummary();

    }


    /* ================= QUANTITY ================= */

    function changeQuantity(
        id,
        change
    ) {


        const item =
            cart.find(
                item =>
                    item.id === id
            );


        if (!item)
            return;


        item.quantity += change;


        if (item.quantity <= 0) {

            cart =
                cart.filter(
                    item =>
                        item.id !== id
                );

        }


        updateCartCount();


        renderCart();

    }


    /* ================= SUMMARY ================= */

    function updateSummary() {


        const subtotal =
            cart.reduce(
                (sum,item) =>
                    sum +
                    item.price *
                    item.quantity,
                0
            );


        const delivery =
            subtotal >= 1499
                ? 0
                : 49;


        const discount =
            subtotal >= 2999
                ? 300
                : subtotal >= 1999
                    ? 150
                    : 0;


        const total =
            subtotal +
            delivery -
            discount;


        document.getElementById(
            "summarySubtotal"
        ).innerText =
            "₹" +
            subtotal.toLocaleString("en-IN");


        document.getElementById(
            "deliveryFee"
        ).innerText =
            delivery === 0
                ? "FREE"
                : "₹" + delivery;


        document.getElementById(
            "discount"
        ).innerText =
            "₹" +
            discount.toLocaleString("en-IN");


        document.getElementById(
            "summaryTotal"
        ).innerText =
            "₹" +
            total.toLocaleString("en-IN");

    }


    /* ================= CONFIRM ORDER ================= */

    function confirmOrder() {


        const name =
            document.getElementById(
                "customerName"
            ).value.trim();


        const phone =
            document.getElementById(
                "customerPhone"
            ).value.trim();


        const email =
            document.getElementById(
                "customerEmail"
            ).value.trim();


        const address =
            document.getElementById(
                "customerAddress"
            ).value.trim();


        const size =
            document.getElementById(
                "dressSize"
            ).value;


        const payment =
            document.getElementById(
                "paymentMethod"
            ).value;


        if (cart.length === 0) {

            alert(
                "Your shopping bag is empty."
            );

            return;

        }


        if (
            !name ||
            !phone ||
            !email ||
            !address
        ) {

            alert(
                "Please fill all delivery details."
            );

            return;

        }


        if (phone.length < 10) {

            alert(
                "Please enter a valid mobile number."
            );

            return;

        }


        const subtotal =
            cart.reduce(
                (sum,item) =>
                    sum +
                    item.price *
                    item.quantity,
                0
            );


        const delivery =
            subtotal >= 1499
                ? 0
                : 49;


        const discount =
            subtotal >= 2999
                ? 300
                : subtotal >= 1999
                    ? 150
                    : 0;


        const total =
            subtotal +
            delivery -
            discount;


        alert(

            "Order placed successfully! 🎉\n\n" +

            "Customer: " +
            name +
            "\n" +

            "Size: " +
            size +
            "\n" +

            "Payment: " +
            payment +
            "\n" +

            "Total: ₹" +
            total.toLocaleString("en-IN") +

            "\n\n" +

            "Thank you for shopping with StyleHub!"

        );


        cart = [];


        updateCartCount();


        closeCart();


        document.getElementById(
            "customerName"
        ).value = "";


        document.getElementById(
            "customerPhone"
        ).value = "";


        document.getElementById(
            "customerEmail"
        ).value = "";


        document.getElementById(
            "customerAddress"
        ).value = "";

    }


    /* ================= WISHLIST ================= */

    function addWishlist(name) {

        alert(
            name +
            " added to wishlist ❤️"
        );

    }


    /* ================= LOGIN ================= */

    function showLogin() {

        alert(
            "Login page can be connected here."
        );

    }


    /* ================= CLOSE MODAL ================= */

    document.getElementById(
        "cartModal"
    ).addEventListener(
        "click",
        function(event) {

            if (
                event.target === this
            ) {

                closeCart();

            }

        }
    );


    /* ================= INITIAL LOAD ================= */

    renderProducts();

</script>


</body>

</html>
