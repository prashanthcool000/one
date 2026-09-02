<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Foodie - Online Food Ordering</title>

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
            background: #f8f8f8;
            color: #222;
        }

        /* ================= HEADER ================= */

        header {
            background: white;
            height: 75px;
            padding: 0 7%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 15px rgba(0,0,0,.06);
        }

        .logo {
            font-size: 27px;
            font-weight: 800;
            color: #ef4444;
        }

        .logo span {
            color: #222;
        }

        nav {
            display: flex;
            gap: 30px;
        }

        nav a {
            text-decoration: none;
            color: #444;
            font-size: 14px;
            font-weight: 600;
        }

        nav a:hover {
            color: #ef4444;
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .location {
            display: flex;
            align-items: center;
            gap: 7px;
            font-size: 13px;
        }

        .location i {
            color: #ef4444;
        }

        .cart {
            position: relative;
            cursor: pointer;
            font-size: 20px;
        }

        .cart-count {
            position: absolute;
            top: -10px;
            right: -10px;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            background: #ef4444;
            color: white;
            font-size: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* ================= HERO ================= */

        .hero {
            min-height: 470px;
            background:
                linear-gradient(
                    rgba(0,0,0,.55),
                    rgba(0,0,0,.55)
                ),
                url("https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=1600&q=80");

            background-size: cover;
            background-position: center;

            display: flex;
            align-items: center;
            justify-content: center;

            text-align: center;
            color: white;
            padding: 50px 20px;
        }

        .hero-content {
            max-width: 750px;
        }

        .hero h1 {
            font-size: 54px;
            line-height: 1.1;
            margin-bottom: 18px;
        }

        .hero p {
            font-size: 18px;
            color: #eee;
            margin-bottom: 30px;
        }

        .search-box {
            background: white;
            max-width: 650px;
            margin: auto;
            display: flex;
            align-items: center;
            border-radius: 12px;
            padding: 6px;
        }

        .search-box i {
            color: #777;
            margin-left: 15px;
        }

        .search-box input {
            flex: 1;
            border: none;
            outline: none;
            padding: 15px;
            font-size: 14px;
        }

        .search-box button {
            background: #ef4444;
            color: white;
            border: none;
            border-radius: 9px;
            padding: 14px 24px;
            cursor: pointer;
            font-weight: 700;
        }

        /* ================= CONTAINER ================= */

        .container {
            width: 86%;
            max-width: 1400px;
            margin: auto;
        }

        .section {
            padding: 55px 0;
        }

        .section-heading {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 25px;
        }

        .section-heading h2 {
            font-size: 28px;
        }

        .section-heading span {
            color: #777;
            font-size: 13px;
        }

        /* ================= CATEGORIES ================= */

        .categories {
            display: flex;
            gap: 15px;
            overflow-x: auto;
            padding-bottom: 10px;
        }

        .category {
            background: white;
            border: 1px solid #e5e5e5;
            border-radius: 30px;
            padding: 13px 24px;
            white-space: nowrap;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
            transition: .2s;
        }

        .category:hover,
        .category.active {
            background: #ef4444;
            border-color: #ef4444;
            color: white;
        }

        /* ================= FOOD GRID ================= */

        .food-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
        }

        .food-card {
            background: white;
            border-radius: 18px;
            overflow: hidden;
            border: 1px solid #eee;
            transition: .3s;
            position: relative;
        }

        .food-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0,0,0,.09);
        }

        .food-image {
            height: 210px;
            position: relative;
            overflow: hidden;
        }

        .food-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .4s;
        }

        .food-card:hover .food-image img {
            transform: scale(1.08);
        }

        .favorite {
            position: absolute;
            right: 13px;
            top: 13px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            border: none;
            background: white;
            cursor: pointer;
            box-shadow: 0 3px 10px rgba(0,0,0,.15);
        }

        .favorite:hover {
            color: #ef4444;
        }

        .food-info {
            padding: 18px;
        }

        .food-category {
            color: #ef4444;
            text-transform: uppercase;
            font-size: 11px;
            font-weight: 700;
        }

        .food-name {
            font-size: 18px;
            font-weight: 700;
            margin: 7px 0;
        }

        .food-description {
            color: #777;
            font-size: 12px;
            line-height: 1.5;
            min-height: 36px;
        }

        .food-rating {
            margin-top: 10px;
            font-size: 12px;
        }

        .food-rating i {
            color: #f59e0b;
        }

        .food-bottom {
            margin-top: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .food-price {
            font-size: 19px;
            font-weight: 800;
        }

        .add-btn {
            background: #ef4444;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 700;
            font-size: 12px;
        }

        .add-btn:hover {
            background: #dc2626;
        }

        /* ================= OFFER ================= */

        .offer {
            background: linear-gradient(110deg, #dc2626, #f97316);
            border-radius: 20px;
            padding: 35px 45px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .offer h2 {
            font-size: 30px;
            margin-bottom: 8px;
        }

        .offer p {
            color: #ffe4e6;
            font-size: 14px;
        }

        .offer button {
            border: none;
            background: white;
            color: #dc2626;
            padding: 13px 23px;
            border-radius: 9px;
            font-weight: 700;
            cursor: pointer;
        }

        /* ================= CART MODAL ================= */

        .modal {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.65);
            z-index: 3000;
            display: none;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .modal.show {
            display: flex;
        }

        .modal-box {
            background: white;
            width: 100%;
            max-width: 600px;
            border-radius: 20px;
            padding: 30px;
            max-height: 90vh;
            overflow-y: auto;
            position: relative;
        }

        .close {
            position: absolute;
            right: 22px;
            top: 18px;
            font-size: 25px;
            cursor: pointer;
            color: #777;
        }

        .modal-title {
            font-size: 25px;
            margin-bottom: 20px;
        }

        /* ================= CART ITEMS ================= */

        .cart-item {
            display: flex;
            gap: 15px;
            padding: 15px 0;
            border-bottom: 1px solid #eee;
            align-items: center;
        }

        .cart-item img {
            width: 75px;
            height: 65px;
            object-fit: cover;
            border-radius: 9px;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-info h4 {
            font-size: 14px;
            margin-bottom: 5px;
        }

        .cart-item-info p {
            color: #ef4444;
            font-size: 13px;
            font-weight: 700;
        }

        .quantity {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .quantity button {
            width: 28px;
            height: 28px;
            border: 1px solid #ddd;
            background: white;
            border-radius: 5px;
            cursor: pointer;
        }

        .quantity span {
            font-size: 13px;
            font-weight: 700;
        }

        .remove {
            color: #ef4444;
            cursor: pointer;
            margin-left: 10px;
        }

        /* ================= CHECKOUT ================= */

        .checkout {
            margin-top: 25px;
        }

        .checkout-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
            font-size: 14px;
        }

        .total {
            border-top: 1px solid #ddd;
            padding-top: 15px;
            margin-top: 12px;
            font-size: 20px;
            font-weight: 800;
        }

        .checkout-btn {
            width: 100%;
            background: #ef4444;
            color: white;
            border: none;
            padding: 15px;
            border-radius: 10px;
            margin-top: 20px;
            cursor: pointer;
            font-weight: 700;
        }

        .checkout-btn:hover {
            background: #dc2626;
        }

        /* ================= FORM ================= */

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 7px;
        }

        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 13px;
            border: 1px solid #ddd;
            border-radius: 8px;
            outline: none;
            font-family: inherit;
        }

        .form-group textarea {
            resize: vertical;
            min-height: 80px;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #181818;
            color: white;
            padding: 50px 7%;
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
            color: white;
        }

        .copyright {
            border-top: 1px solid #333;
            margin-top: 35px;
            padding-top: 20px;
            color: #777;
            font-size: 12px;
        }

        /* ================= RESPONSIVE ================= */

        @media(max-width: 1100px) {

            .food-grid {
                grid-template-columns: repeat(3, 1fr);
            }

        }

        @media(max-width: 800px) {

            nav {
                display: none;
            }

            .location {
                display: none;
            }

            .hero h1 {
                font-size: 40px;
            }

            .food-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .offer {
                flex-direction: column;
                text-align: center;
                gap: 20px;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

        }

        @media(max-width: 500px) {

            header {
                padding: 0 5%;
            }

            .container {
                width: 90%;
            }

            .hero {
                min-height: 420px;
            }

            .hero h1 {
                font-size: 32px;
            }

            .hero p {
                font-size: 14px;
            }

            .search-box input {
                min-width: 0;
            }

            .search-box button {
                padding: 12px;
            }

            .food-grid {
                grid-template-columns: 1fr;
            }

            .food-image {
                height: 240px;
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
        Food<span>ie</span>
    </div>

    <nav>
        <a href="#">Home</a>
        <a href="#menu">Menu</a>
        <a href="#offers">Offers</a>
        <a href="#contact">Contact</a>
    </nav>

    <div class="header-right">

        <div class="location">
            <i class="fa-solid fa-location-dot"></i>
            Hyderabad
        </div>

        <div class="cart" onclick="openCart()">

            <i class="fa-solid fa-bag-shopping"></i>

            <span class="cart-count" id="cartCount">
                0
            </span>

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
            around you.
        </p>

        <div class="search-box">

            <i class="fa-solid fa-magnifying-glass"></i>

            <input
                    type="text"
                    id="searchInput"
                    placeholder="Search pizza, burger, biryani..."
                    onkeyup="searchFood()">

            <button onclick="searchFood()">
                Search
            </button>

        </div>

    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section class="section">

    <div class="container">

        <div class="section-heading">

            <h2>
                Explore Categories
            </h2>

        </div>

        <div class="categories">

            <div class="category active"
                 onclick="filterFood('All', this)">
                All
            </div>

            <div class="category"
                 onclick="filterFood('Pizza', this)">
                🍕 Pizza
            </div>

            <div class="category"
                 onclick="filterFood('Burger', this)">
                🍔 Burger
            </div>

            <div class="category"
                 onclick="filterFood('Biryani', this)">
                🍛 Biryani
            </div>

            <div class="category"
                 onclick="filterFood('Indian', this)">
                🍲 Indian
            </div>

            <div class="category"
                 onclick="filterFood('Dessert', this)">
                🍰 Desserts
            </div>

            <div class="category"
                 onclick="filterFood('Drinks', this)">
                🥤 Drinks
            </div>

        </div>

    </div>

</section>


<!-- ================= FOOD MENU ================= -->

<section class="section" id="menu">

    <div class="container">

        <div class="section-heading">

            <h2>
                Popular Food
            </h2>

            <span id="foodCount">
                8 items
            </span>

        </div>

        <div class="food-grid" id="foodGrid"></div>

    </div>

</section>


<!-- ================= OFFER ================= -->

<section class="section" id="offers">

    <div class="container">

        <div class="offer">

            <div>

                <h2>
                    Get 30% OFF
                </h2>

                <p>
                    Use coupon code FOOD30 on your first order.
                </p>

            </div>

            <button onclick="copyCoupon()">
                COPY CODE
            </button>

        </div>

    </div>

</section>


<!-- ================= CART MODAL ================= -->

<div class="modal" id="cartModal">

    <div class="modal-box">

        <span class="close" onclick="closeCart()">
            &times;
        </span>

        <h2 class="modal-title">
            Your Cart
        </h2>

        <div id="cartItems"></div>

        <div class="checkout">

            <div class="checkout-row">

                <span>
                    Subtotal
                </span>

                <span id="subtotal">
                    ₹0
                </span>

            </div>

            <div class="checkout-row">

                <span>
                    Delivery Fee
                </span>

                <span>
                    ₹40
                </span>

            </div>

            <div class="checkout-row">

                <span>
                    Tax
                </span>

                <span id="tax">
                    ₹0
                </span>

            </div>

            <div class="checkout-row total">

                <span>
                    Total
                </span>

                <span id="total">
                    ₹0
                </span>

            </div>

            <button class="checkout-btn"
                    onclick="openCheckout()">

                Proceed to Checkout

            </button>

        </div>

    </div>

</div>


<!-- ================= CHECKOUT MODAL ================= -->

<div class="modal" id="checkoutModal">

    <div class="modal-box">

        <span class="close" onclick="closeCheckout()">
            &times;
        </span>

        <h2 class="modal-title">
            Delivery Details
        </h2>

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
                Phone Number
            </label>

            <input
                    type="tel"
                    id="customerPhone"
                    placeholder="Enter phone number">

        </div>

        <div class="form-group">

            <label>
                Delivery Address
            </label>

            <textarea
                    id="customerAddress"
                    placeholder="Enter your complete address"></textarea>

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

            </select>

        </div>

        <button class="checkout-btn"
                onclick="placeOrder()">

            <i class="fa-solid fa-lock"></i>
            Place Order

        </button>

    </div>

</div>


<!-- ================= FOOTER ================= -->

<footer id="contact">

    <div class="footer-grid">

        <div>

            <h3>
                Foodie
            </h3>

            <p>
                Order delicious food from your favourite
                restaurants and get it delivered to your door.
            </p>

        </div>

        <div>

            <h3>
                Company
            </h3>

            <a href="#">About Us</a>
            <a href="#">Careers</a>
            <a href="#">Restaurants</a>
            <a href="#">Contact</a>

        </div>

        <div>

            <h3>
                Support
            </h3>

            <a href="#">Help Center</a>
            <a href="#">Terms</a>
            <a href="#">Privacy</a>
            <a href="#">Refund Policy</a>

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
        © 2026 Foodie. All rights reserved.
    </div>

</footer>


<script>

    /* ================= FOOD DATA ================= */

    const foods = [

        {
            id: 1,
            category: "Pizza",
            name: "Margherita Pizza",
            description: "Fresh tomato, mozzarella and basil.",
            price: 299,
            rating: 4.8,
            image: "https://images.unsplash.com/photo-1574071318508-1cdbab80d002?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 2,
            category: "Burger",
            name: "Classic Cheese Burger",
            description: "Juicy patty with cheese and fresh vegetables.",
            price: 249,
            rating: 4.7,
            image: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 3,
            category: "Biryani",
            name: "Hyderabadi Biryani",
            description: "Aromatic basmati rice with spicy chicken.",
            price: 349,
            rating: 4.9,
            image: "https://images.unsplash.com/photo-1563379091339-03246963d51a?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 4,
            category: "Indian",
            name: "Butter Chicken",
            description: "Creamy tomato curry with tender chicken.",
            price: 379,
            rating: 4.8,
            image: "https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 5,
            category: "Burger",
            name: "Crispy Chicken Burger",
            description: "Crispy chicken with lettuce and special sauce.",
            price: 279,
            rating: 4.6,
            image: "https://images.unsplash.com/photo-1606755962773-d324e0a13086?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 6,
            category: "Dessert",
            name: "Chocolate Cake",
            description: "Rich chocolate cake with creamy frosting.",
            price: 199,
            rating: 4.7,
            image: "https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 7,
            category: "Indian",
            name: "Paneer Tikka",
            description: "Grilled paneer with peppers and Indian spices.",
            price: 259,
            rating: 4.6,
            image: "https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?auto=format&fit=crop&w=700&q=80"
        },

        {
            id: 8,
            category: "Drinks",
            name: "Fresh Mango Shake",
            description: "Fresh mango blended with chilled milk.",
            price: 149,
            rating: 4.5,
            image: "https://images.unsplash.com/photo-1546173159-315724a31696?auto=format&fit=crop&w=700&q=80"
        }

    ];


    let selectedCategory = "All";

    let cart = [];


    /* ================= DISPLAY FOOD ================= */

    function renderFood() {

        const grid =
            document.getElementById("foodGrid");

        const search =
            document.getElementById("searchInput")
                .value
                .toLowerCase();


        const filtered =
            foods.filter(food => {

                const categoryMatch =
                    selectedCategory === "All" ||
                    food.category === selectedCategory;

                const searchMatch =
                    food.name.toLowerCase().includes(search) ||
                    food.category.toLowerCase().includes(search);

                return categoryMatch && searchMatch;

            });


        document.getElementById("foodCount")
            .innerText =
            filtered.length + " items";


        grid.innerHTML = "";


        filtered.forEach(food => {

            grid.innerHTML += `

                <div class="food-card">

                    <div class="food-image">

                        <img src="${food.image}"
                             alt="${food.name}">

                        <button class="favorite"
                                onclick="addFavorite()">

                            <i class="fa-regular fa-heart"></i>

                        </button>

                    </div>

                    <div class="food-info">

                        <div class="food-category">
                            ${food.category}
                        </div>

                        <div class="food-name">
                            ${food.name}
                        </div>

                        <div class="food-description">
                            ${food.description}
                        </div>

                        <div class="food-rating">

                            <i class="fa-solid fa-star"></i>

                            ${food.rating}

                            · Excellent

                        </div>

                        <div class="food-bottom">

                            <div class="food-price">
                                ₹${food.price}
                            </div>

                            <button class="add-btn"
                                    onclick="addToCart(${food.id})">

                                <i class="fa-solid fa-plus"></i>
                                Add

                            </button>

                        </div>

                    </div>

                </div>

            `;

        });

    }


    /* ================= CATEGORY FILTER ================= */

    function filterFood(category, element) {

        selectedCategory = category;

        document.querySelectorAll(".category")
            .forEach(item => {

                item.classList.remove("active");

            });

        element.classList.add("active");

        renderFood();

    }


    /* ================= SEARCH ================= */

    function searchFood() {

        renderFood();

    }


    /* ================= ADD TO CART ================= */

    function addToCart(id) {

        const food =
            foods.find(item => item.id === id);

        const existing =
            cart.find(item => item.id === id);


        if (existing) {

            existing.quantity++;

        } else {

            cart.push({
                ...food,
                quantity: 1
            });

        }


        updateCartCount();

        showMessage(
            food.name + " added to cart!"
        );

    }


    /* ================= CART COUNT ================= */

    function updateCartCount() {

        const count =
            cart.reduce(
                (total, item) =>
                    total + item.quantity,
                0
            );

        document.getElementById("cartCount")
            .innerText = count;

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

        const container =
            document.getElementById("cartItems");


        if (cart.length === 0) {

            container.innerHTML = `

                <div style="
                    text-align:center;
                    padding:40px 10px;
                    color:#777;
                ">

                    <i class="fa-solid fa-bag-shopping"
                       style="font-size:45px;margin-bottom:15px;">
                    </i>

                    <h3>
                        Your cart is empty
                    </h3>

                    <p>
                        Add some delicious food!
                    </p>

                </div>

            `;

            document.getElementById("subtotal")
                .innerText = "₹0";

            document.getElementById("tax")
                .innerText = "₹0";

            document.getElementById("total")
                .innerText = "₹0";

            return;

        }


        container.innerHTML = "";


        cart.forEach(item => {

            container.innerHTML += `

                <div class="cart-item">

                    <img src="${item.image}"
                         alt="${item.name}">

                    <div class="cart-item-info">

                        <h4>
                            ${item.name}
                        </h4>

                        <p>
                            ₹${item.price}
                        </p>

                    </div>

                    <div class="quantity">

                        <button
                            onclick="changeQuantity(${item.id}, -1)">
                            -
                        </button>

                        <span>
                            ${item.quantity}
                        </span>

                        <button
                            onclick="changeQuantity(${item.id}, 1)">
                            +
                        </button>

                    </div>

                    <i class="fa-solid fa-trash remove"
                       onclick="removeItem(${item.id})">
                    </i>

                </div>

            `;

        });


        calculateTotal();

    }


    /* ================= QUANTITY ================= */

    function changeQuantity(id, amount) {

        const item =
            cart.find(item => item.id === id);

        if (!item) return;


        item.quantity += amount;


        if (item.quantity <= 0) {

            cart =
                cart.filter(item => item.id !== id);

        }


        updateCartCount();

        renderCart();

    }


    /* ================= REMOVE ================= */

    function removeItem(id) {

        cart =
            cart.filter(item => item.id !== id);

        updateCartCount();

        renderCart();

    }


    /* ================= TOTAL ================= */

    function calculateTotal() {

        const subtotal =
            cart.reduce(
                (sum, item) =>
                    sum + item.price * item.quantity,
                0
            );


        const delivery =
            subtotal > 0 ? 40 : 0;

        const tax =
            Math.round(subtotal * 0.05);

        const total =
            subtotal + delivery + tax;


        document.getElementById("subtotal")
            .innerText =
            "₹" + subtotal;

        document.getElementById("tax")
            .innerText =
            "₹" + tax;

        document.getElementById("total")
            .innerText =
            "₹" + total;

    }


    /* ================= CHECKOUT ================= */

    function openCheckout() {

        if (cart.length === 0) {

            alert("Your cart is empty.");

            return;

        }


        closeCart();

        document.getElementById("checkoutModal")
            .classList.add("show");

    }


    function closeCheckout() {

        document.getElementById("checkoutModal")
            .classList.remove("show");

    }


    /* ================= PLACE ORDER ================= */

    function placeOrder() {

        const name =
            document.getElementById("customerName")
                .value.trim();

        const phone =
            document.getElementById("customerPhone")
                .value.trim();

        const address =
            document.getElementById("customerAddress")
                .value.trim();

        const payment =
            document.getElementById("paymentMethod")
                .value;


        if (!name || !phone || !address) {

            alert(
                "Please fill in all delivery details."
            );

            return;

        }


        if (phone.length < 10) {

            alert(
                "Please enter a valid phone number."
            );

            return;

        }


        const orderId =
            "FD" +
            Math.floor(
                100000 + Math.random() * 900000
            );


        alert(

            "Order placed successfully! 🎉\\n\\n" +

            "Order ID: " + orderId + "\\n" +

            "Customer: " + name + "\\n" +

            "Payment: " + payment + "\\n\\n" +

            "Your food will be delivered soon."

        );


        cart = [];

        updateCartCount();

        closeCheckout();

        document.getElementById("customerName")
            .value = "";

        document.getElementById("customerPhone")
            .value = "";

        document.getElementById("customerAddress")
            .value = "";

    }


    /* ================= FAVORITE ================= */

    function addFavorite() {

        alert("Added to favourites ❤️");

    }


    /* ================= COUPON ================= */

    function copyCoupon() {

        navigator.clipboard.writeText("FOOD30");

        alert(
            "Coupon FOOD30 copied!"
        );

    }


    /* ================= MESSAGE ================= */

    function showMessage(message) {

        alert(message);

    }


    /* ================= CLOSE OUTSIDE ================= */

    document.getElementById("cartModal")
        .addEventListener(
            "click",
            function(event) {

                if (event.target === this) {
                    closeCart();
                }

            }
        );


    document.getElementById("checkoutModal")
        .addEventListener(
            "click",
            function(event) {

                if (event.target === this) {
                    closeCheckout();
                }

            }
        );


    /* ================= INITIALIZE ================= */

    renderFood();

</script>


</body>

</html>
