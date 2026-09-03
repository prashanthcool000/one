<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MobileHub - Buy Smartphones</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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
            background: #f5f7fb;
            color: #171717;
        }

        /* ================= HEADER ================= */

        header {
            background: #111827;
            color: white;
            padding: 18px 7%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 25px;
            font-weight: 800;
            color: #fff;
        }

        .logo span {
            color: #6366f1;
        }

        nav {
            display: flex;
            gap: 28px;
        }

        nav a {
            color: #d1d5db;
            text-decoration: none;
            font-size: 14px;
            font-weight: 500;
        }

        nav a:hover {
            color: white;
        }

        .header-actions {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .header-actions i {
            cursor: pointer;
            font-size: 18px;
        }

        .cart-icon {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -10px;
            right: -10px;
            background: #ef4444;
            color: white;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            font-size: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* ================= HERO ================= */

        .hero {
            background: linear-gradient(120deg, #312e81, #4f46e5, #7c3aed);
            color: white;
            padding: 70px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 40px;
        }

        .hero-content {
            max-width: 600px;
        }

        .hero h1 {
            font-size: 48px;
            line-height: 1.1;
            margin-bottom: 20px;
        }

        .hero p {
            color: #e0e7ff;
            font-size: 17px;
            margin-bottom: 30px;
            line-height: 1.7;
        }

        .search-box {
            background: white;
            border-radius: 12px;
            display: flex;
            align-items: center;
            padding: 6px;
            max-width: 600px;
        }

        .search-box i {
            color: #6b7280;
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
            background: #111827;
            color: white;
            border: none;
            padding: 14px 22px;
            border-radius: 9px;
            cursor: pointer;
            font-weight: 600;
        }

        .hero-phone {
            font-size: 180px;
            opacity: 0.2;
        }

        /* ================= CATEGORY ================= */

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

        .categories {
            display: flex;
            gap: 15px;
            overflow-x: auto;
            padding-bottom: 10px;
        }

        .category {
            background: white;
            border: 1px solid #e5e7eb;
            padding: 13px 24px;
            border-radius: 30px;
            cursor: pointer;
            white-space: nowrap;
            font-weight: 600;
            transition: .2s;
        }

        .category:hover,
        .category.active {
            background: #4f46e5;
            color: white;
            border-color: #4f46e5;
        }

        /* ================= PRODUCTS ================= */

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
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
            box-shadow: 0 15px 35px rgba(0,0,0,.08);
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
            box-shadow: 0 4px 15px rgba(0,0,0,.1);
            cursor: pointer;
            z-index: 2;
        }

        .wishlist:hover {
            color: #ef4444;
        }

        .product-image {
            height: 270px;
            background: #f8fafc;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 25px;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: contain;
            transition: .3s;
        }

        .product-card:hover .product-image img {
            transform: scale(1.06);
        }

        .product-info {
            padding: 20px;
        }

        .brand {
            color: #6366f1;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
        }

        .product-name {
            font-size: 18px;
            font-weight: 700;
            margin: 7px 0;
        }

        .specs {
            color: #6b7280;
            font-size: 12px;
            margin-bottom: 15px;
            line-height: 1.6;
        }

        .rating {
            font-size: 13px;
            margin-bottom: 12px;
        }

        .rating i {
            color: #f59e0b;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .price {
            font-size: 20px;
            font-weight: 800;
        }

        .old-price {
            color: #9ca3af;
            text-decoration: line-through;
            font-size: 12px;
            margin-left: 5px;
        }

        .buy-btn {
            background: #4f46e5;
            color: white;
            border: none;
            padding: 11px 15px;
            border-radius: 9px;
            cursor: pointer;
            font-weight: 600;
        }

        .buy-btn:hover {
            background: #3730a3;
        }

        /* ================= FEATURES ================= */

        .features {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
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
            color: #4f46e5;
            margin-bottom: 15px;
        }

        .feature h3 {
            font-size: 15px;
            margin-bottom: 7px;
        }

        .feature p {
            color: #6b7280;
            font-size: 12px;
        }

        /* ================= MODAL ================= */

        .modal {
            display: none;
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.65);
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
            max-width: 550px;
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
            color: #6b7280;
        }

        .modal-title {
            font-size: 24px;
            margin-bottom: 5px;
        }

        .modal-subtitle {
            color: #6b7280;
            font-size: 13px;
            margin-bottom: 25px;
        }

        .order-product {
            display: flex;
            gap: 20px;
            align-items: center;
            background: #f8fafc;
            padding: 15px;
            border-radius: 12px;
            margin-bottom: 25px;
        }

        .order-product img {
            width: 80px;
            height: 80px;
            object-fit: contain;
        }

        .order-product h3 {
            margin-bottom: 5px;
        }

        .order-product p {
            color: #6366f1;
            font-weight: 700;
        }

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
            border-color: #6366f1;
        }

        .summary {
            background: #f8fafc;
            padding: 18px;
            border-radius: 12px;
            margin: 20px 0;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
            font-size: 14px;
        }

        .summary-total {
            border-top: 1px solid #ddd;
            padding-top: 12px;
            font-weight: 800;
            font-size: 18px;
        }

        .confirm-btn {
            width: 100%;
            padding: 15px;
            border: none;
            background: #4f46e5;
            color: white;
            border-radius: 10px;
            font-weight: 700;
            cursor: pointer;
        }

        .confirm-btn:hover {
            background: #3730a3;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #111827;
            color: white;
            padding: 50px 7%;
            margin-top: 30px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        footer h3 {
            margin-bottom: 15px;
        }

        footer p,
        footer a {
            color: #9ca3af;
            font-size: 13px;
            line-height: 2;
            text-decoration: none;
            display: block;
        }

        .copyright {
            border-top: 1px solid #374151;
            margin-top: 35px;
            padding-top: 20px;
            color: #9ca3af;
            font-size: 12px;
        }

        /* ================= RESPONSIVE ================= */

        @media(max-width: 1000px) {

            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .features {
                grid-template-columns: repeat(2, 1fr);
            }

            .hero-phone {
                display: none;
            }
        }

        @media(max-width: 700px) {

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
                font-size: 35px;
            }

            .container {
                width: 90%;
            }

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 15px;
            }

            .product-image {
                height: 200px;
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
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width: 450px) {

            .product-grid {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 280px;
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
        Mobile<span>Hub</span>
    </div>

    <nav>
        <a href="#">Home</a>
        <a href="#mobiles">Mobiles</a>
        <a href="#offers">Offers</a>
        <a href="#about">About</a>
    </nav>

    <div class="header-actions">

        <i class="fa-regular fa-user" onclick="showLogin()"></i>

        <div class="cart-icon">
            <i class="fa-solid fa-cart-shopping"></i>
            <span class="cart-count" id="cartCount">0</span>
        </div>

    </div>

</header>


<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-content">

        <h1>
            Find Your<br>
            Perfect Smartphone
        </h1>

        <p>
            Discover the latest smartphones from top brands
            with amazing prices and fast delivery.
        </p>

        <div class="search-box">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                    type="text"
                    id="searchInput"
                    placeholder="Search iPhone, Samsung, OnePlus..."
                    onkeyup="searchProducts()">

            <button onclick="searchProducts()">
                Search
            </button>

        </div>

    </div>

    <div class="hero-phone">
        <i class="fa-solid fa-mobile-screen-button"></i>
    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section class="section">

    <div class="container">

        <div class="section-title">
            <h2>Shop by Brand</h2>
        </div>

        <div class="categories">

            <div class="category active"
                 onclick="filterBrand('All', this)">
                All
            </div>

            <div class="category"
                 onclick="filterBrand('Apple', this)">
                Apple
            </div>

            <div class="category"
                 onclick="filterBrand('Samsung', this)">
                Samsung
            </div>

            <div class="category"
                 onclick="filterBrand('OnePlus', this)">
                OnePlus
            </div>

            <div class="category"
                 onclick="filterBrand('Google', this)">
                Google
            </div>

            <div class="category"
                 onclick="filterBrand('Xiaomi', this)">
                Xiaomi
            </div>

            <div class="category"
                 onclick="filterBrand('Vivo', this)">
                Vivo
            </div>

        </div>

    </div>

</section>


<!-- ================= PRODUCTS ================= -->

<section class="section" id="mobiles">

    <div class="container">

        <div class="section-title">

            <h2>Latest Mobiles</h2>

            <span id="resultCount"></span>

        </div>

        <div class="product-grid" id="productGrid"></div>

    </div>

</section>


<!-- ================= FEATURES ================= -->

<section class="section">

    <div class="container">

        <div class="features">

            <div class="feature">
                <i class="fa-solid fa-truck-fast"></i>
                <h3>Fast Delivery</h3>
                <p>Get your smartphone delivered quickly.</p>
            </div>

            <div class="feature">
                <i class="fa-solid fa-shield-halved"></i>
                <h3>Secure Payment</h3>
                <p>100% secure and protected transactions.</p>
            </div>

            <div class="feature">
                <i class="fa-solid fa-rotate-left"></i>
                <h3>Easy Returns</h3>
                <p>Simple and hassle-free return policy.</p>
            </div>

            <div class="feature">
                <i class="fa-solid fa-headset"></i>
                <h3>24/7 Support</h3>
                <p>Our support team is always available.</p>
            </div>

        </div>

    </div>

</section>


<!-- ================= BOOKING / ORDER MODAL ================= -->

<div class="modal" id="bookingModal">

    <div class="modal-content">

        <span class="close" onclick="closeModal()">
            &times;
        </span>

        <h2 class="modal-title">
            Complete Your Order
        </h2>

        <p class="modal-subtitle">
            Enter your delivery details to book this mobile.
        </p>


        <div class="order-product">

            <img id="modalImage" src="" alt="Mobile">

            <div>

                <h3 id="modalProductName">
                    Mobile
                </h3>

                <p id="modalProductPrice">
                    ₹0
                </p>

            </div>

        </div>


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

                <span>Product</span>

                <span id="summaryProduct">
                    ₹0
                </span>

            </div>

            <div class="summary-row">

                <span>Delivery</span>

                <span>
                    FREE
                </span>

            </div>

            <div class="summary-row">

                <span>Discount</span>

                <span>
                    ₹0
                </span>

            </div>

            <div class="summary-row summary-total">

                <span>Total</span>

                <span id="summaryTotal">
                    ₹0
                </span>

            </div>

        </div>


        <button class="confirm-btn"
                onclick="confirmOrder()">

            <i class="fa-solid fa-lock"></i>
            Confirm Booking

        </button>

    </div>

</div>


<!-- ================= FOOTER ================= -->

<footer id="about">

    <div class="footer-grid">

        <div>

            <h3>
                MobileHub
            </h3>

            <p>
                Your trusted destination for the latest
                smartphones at the best prices.
            </p>

        </div>

        <div>

            <h3>
                Quick Links
            </h3>

            <a href="#">Home</a>
            <a href="#mobiles">Mobiles</a>
            <a href="#">Offers</a>
            <a href="#">Contact</a>

        </div>

        <div>

            <h3>
                Customer Care
            </h3>

            <a href="#">Help Center</a>
            <a href="#">Returns</a>
            <a href="#">Shipping</a>
            <a href="#">Warranty</a>

        </div>

        <div>

            <h3>
                Follow Us
            </h3>

            <a href="#">
                <i class="fa-brands fa-instagram"></i>
                Instagram
            </a>

            <a href="#">
                <i class="fa-brands fa-facebook"></i>
                Facebook
            </a>

            <a href="#">
                <i class="fa-brands fa-x-twitter"></i>
                Twitter
            </a>

        </div>

    </div>

    <div class="copyright">
        © 2026 MobileHub. All rights reserved.
    </div>

</footer>


<script>

    /* ================= PRODUCT DATA ================= */

    const products = [

        {
            id: 1,
            brand: "Apple",
            name: "iPhone 16 Pro",
            price: 119999,
            oldPrice: 129999,
            rating: 4.8,
            specs: "256GB • 48MP Camera • A18 Pro",
            image: "https://images.unsplash.com/photo-1592286927505-2fd7b3e1f8c5?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 2,
            brand: "Samsung",
            name: "Galaxy S25 Ultra",
            price: 129999,
            oldPrice: 139999,
            rating: 4.9,
            specs: "256GB • 200MP Camera • Snapdragon",
            image: "https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 3,
            brand: "OnePlus",
            name: "OnePlus 13",
            price: 69999,
            oldPrice: 74999,
            rating: 4.7,
            specs: "256GB • 50MP Camera • 6000mAh",
            image: "https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 4,
            brand: "Google",
            name: "Pixel 9 Pro",
            price: 109999,
            oldPrice: 119999,
            rating: 4.8,
            specs: "256GB • AI Camera • Tensor G4",
            image: "https://images.unsplash.com/photo-1598327105666-5b89351aff97?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 5,
            brand: "Xiaomi",
            name: "Xiaomi 15 Ultra",
            price: 89999,
            oldPrice: 94999,
            rating: 4.6,
            specs: "512GB • Leica Camera • 90W Charging",
            image: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 6,
            brand: "Vivo",
            name: "Vivo X200 Pro",
            price: 79999,
            oldPrice: 84999,
            rating: 4.7,
            specs: "512GB • Zeiss Camera • 6000mAh",
            image: "https://images.unsplash.com/photo-1556656793-08538906a9f8?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 7,
            brand: "Apple",
            name: "iPhone 16",
            price: 79999,
            oldPrice: 84999,
            rating: 4.7,
            specs: "128GB • 48MP Camera • A18 Chip",
            image: "https://images.unsplash.com/photo-1592286927505-2fd7b3e1f8c5?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 8,
            brand: "Samsung",
            name: "Galaxy S25",
            price: 84999,
            oldPrice: 89999,
            rating: 4.6,
            specs: "256GB • 50MP Camera • AMOLED",
            image: "https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?auto=format&fit=crop&w=600&q=80"
        }

    ];


    let selectedBrand = "All";
    let selectedProduct = null;
    let cartCount = 0;


    /* ================= RENDER PRODUCTS ================= */

    function renderProducts() {

        const grid = document.getElementById("productGrid");

        const search =
            document.getElementById("searchInput")
                .value
                .toLowerCase();

        const filteredProducts = products.filter(product => {

            const brandMatch =
                selectedBrand === "All" ||
                product.brand === selectedBrand;

            const searchMatch =
                product.name.toLowerCase().includes(search) ||
                product.brand.toLowerCase().includes(search);

            return brandMatch && searchMatch;

        });


        document.getElementById("resultCount").innerText =
            filteredProducts.length + " products";


        grid.innerHTML = "";


        filteredProducts.forEach(product => {

            grid.innerHTML += `

                <div class="product-card">

                    <button class="wishlist"
                            onclick="addWishlist()">

                        <i class="fa-regular fa-heart"></i>

                    </button>

                    <div class="product-image">

                        <img src="${product.image}"
                             alt="${product.name}">

                    </div>

                    <div class="product-info">

                        <div class="brand">
                            ${product.brand}
                        </div>

                        <div class="product-name">
                            ${product.name}
                        </div>

                        <div class="specs">
                            ${product.specs}
                        </div>

                        <div class="rating">

                            <i class="fa-solid fa-star"></i>

                            ${product.rating}

                            <span>
                                Excellent
                            </span>

                        </div>

                        <div class="price-row">

                            <div>

                                <span class="price">
                                    ₹${product.price.toLocaleString("en-IN")}
                                </span>

                                <span class="old-price">
                                    ₹${product.oldPrice.toLocaleString("en-IN")}
                                </span>

                            </div>

                            <button class="buy-btn"
                                    onclick="openBooking(${product.id})">

                                Buy

                            </button>

                        </div>

                    </div>

                </div>

            `;

        });

    }


    /* ================= BRAND FILTER ================= */

    function filterBrand(brand, element) {

        selectedBrand = brand;

        document.querySelectorAll(".category")
            .forEach(item => item.classList.remove("active"));

        element.classList.add("active");

        renderProducts();

    }


    /* ================= SEARCH ================= */

    function searchProducts() {

        renderProducts();

    }


    /* ================= OPEN BOOKING ================= */

    function openBooking(id) {

        selectedProduct =
            products.find(product => product.id === id);


        document.getElementById("modalImage").src =
            selectedProduct.image;

        document.getElementById("modalProductName").innerText =
            selectedProduct.name;

        document.getElementById("modalProductPrice").innerText =
            "₹" + selectedProduct.price.toLocaleString("en-IN");


        document.getElementById("summaryProduct").innerText =
            "₹" + selectedProduct.price.toLocaleString("en-IN");

        document.getElementById("summaryTotal").innerText =
            "₹" + selectedProduct.price.toLocaleString("en-IN");


        document.getElementById("bookingModal")
            .classList.add("show");

    }


    /* ================= CLOSE MODAL ================= */

    function closeModal() {

        document.getElementById("bookingModal")
            .classList.remove("show");

    }


    /* ================= CONFIRM ORDER ================= */

    function confirmOrder() {

        const name =
            document.getElementById("customerName").value.trim();

        const phone =
            document.getElementById("customerPhone").value.trim();

        const email =
            document.getElementById("customerEmail").value.trim();

        const address =
            document.getElementById("customerAddress").value.trim();


        if (!name || !phone || !email || !address) {

            alert("Please fill all delivery details.");

            return;
        }


        if (phone.length < 10) {

            alert("Please enter a valid mobile number.");

            return;
        }


        alert(
            "Order booked successfully!\\n\\n" +
            "Product: " + selectedProduct.name + "\\n" +
            "Customer: " + name + "\\n" +
            "Total: ₹" +
            selectedProduct.price.toLocaleString("en-IN")
        );


        cartCount++;

        document.getElementById("cartCount")
            .innerText = cartCount;


        closeModal();

    }


    /* ================= WISHLIST ================= */

    function addWishlist() {

        alert("Mobile added to wishlist ❤️");

    }


    /* ================= LOGIN ================= */

    function showLogin() {

        alert("Login page can be connected here.");

    }


    /* ================= CLOSE MODAL ON OUTSIDE CLICK ================= */

    document.getElementById("bookingModal")
        .addEventListener("click", function(event) {

            if (event.target === this) {
                closeModal();
            }

        });


    /* ================= INITIAL LOAD ================= */

    renderProducts();

</script>

</body>
</html>
