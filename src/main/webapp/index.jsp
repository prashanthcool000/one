<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>FoodHub - Order Delicious Food</title>

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
            background: #f8f9fb;
            color: #171717;
        }

        /* ================= HEADER ================= */

        header {
            background: #ffffff;
            padding: 17px 7%;
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
            color: #222;
        }

        .logo span {
            color: #f97316;
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
            color: #f97316;
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
            background: #f97316;
            color: white;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            font-size: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* ================= HERO ================= */

        .hero {
            background: linear-gradient(120deg, #ea580c, #f97316, #fb923c);
            color: white;
            padding: 70px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 40px;
        }

        .hero-content {
            max-width: 650px;
        }

        .hero h1 {
            font-size: 48px;
            line-height: 1.1;
            margin-bottom: 18px;
        }

        .hero p {
            color: #fff7ed;
            font-size: 17px;
            line-height: 1.7;
            margin-bottom: 28px;
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

        .hero-food {
            font-size: 170px;
            opacity: .22;
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
            background: #f97316;
            color: white;
            border-color: #f97316;
        }

        /* ================= FOOD GRID ================= */

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
            box-shadow: 0 15px 35px rgba(0,0,0,.09);
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
            box-shadow: 0 4px 15px rgba(0,0,0,.12);
            cursor: pointer;
            z-index: 2;
        }

        .wishlist:hover {
            color: #ef4444;
        }

        .product-image {
            height: 220px;
            background: #fff7ed;
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

        .product-card:hover .product-image img {
            transform: scale(1.05);
        }

        .product-info {
            padding: 20px;
        }

        .category-name {
            color: #f97316;
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
            justify-content: space-between;
            align-items: center;
        }

        .price {
            font-size: 20px;
            font-weight: 800;
        }

        .old-price {
            color: #aaa;
            text-decoration: line-through;
            font-size: 12px;
            margin-left: 5px;
        }

        .buy-btn {
            background: #f97316;
            color: white;
            border: none;
            padding: 11px 15px;
            border-radius: 9px;
            cursor: pointer;
            font-weight: 600;
        }

        .buy-btn:hover {
            background: #ea580c;
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
            color: #f97316;
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

        /* ================= CART ITEMS ================= */

        .cart-items {
            margin-bottom: 20px;
        }

        .cart-item {
            display: flex;
            align-items: center;
            gap: 14px;
            background: #fff7ed;
            padding: 12px;
            border-radius: 12px;
            margin-bottom: 10px;
        }

        .cart-item img {
            width: 65px;
            height: 65px;
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
            color: #f97316;
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
            background: #f97316;
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
            border-color: #f97316;
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
            background: #f97316;
            color: white;
            border-radius: 10px;
            font-weight: 700;
            cursor: pointer;
        }

        .confirm-btn:hover {
            background: #ea580c;
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
            grid-template-columns: 2fr 1fr 1fr 1fr;
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
            color: #f97316;
        }

        .copyright {
            border-top: 1px solid #333;
            margin-top: 35px;
            padding-top: 20px;
            color: #888;
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

            .hero-food {
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
                height: 180px;
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
                height: 250px;
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
        Food<span>Hub</span>
    </div>

    <nav>
        <a href="#">Home</a>
        <a href="#menu">Menu</a>
        <a href="#offers">Offers</a>
        <a href="#about">About</a>
    </nav>

    <div class="header-actions">

        <i class="fa-regular fa-user"
           onclick="showLogin()"></i>

        <div class="cart-icon"
             onclick="openCart()">

            <i class="fa-solid fa-cart-shopping"></i>

            <span class="cart-count"
                  id="cartCount">0</span>

        </div>

    </div>

</header>


<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-content">

        <h1>
            Delicious Food,<br>
            Delivered Fast
        </h1>

        <p>
            Order your favourite meals from the best restaurants
            and get them delivered straight to your doorstep.
        </p>

        <div class="search-box">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                    type="text"
                    id="searchInput"
                    placeholder="Search pizza, burger, biryani..."
                    onkeyup="searchProducts()">

            <button onclick="searchProducts()">
                Search
            </button>

        </div>

    </div>

    <div class="hero-food">
        <i class="fa-solid fa-bowl-food"></i>
    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section class="section">

    <div class="container">

        <div class="section-title">

            <h2>Explore Categories</h2>

        </div>

        <div class="categories">

            <div class="category active"
                 onclick="filterCategory('All', this)">
                All
            </div>

            <div class="category"
                 onclick="filterCategory('Pizza', this)">
                🍕 Pizza
            </div>

            <div class="category"
                 onclick="filterCategory('Burger', this)">
                🍔 Burgers
            </div>

            <div class="category"
                 onclick="filterCategory('Biryani', this)">
                🍛 Biryani
            </div>

            <div class="category"
                 onclick="filterCategory('Indian', this)">
                🍱 Indian
            </div>

            <div class="category"
                 onclick="filterCategory('Chinese', this)">
                🥡 Chinese
            </div>

            <div class="category"
                 onclick="filterCategory('Dessert', this)">
                🍰 Desserts
            </div>

            <div class="category"
                 onclick="filterCategory('Drinks', this)">
                🥤 Drinks
            </div>

        </div>

    </div>

</section>


<!-- ================= FOOD MENU ================= -->

<section class="section"
         id="menu">

    <div class="container">

        <div class="section-title">

            <h2>Popular Food</h2>

            <span id="resultCount"></span>

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

                <i class="fa-solid fa-motorcycle"></i>

                <h3>Fast Delivery</h3>

                <p>
                    Hot and fresh food delivered quickly.
                </p>

            </div>

            <div class="feature">

                <i class="fa-solid fa-utensils"></i>

                <h3>Best Restaurants</h3>

                <p>
                    Delicious food from trusted restaurants.
                </p>

            </div>

            <div class="feature">

                <i class="fa-solid fa-tag"></i>

                <h3>Great Offers</h3>

                <p>
                    Enjoy exciting deals and discounts.
                </p>

            </div>

            <div class="feature">

                <i class="fa-solid fa-headset"></i>

                <h3>24/7 Support</h3>

                <p>
                    Our support team is always available.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- ================= CART / CHECKOUT MODAL ================= -->

<div class="modal"
     id="cartModal">

    <div class="modal-content">

        <span class="close"
              onclick="closeCart()">
            &times;
        </span>

        <h2 class="modal-title">
            Your Order
        </h2>

        <p class="modal-subtitle">
            Review your items and enter your delivery details.
        </p>

        <div id="cartItems"
             class="cart-items">
        </div>


        <!-- CUSTOMER DETAILS -->

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

                    <span>Subtotal</span>

                    <span id="summarySubtotal">
                        ₹0
                    </span>

                </div>

                <div class="summary-row">

                    <span>Delivery Fee</span>

                    <span id="deliveryFee">
                        ₹40
                    </span>

                </div>

                <div class="summary-row">

                    <span>Discount</span>

                    <span id="discount">
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
                FoodHub
            </h3>

            <p>
                Your favourite destination for delicious food,
                great prices and fast delivery.
            </p>

        </div>

        <div>

            <h3>
                Quick Links
            </h3>

            <a href="#">
                Home
            </a>

            <a href="#menu">
                Menu
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
                Delivery
            </a>

            <a href="#">
                Refunds
            </a>

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

        © 2026 FoodHub. All rights reserved.

    </div>

</footer>


<script>

    /* ================= FOOD DATA ================= */

    const products = [

        {
            id: 1,
            category: "Pizza",
            name: "Margherita Pizza",
            price: 299,
            oldPrice: 349,
            rating: 4.8,
            description: "Fresh mozzarella, tomato sauce and basil.",
            image: "https://images.unsplash.com/photo-1574071318508-1cdbab80d002?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 2,
            category: "Pizza",
            name: "Pepperoni Pizza",
            price: 399,
            oldPrice: 449,
            rating: 4.9,
            description: "Loaded with pepperoni and melted cheese.",
            image: "https://images.unsplash.com/photo-1628840042765-356cda07504e?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 3,
            category: "Burger",
            name: "Classic Chicken Burger",
            price: 249,
            oldPrice: 299,
            rating: 4.7,
            description: "Crispy chicken, lettuce, cheese and special sauce.",
            image: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 4,
            category: "Burger",
            name: "Cheese Burger",
            price: 219,
            oldPrice: 269,
            rating: 4.6,
            description: "Juicy patty with cheddar cheese and fresh vegetables.",
            image: "https://images.unsplash.com/photo-1561758033-d89a9ad46330?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 5,
            category: "Biryani",
            name: "Chicken Biryani",
            price: 299,
            oldPrice: 349,
            rating: 4.9,
            description: "Aromatic basmati rice cooked with tender chicken.",
            image: "https://images.unsplash.com/photo-1563379091339-03246963d51a?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 6,
            category: "Biryani",
            name: "Mutton Biryani",
            price: 399,
            oldPrice: 449,
            rating: 4.8,
            description: "Traditional biryani with tender mutton and spices.",
            image: "https://images.unsplash.com/photo-1631515242808-497c3fbd3972?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 7,
            category: "Indian",
            name: "Paneer Butter Masala",
            price: 279,
            oldPrice: 319,
            rating: 4.7,
            description: "Soft paneer cooked in creamy tomato gravy.",
            image: "https://images.unsplash.com/photo-1631452180519-c014fe946bc7?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 8,
            category: "Indian",
            name: "Masala Dosa",
            price: 149,
            oldPrice: 179,
            rating: 4.8,
            description: "Crispy dosa served with potato masala and chutney.",
            image: "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 9,
            category: "Chinese",
            name: "Veg Hakka Noodles",
            price: 199,
            oldPrice: 229,
            rating: 4.6,
            description: "Stir-fried noodles with fresh vegetables.",
            image: "https://images.unsplash.com/photo-1585032226651-759b368d7246?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 10,
            category: "Chinese",
            name: "Chicken Fried Rice",
            price: 249,
            oldPrice: 289,
            rating: 4.7,
            description: "Flavourful fried rice with chicken and vegetables.",
            image: "https://images.unsplash.com/photo-1603133872878-684f208fb84b?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 11,
            category: "Dessert",
            name: "Chocolate Cake",
            price: 179,
            oldPrice: 219,
            rating: 4.9,
            description: "Rich and creamy chocolate cake.",
            image: "https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 12,
            category: "Drinks",
            name: "Fresh Mango Shake",
            price: 129,
            oldPrice: 159,
            rating: 4.8,
            description: "Refreshing mango shake made with fresh mangoes.",
            image: "https://images.unsplash.com/photo-1623065422902-30a2d299bbe4?auto=format&fit=crop&w=600&q=80"
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
                    product.name.toLowerCase().includes(search) ||
                    product.category.toLowerCase().includes(search) ||
                    product.description.toLowerCase().includes(search);

                return categoryMatch && searchMatch;

            });


        document.getElementById("resultCount").innerText =
            filteredProducts.length + " items";


        grid.innerHTML = "";


        if (filteredProducts.length === 0) {

            grid.innerHTML = `
                <div style="grid-column:1/-1;text-align:center;padding:50px;color:#777">
                    <i class="fa-solid fa-face-sad-tear"
                       style="font-size:45px;margin-bottom:15px"></i>

                    <h3>No food found</h3>

                    <p>Try searching for something else.</p>
                </div>
            `;

            return;
        }


        filteredProducts.forEach(product => {

            grid.innerHTML += `

                <div class="product-card">

                    <button class="wishlist"
                            onclick="addWishlist('${product.name}')">

                        <i class="fa-regular fa-heart"></i>

                    </button>


                    <div class="product-image">

                        <img src="${product.image}"
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
                                    onclick="addToCart(${product.id})">

                                <i class="fa-solid fa-cart-plus"></i>
                                Add

                            </button>

                        </div>

                    </div>

                </div>

            `;

        });

    }


    /* ================= CATEGORY FILTER ================= */

    function filterCategory(category, element) {

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
            products.find(product =>
                product.id === id
            );


        const existing =
            cart.find(item =>
                item.id === id
            );


        if (existing) {

            existing.quantity++;

        } else {

            cart.push({

                ...product,

                quantity: 1

            });

        }


        updateCartCount();


        alert(product.name + " added to cart!");

    }


    /* ================= CART COUNT ================= */

    function updateCartCount() {

        const total =
            cart.reduce(
                (sum, item) =>
                    sum + item.quantity,
                0
            );


        document.getElementById("cartCount")
            .innerText = total;

    }


    /* ================= OPEN CART ================= */

    function openCart() {

        renderCart();

        document.getElementById("cartModal")
            .classList.add("show");

    }


    /* ================= CLOSE CART ================= */

    function closeCart() {

        document.getElementById("cartModal")
            .classList.remove("show");

    }


    /* ================= RENDER CART ================= */

    function renderCart() {

        const cartItems =
            document.getElementById("cartItems");


        if (cart.length === 0) {

            cartItems.innerHTML = `

                <div class="empty-cart">

                    <i class="fa-solid fa-cart-shopping"></i>

                    <h3>Your cart is empty</h3>

                    <p>Add some delicious food to continue.</p>

                </div>

            `;


            document.getElementById("checkoutSection")
                .style.display = "none";

            return;

        }


        document.getElementById("checkoutSection")
            .style.display = "block";


        cartItems.innerHTML = "";


        cart.forEach(item => {

            cartItems.innerHTML += `

                <div class="cart-item">

                    <img src="${item.image}"
                         alt="${item.name}">


                    <div class="cart-item-info">

                        <h4>
                            ${item.name}
                        </h4>

                        <span class="cart-item-price">
                            ₹${item.price.toLocaleString("en-IN")}
                        </span>

                    </div>


                    <div class="quantity">

                        <button onclick="changeQuantity(${item.id}, -1)">
                            -
                        </button>

                        <span>
                            ${item.quantity}
                        </span>

                        <button onclick="changeQuantity(${item.id}, 1)">
                            +
                        </button>

                    </div>

                </div>

            `;

        });


        updateSummary();

    }


    /* ================= CHANGE QUANTITY ================= */

    function changeQuantity(id, change) {

        const item =
            cart.find(item =>
                item.id === id
            );


        if (!item) return;


        item.quantity += change;


        if (item.quantity <= 0) {

            cart =
                cart.filter(item =>
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
                (sum, item) =>
                    sum + item.price * item.quantity,
                0
            );


        const delivery =
            subtotal >= 499 ? 0 : 40;


        const discount =
            subtotal >= 999 ? 100 : 0;


        const total =
            subtotal +
            delivery -
            discount;


        document.getElementById("summarySubtotal")
            .innerText =
            "₹" + subtotal.toLocaleString("en-IN");


        document.getElementById("deliveryFee")
            .innerText =
            delivery === 0
                ? "FREE"
                : "₹" + delivery;


        document.getElementById("discount")
            .innerText =
            "₹" + discount.toLocaleString("en-IN");


        document.getElementById("summaryTotal")
            .innerText =
            "₹" + total.toLocaleString("en-IN");

    }


    /* ================= CONFIRM ORDER ================= */

    function confirmOrder() {

        const name =
            document.getElementById("customerName")
                .value.trim();


        const phone =
            document.getElementById("customerPhone")
                .value.trim();


        const email =
            document.getElementById("customerEmail")
                .value.trim();


        const address =
            document.getElementById("customerAddress")
                .value.trim();


        const payment =
            document.getElementById("paymentMethod")
                .value;


        if (cart.length === 0) {

            alert("Your cart is empty.");

            return;

        }


        if (!name ||
            !phone ||
            !email ||
            !address) {

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
                (sum, item) =>
                    sum + item.price * item.quantity,
                0
            );


        const delivery =
            subtotal >= 499 ? 0 : 40;


        const discount =
            subtotal >= 999 ? 100 : 0;


        const total =
            subtotal +
            delivery -
            discount;


        alert(

            "Order placed successfully! 🎉\n\n" +

            "Customer: " + name + "\n" +

            "Items: " + cart.length + "\n" +

            "Payment: " + payment + "\n" +

            "Total: ₹" +
            total.toLocaleString("en-IN") +

            "\n\nThank you for ordering from FoodHub!"

        );


        cart = [];


        updateCartCount();


        closeCart();


        document.getElementById("customerName").value = "";
        document.getElementById("customerPhone").value = "";
        document.getElementById("customerEmail").value = "";
        document.getElementById("customerAddress").value = "";

    }


    /* ================= WISHLIST ================= */

    function addWishlist(name) {

        alert(
            name + " added to wishlist ❤️"
        );

    }


    /* ================= LOGIN ================= */

    function showLogin() {

        alert(
            "Login page can be connected here."
        );

    }


    /* ================= CLOSE MODAL ================= */

    document.getElementById("cartModal")
        .addEventListener("click", function(event) {

            if (event.target === this) {

                closeCart();

            }

        });


    /* ================= INITIAL LOAD ================= */

    renderProducts();

</script>

</body>

</html>
