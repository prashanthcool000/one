```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>LUXE — Fashion Store</title>

    <!-- Google Fonts -->
    <link rel="preconnect"
        href="https://fonts.googleapis.com">

    <link rel="preconnect"
        href="https://fonts.gstatic.com"
        crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        /* =====================================================
           GLOBAL
        ===================================================== */

        :root {

            --black: #111111;
            --dark: #191919;
            --white: #ffffff;

            --cream: #f8f5f0;
            --light: #f4f2ef;

            --gray: #777;
            --border: #e7e4df;

            --gold: #b88b4a;
            --pink: #e9a6a6;

            --radius: 16px;

            --container: 1250px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {

            font-family: "DM Sans", sans-serif;

            background: var(--white);

            color: var(--black);

            line-height: 1.5;

            overflow-x: hidden;
        }

        img {
            max-width: 100%;
            display: block;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input {
            font-family: inherit;
        }

        .container {

            width: 100%;

            max-width: var(--container);

            margin: auto;

            padding: 0 24px;
        }


        /* =====================================================
           TOP BAR
        ===================================================== */

        .top-bar {

            background: var(--black);

            color: white;

            text-align: center;

            padding: 9px;

            font-size: 12px;

            letter-spacing: .5px;
        }

        .top-bar strong {
            color: #e9c58c;
        }


        /* =====================================================
           HEADER
        ===================================================== */

        header {

            position: sticky;

            top: 0;

            z-index: 1000;

            background: rgba(255,255,255,.96);

            backdrop-filter: blur(15px);

            border-bottom: 1px solid var(--border);
        }

        .header {

            height: 78px;

            display: flex;

            align-items: center;

            justify-content: space-between;

            gap: 30px;
        }

        .logo {

            font-family: "Playfair Display", serif;

            font-size: 30px;

            font-weight: 700;

            letter-spacing: 2px;
        }

        .logo span {
            color: var(--gold);
        }


        /* NAV */

        .nav ul {

            list-style: none;

            display: flex;

            gap: 28px;
        }

        .nav a {

            font-size: 14px;

            font-weight: 600;

            position: relative;

            padding: 29px 0;
        }

        .nav a::after {

            content: "";

            position: absolute;

            bottom: 19px;

            left: 0;

            width: 0;

            height: 2px;

            background: var(--black);

            transition: .3s;
        }

        .nav a:hover::after {

            width: 100%;
        }


        /* HEADER ACTIONS */

        .header-actions {

            display: flex;

            align-items: center;

            gap: 18px;
        }

        .header-icon {

            border: 0;

            background: transparent;

            cursor: pointer;

            font-size: 17px;

            position: relative;

            color: var(--black);
        }

        .cart-count {

            position: absolute;

            top: -10px;

            right: -10px;

            width: 18px;

            height: 18px;

            border-radius: 50%;

            background: var(--black);

            color: white;

            display: grid;

            place-items: center;

            font-size: 10px;

            font-weight: 700;
        }

        .mobile-menu-btn {

            display: none;

            background: transparent;

            border: 0;

            font-size: 20px;

            cursor: pointer;
        }


        /* =====================================================
           HERO
        ===================================================== */

        .hero {

            min-height: 650px;

            background-image:

                linear-gradient(
                    90deg,
                    rgba(0,0,0,.65),
                    rgba(0,0,0,.15)
                ),

                url("https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=1800&q=90");

            background-size: cover;

            background-position: center;

            display: flex;

            align-items: center;

            color: white;
        }

        .hero-content {

            max-width: 650px;
        }

        .hero-small {

            text-transform: uppercase;

            letter-spacing: 4px;

            font-size: 12px;

            margin-bottom: 20px;

            font-weight: 600;
        }

        .hero h1 {

            font-family: "Playfair Display", serif;

            font-size: clamp(50px, 7vw, 88px);

            line-height: 1.02;

            margin-bottom: 25px;

            font-weight: 600;
        }

        .hero h1 span {
            color: #e9c58c;
        }

        .hero p {

            max-width: 500px;

            font-size: 16px;

            color: rgba(255,255,255,.9);

            margin-bottom: 35px;
        }

        .hero-buttons {

            display: flex;

            gap: 12px;

            flex-wrap: wrap;
        }

        .btn {

            border: 0;

            padding: 14px 28px;

            cursor: pointer;

            font-weight: 600;

            transition: .25s;

            display: inline-flex;

            align-items: center;

            justify-content: center;

            gap: 10px;
        }

        .btn-dark {

            background: white;

            color: black;
        }

        .btn-dark:hover {

            background: #eee;

            transform: translateY(-2px);
        }

        .btn-outline {

            border: 1px solid rgba(255,255,255,.6);

            background: transparent;

            color: white;
        }

        .btn-outline:hover {

            background: white;

            color: black;
        }


        /* =====================================================
           BENEFITS
        ===================================================== */

        .benefits {

            border-bottom: 1px solid var(--border);

            border-top: 1px solid var(--border);
        }

        .benefit-grid {

            display: grid;

            grid-template-columns: repeat(4,1fr);
        }

        .benefit {

            padding: 28px 20px;

            display: flex;

            align-items: center;

            gap: 14px;

            border-right: 1px solid var(--border);
        }

        .benefit:last-child {
            border-right: 0;
        }

        .benefit i {

            font-size: 22px;

            color: var(--gold);
        }

        .benefit h4 {

            font-size: 13px;

            margin-bottom: 3px;
        }

        .benefit p {

            font-size: 11px;

            color: var(--gray);
        }


        /* =====================================================
           SECTION
        ===================================================== */

        .section {

            padding: 85px 0;
        }

        .section-header {

            text-align: center;

            margin-bottom: 42px;
        }

        .eyebrow {

            text-transform: uppercase;

            letter-spacing: 3px;

            color: var(--gold);

            font-size: 11px;

            font-weight: 700;

            margin-bottom: 10px;
        }

        .section-title {

            font-family: "Playfair Display", serif;

            font-size: 42px;

            font-weight: 600;

            margin-bottom: 10px;
        }

        .section-description {

            color: var(--gray);

            font-size: 14px;
        }


        /* =====================================================
           CATEGORIES
        ===================================================== */

        .categories {

            display: grid;

            grid-template-columns: repeat(4,1fr);

            gap: 18px;
        }

        .category {

            height: 390px;

            position: relative;

            overflow: hidden;

            cursor: pointer;
        }

        .category img {

            width: 100%;

            height: 100%;

            object-fit: cover;

            transition: .5s;
        }

        .category:hover img {

            transform: scale(1.06);
        }

        .category-overlay {

            position: absolute;

            inset: 0;

            display: flex;

            flex-direction: column;

            align-items: center;

            justify-content: flex-end;

            padding: 35px 20px;

            color: white;

            text-align: center;

            background:
                linear-gradient(
                    transparent 35%,
                    rgba(0,0,0,.65)
                );
        }

        .category h3 {

            font-family: "Playfair Display", serif;

            font-size: 29px;

            margin-bottom: 8px;
        }

        .category a {

            font-size: 12px;

            text-transform: uppercase;

            letter-spacing: 2px;

            border-bottom: 1px solid white;

            padding-bottom: 4px;
        }


        /* =====================================================
           PRODUCTS
        ===================================================== */

        .product-toolbar {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 25px;

            gap: 20px;
        }

        .filter-buttons {

            display: flex;

            gap: 8px;

            flex-wrap: wrap;
        }

        .filter-btn {

            background: transparent;

            border: 1px solid var(--border);

            padding: 9px 18px;

            cursor: pointer;

            border-radius: 30px;

            font-size: 12px;

            transition: .25s;
        }

        .filter-btn:hover,
        .filter-btn.active {

            background: var(--black);

            color: white;

            border-color: var(--black);
        }

        .product-grid {

            display: grid;

            grid-template-columns: repeat(4,1fr);

            gap: 24px;
        }

        .product-card {

            position: relative;

            background: white;

            min-width: 0;
        }

        .product-image {

            position: relative;

            overflow: hidden;

            background: var(--light);

            aspect-ratio: 3 / 4;
        }

        .product-image img {

            width: 100%;

            height: 100%;

            object-fit: cover;

            transition: .45s;
        }

        .product-card:hover .product-image img {

            transform: scale(1.05);
        }

        .product-badge {

            position: absolute;

            top: 13px;

            left: 13px;

            background: var(--black);

            color: white;

            padding: 6px 10px;

            font-size: 10px;

            font-weight: 700;

            text-transform: uppercase;

            letter-spacing: 1px;

            z-index: 2;
        }

        .product-badge.sale {
            background: #c65d5d;
        }

        .wishlist {

            position: absolute;

            top: 13px;

            right: 13px;

            width: 38px;

            height: 38px;

            border: 0;

            border-radius: 50%;

            background: white;

            cursor: pointer;

            z-index: 2;

            box-shadow: 0 5px 20px rgba(0,0,0,.1);
        }

        .wishlist:hover {

            color: #c65d5d;
        }

        .quick-add {

            position: absolute;

            bottom: -55px;

            left: 12px;

            right: 12px;

            background: white;

            border: 0;

            padding: 13px;

            font-weight: 700;

            cursor: pointer;

            transition: .3s;

            z-index: 3;
        }

        .product-card:hover .quick-add {

            bottom: 12px;
        }

        .product-info {

            padding: 17px 2px;
        }

        .product-category {

            color: var(--gray);

            font-size: 11px;

            text-transform: uppercase;

            letter-spacing: 1px;

            margin-bottom: 5px;
        }

        .product-name {

            font-size: 15px;

            font-weight: 600;

            margin-bottom: 8px;
        }

        .product-rating {

            font-size: 11px;

            color: #d39a38;

            margin-bottom: 9px;
        }

        .price {

            font-size: 15px;

            font-weight: 700;
        }

        .old-price {

            color: #999;

            text-decoration: line-through;

            font-weight: 400;

            margin-left: 6px;

            font-size: 13px;
        }


        /* =====================================================
           PROMO
        ===================================================== */

        .promo {

            background: var(--cream);

            padding: 80px 0;
        }

        .promo-box {

            display: grid;

            grid-template-columns: 1fr 1fr;

            min-height: 520px;
        }

        .promo-image {

            background-image:
                url("https://images.unsplash.com/photo-1539109136881-3be0616acf4b?auto=format&fit=crop&w=1000&q=90");

            background-size: cover;

            background-position: center;
        }

        .promo-content {

            display: flex;

            flex-direction: column;

            justify-content: center;

            padding: 70px;

            background: white;
        }

        .promo-content h2 {

            font-family: "Playfair Display", serif;

            font-size: 52px;

            line-height: 1.1;

            margin-bottom: 18px;
        }

        .promo-content p {

            color: var(--gray);

            max-width: 430px;

            margin-bottom: 25px;
        }

        .promo-price {

            font-size: 28px;

            font-weight: 700;

            margin-bottom: 25px;
        }

        .promo-price span {

            color: #999;

            font-size: 15px;

            text-decoration: line-through;

            margin-left: 10px;
        }


        /* =====================================================
           NEW COLLECTION
        ===================================================== */

        .collection {

            background: var(--dark);

            color: white;
        }

        .collection .section-description {
            color: #aaa;
        }

        .collection-grid {

            display: grid;

            grid-template-columns: 1.3fr 1fr 1fr;

            gap: 18px;

            height: 580px;
        }

        .collection-item {

            position: relative;

            overflow: hidden;
        }

        .collection-item img {

            width: 100%;

            height: 100%;

            object-fit: cover;

            transition: .5s;
        }

        .collection-item:hover img {

            transform: scale(1.05);
        }

        .collection-item:first-child {

            grid-row: span 2;
        }

        .collection-caption {

            position: absolute;

            left: 25px;

            bottom: 25px;
        }

        .collection-caption h3 {

            font-family: "Playfair Display", serif;

            font-size: 27px;
        }

        .collection-caption p {

            font-size: 12px;

            opacity: .8;
        }


        /* =====================================================
           TESTIMONIALS
        ===================================================== */

        .reviews {

            display: grid;

            grid-template-columns: repeat(3,1fr);

            gap: 20px;
        }

        .review {

            border: 1px solid var(--border);

            padding: 30px;

            text-align: center;
        }

        .review-stars {

            color: #d39a38;

            letter-spacing: 3px;

            margin-bottom: 17px;
        }

        .review p {

            font-family: "Playfair Display", serif;

            font-size: 18px;

            line-height: 1.6;

            margin-bottom: 20px;
        }

        .review-name {

            font-size: 12px;

            font-weight: 700;

            text-transform: uppercase;

            letter-spacing: 1px;
        }


        /* =====================================================
           NEWSLETTER
        ===================================================== */

        .newsletter {

            background: var(--cream);

            padding: 75px 20px;

            text-align: center;
        }

        .newsletter h2 {

            font-family: "Playfair Display", serif;

            font-size: 40px;

            margin-bottom: 10px;
        }

        .newsletter p {

            color: var(--gray);

            margin-bottom: 25px;
        }

        .newsletter-form {

            display: flex;

            max-width: 500px;

            margin: auto;
        }

        .newsletter-form input {

            flex: 1;

            border: 1px solid var(--border);

            padding: 14px 17px;

            outline: none;

            background: white;
        }

        .newsletter-form button {

            border: 0;

            background: var(--black);

            color: white;

            padding: 0 25px;

            cursor: pointer;

            font-weight: 700;
        }


        /* =====================================================
           FOOTER
        ===================================================== */

        footer {

            background: var(--black);

            color: white;

            padding: 70px 0 25px;
        }

        .footer-grid {

            display: grid;

            grid-template-columns: 2fr 1fr 1fr 1fr;

            gap: 50px;

            padding-bottom: 50px;

            border-bottom: 1px solid #333;
        }

        .footer-logo {

            font-family: "Playfair Display", serif;

            font-size: 30px;

            margin-bottom: 15px;
        }

        .footer-about {

            color: #999;

            font-size: 13px;

            max-width: 320px;
        }

        .footer-title {

            font-size: 13px;

            font-weight: 700;

            text-transform: uppercase;

            letter-spacing: 1px;

            margin-bottom: 18px;
        }

        .footer-links {

            list-style: none;
        }

        .footer-links li {

            margin-bottom: 10px;

            color: #999;

            font-size: 13px;
        }

        .footer-links li:hover {

            color: white;

            cursor: pointer;
        }

        .social {

            display: flex;

            gap: 10px;

            margin-top: 20px;
        }

        .social a {

            width: 35px;

            height: 35px;

            border: 1px solid #444;

            border-radius: 50%;

            display: grid;

            place-items: center;
        }

        .copyright {

            text-align: center;

            padding-top: 25px;

            color: #777;

            font-size: 12px;
        }


        /* =====================================================
           SEARCH MODAL
        ===================================================== */

        .search-panel {

            position: fixed;

            inset: 0;

            background: rgba(0,0,0,.7);

            z-index: 2000;

            display: none;

            align-items: flex-start;

            justify-content: center;

            padding-top: 100px;
        }

        .search-panel.show {

            display: flex;
        }

        .search-box {

            width: 90%;

            max-width: 700px;

            background: white;

            padding: 25px;

            display: flex;

            gap: 10px;
        }

        .search-box input {

            flex: 1;

            border: 0;

            outline: none;

            font-size: 18px;

            padding: 10px;
        }

        .close-search {

            border: 0;

            background: transparent;

            font-size: 20px;

            cursor: pointer;
        }


        /* =====================================================
           MOBILE MENU
        ===================================================== */

        .mobile-nav {

            display: none;

            background: white;

            border-top: 1px solid var(--border);

            padding: 20px;
        }

        .mobile-nav a {

            display: block;

            padding: 12px 0;

            border-bottom: 1px solid var(--border);

            font-weight: 600;
        }


        /* =====================================================
           RESPONSIVE
        ===================================================== */

        @media(max-width:1000px) {

            .nav {
                display: none;
            }

            .mobile-menu-btn {
                display: block;
            }

            .header {
                justify-content: space-between;
            }

            .benefit-grid {
                grid-template-columns: repeat(2,1fr);
            }

            .benefit:nth-child(2) {
                border-right: 0;
            }

            .categories {
                grid-template-columns: repeat(2,1fr);
            }

            .product-grid {
                grid-template-columns: repeat(3,1fr);
            }

            .collection-grid {
                grid-template-columns: 1fr 1fr;
            }

            .collection-item:first-child {
                grid-row: span 1;
            }

            .reviews {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }


        @media(max-width:700px) {

            .header {
                height: 65px;
            }

            .logo {
                font-size: 24px;
            }

            .header-actions {
                gap: 12px;
            }

            .hero {
                min-height: 600px;

                background-position: 65% center;
            }

            .hero h1 {
                font-size: 48px;
            }

            .section {
                padding: 60px 0;
            }

            .section-title {
                font-size: 34px;
            }

            .categories {
                grid-template-columns: 1fr 1fr;

                gap: 10px;
            }

            .category {
                height: 280px;
            }

            .category h3 {
                font-size: 23px;
            }

            .product-toolbar {
                align-items: flex-start;

                flex-direction: column;
            }

            .product-grid {
                grid-template-columns: 1fr 1fr;

                gap: 15px;
            }

            .quick-add {
                position: static;

                margin: 0 10px 10px;

                width: calc(100% - 20px);
            }

            .product-card:hover .quick-add {
                bottom: auto;
            }

            .promo-box {
                grid-template-columns: 1fr;
            }

            .promo-image {
                min-height: 400px;
            }

            .promo-content {
                padding: 45px 25px;
            }

            .promo-content h2 {
                font-size: 40px;
            }

            .collection-grid {
                grid-template-columns: 1fr 1fr;

                height: 500px;
            }

            .collection-item:first-child {
                grid-column: span 2;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;

                gap: 30px;
            }

        }


        @media(max-width:480px) {

            .container {
                padding: 0 16px;
            }

            .header-actions .search-icon {
                display: none;
            }

            .benefit-grid {
                grid-template-columns: 1fr;
            }

            .benefit {
                border-right: 0;

                border-bottom: 1px solid var(--border);
            }

            .categories {
                grid-template-columns: 1fr;
            }

            .category {
                height: 350px;
            }

            .product-grid {
                grid-template-columns: 1fr 1fr;
            }

            .product-name {
                font-size: 13px;
            }

            .price {
                font-size: 13px;
            }

            .collection-grid {
                height: 650px;

                grid-template-columns: 1fr;
            }

            .collection-item:first-child {
                grid-column: auto;
            }

            .newsletter-form {
                flex-direction: column;

                gap: 8px;
            }

            .newsletter-form input {
                width: 100%;
            }

            .newsletter-form button {
                padding: 14px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }
        }

    </style>

</head>


<body>


<!-- =====================================================
     TOP BAR
===================================================== -->

<div class="top-bar">

    ✦ FREE SHIPPING ON ORDERS OVER ₹1,999
    &nbsp; | &nbsp;
    <strong>GET 20% OFF YOUR FIRST ORDER</strong>

</div>


<!-- =====================================================
     HEADER
===================================================== -->

<header>

    <div class="container header">

        <button class="mobile-menu-btn"
                id="mobileMenuBtn">

            <i class="fa-solid fa-bars"></i>

        </button>


        <a href="index.jsp" class="logo">

            LUXE<span>.</span>

        </a>


        <nav class="nav">

            <ul>

                <li>
                    <a href="index.jsp">Home</a>
                </li>

                <li>
                    <a href="#categories">Collections</a>
                </li>

                <li>
                    <a href="#products">Shop</a>
                </li>

                <li>
                    <a href="#new">New Arrivals</a>
                </li>

                <li>
                    <a href="#deals">Sale</a>
                </li>

            </ul>

        </nav>


        <div class="header-actions">

            <button class="header-icon search-icon"
                    id="searchButton">

                <i class="fa-solid fa-magnifying-glass"></i>

            </button>


            <a href="login.jsp"
               class="header-icon">

                <i class="fa-regular fa-user"></i>

            </a>


            <a href="wishlist.jsp"
               class="header-icon">

                <i class="fa-regular fa-heart"></i>

            </a>


            <a href="cart.jsp"
               class="header-icon">

                <i class="fa-solid fa-bag-shopping"></i>

                <span class="cart-count"
                      id="cartCount">

                    0

                </span>

            </a>

        </div>

    </div>


    <!-- MOBILE NAV -->

    <div class="mobile-nav"
         id="mobileNav">

        <a href="index.jsp">Home</a>

        <a href="#categories">Collections</a>

        <a href="#products">Shop</a>

        <a href="#new">New Arrivals</a>

        <a href="#deals">Sale</a>

    </div>

</header>



<!-- =====================================================
     HERO
===================================================== -->

<section class="hero">

    <div class="container">

        <div class="hero-content">

            <div class="hero-small">

                New Season · 2026 Collection

            </div>

            <h1>

                Dress like
                <span>you mean it.</span>

            </h1>

            <p>

                Discover timeless silhouettes, modern essentials
                and statement pieces designed to make every
                moment unforgettable.

            </p>


            <div class="hero-buttons">

                <a href="#products"
                   class="btn btn-dark">

                    Shop Collection

                    <i class="fa-solid fa-arrow-right"></i>

                </a>


                <a href="#categories"
                   class="btn btn-outline">

                    Explore Styles

                </a>

            </div>

        </div>

    </div>

</section>



<!-- =====================================================
     BENEFITS
===================================================== -->

<section class="benefits">

    <div class="container benefit-grid">

        <div class="benefit">

            <i class="fa-solid fa-truck-fast"></i>

            <div>

                <h4>Free Shipping</h4>

                <p>On orders above ₹1,999</p>

            </div>

        </div>


        <div class="benefit">

            <i class="fa-solid fa-rotate-left"></i>

            <div>

                <h4>Easy Returns</h4>

                <p>7 day return policy</p>

            </div>

        </div>


        <div class="benefit">

            <i class="fa-solid fa-shield-halved"></i>

            <div>

                <h4>Secure Payment</h4>

                <p>100% secure checkout</p>

            </div>

        </div>


        <div class="benefit">

            <i class="fa-solid fa-headset"></i>

            <div>

                <h4>24/7 Support</h4>

                <p>We're here to help</p>

            </div>

        </div>

    </div>

</section>



<!-- =====================================================
     CATEGORIES
===================================================== -->

<section class="section"
         id="categories">

    <div class="container">

        <div class="section-header">

            <div class="eyebrow">
                Discover
            </div>

            <h2 class="section-title">
                Shop by Style
            </h2>

            <p class="section-description">
                Find something beautiful for every occasion.
            </p>

        </div>


        <div class="categories">


            <div class="category">

                <img
                    src="https://images.unsplash.com/photo-1595777457583-95e059d581b8?auto=format&fit=crop&w=800&q=85"
                    alt="Dresses">

                <div class="category-overlay">

                    <h3>Dresses</h3>

                    <a href="#products"
                       data-filter="Dresses">

                        Shop Now

                    </a>

                </div>

            </div>


            <div class="category">

                <img
                    src="https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=800&q=85"
                    alt="Tops">

                <div class="category-overlay">

                    <h3>Tops</h3>

                    <a href="#products"
                       data-filter="Tops">

                        Shop Now

                    </a>

                </div>

            </div>


            <div class="category">

                <img
                    src="https://images.unsplash.com/photo-1506629905607-d9c297d6f7c1?auto=format&fit=crop&w=800&q=85"
                    alt="Party Wear">

                <div class="category-overlay">

                    <h3>Party Wear</h3>

                    <a href="#products"
                       data-filter="Party Wear">

                        Shop Now

                    </a>

                </div>

            </div>


            <div class="category">

                <img
                    src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=800&q=85"
                    alt="New Arrivals">

                <div class="category-overlay">

                    <h3>New Arrivals</h3>

                    <a href="#products">

                        Explore

                    </a>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =====================================================
     PRODUCTS
===================================================== -->

<section class="section"
         id="products"
         style="background:#faf9f7;">

    <div class="container">

        <div class="section-header">

            <div class="eyebrow">
                Best Sellers
            </div>

            <h2 class="section-title">
                Trending Now
            </h2>

            <p class="section-description">
                The pieces everyone is talking about.
            </p>

        </div>


        <div class="product-toolbar">

            <div class="filter-buttons">

                <button class="filter-btn active"
                        data-category="All">

                    All

                </button>

                <button class="filter-btn"
                        data-category="Dresses">

                    Dresses

                </button>

                <button class="filter-btn"
                        data-category="Tops">

                    Tops

                </button>

                <button class="filter-btn"
                        data-category="Party Wear">

                    Party Wear

                </button>

                <button class="filter-btn"
                        data-category="Casual">

                    Casual

                </button>

            </div>

        </div>


        <div class="product-grid"
             id="productGrid">

        </div>

    </div>

</section>



<!-- =====================================================
     DEAL
===================================================== -->

<section class="promo"
         id="deals">

    <div class="container">

        <div class="promo-box">

            <div class="promo-image"></div>


            <div class="promo-content">

                <div class="eyebrow">
                    Limited Time
                </div>

                <h2>
                    The perfect
                    evening dress.
                </h2>

                <p>

                    Elegant lines, premium fabric and
                    effortless sophistication. Make your
                    next evening unforgettable.

                </p>

                <div class="promo-price">

                    ₹1,999

                    <span>₹3,499</span>

                </div>

                <div>

                    <button class="btn"
                            style="background:#111;color:white;"
                            id="dealButton">

                        Shop This Look

                        <i class="fa-solid fa-arrow-right"></i>

                    </button>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =====================================================
     COLLECTION
===================================================== -->

<section class="section collection"
         id="new">

    <div class="container">

        <div class="section-header">

            <div class="eyebrow">
                Just Dropped
            </div>

            <h2 class="section-title">
                New Collection
            </h2>

            <p class="section-description">
                Fresh silhouettes for your wardrobe.
            </p>

        </div>


        <div class="collection-grid">


            <div class="collection-item">

                <img
                    src="https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=1000&q=85"
                    alt="Fashion Collection">

                <div class="collection-caption">

                    <h3>Modern Classics</h3>

                    <p>Timeless. Refined. Yours.</p>

                </div>

            </div>


            <div class="collection-item">

                <img
                    src="https://images.unsplash.com/photo-1538805060514-97d9cc17730c?auto=format&fit=crop&w=800&q=85"
                    alt="Women's Fashion">

                <div class="collection-caption">

                    <h3>Weekend Edit</h3>

                    <p>Effortless everyday style</p>

                </div>

            </div>


            <div class="collection-item">

                <img
                    src="https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=800&q=85"
                    alt="Jackets">

                <div class="collection-caption">

                    <h3>Outerwear</h3>

                    <p>Layer up in style</p>

                </div>

            </div>


        </div>

    </div>

</section>



<!-- =====================================================
     REVIEWS
===================================================== -->

<section class="section">

    <div class="container">

        <div class="section-header">

            <div class="eyebrow">
                Reviews
            </div>

            <h2 class="section-title">
                Loved by You
            </h2>

        </div>


        <div class="reviews">


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>

                    "The quality is absolutely beautiful.
                    My dress looked even better in person."

                </p>

                <div class="review-name">
                    Priya S.
                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>

                    "Fast delivery, perfect fit and
                    gorgeous packaging. I'm obsessed!"

                </p>

                <div class="review-name">
                    Ananya R.
                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>

                    "LUXE has become my go-to fashion
                    store. Everything feels premium."

                </p>

                <div class="review-name">
                    Meera K.
                </div>

            </div>


        </div>

    </div>

</section>



<!-- =====================================================
     NEWSLETTER
===================================================== -->

<section class="newsletter">

    <div class="container">

        <div class="eyebrow">
            Stay Updated
        </div>

        <h2>
            Join the LUXE list.
        </h2>

        <p>
            Get first access to new collections,
            exclusive offers and fashion inspiration.
        </p>


        <form class="newsletter-form"
              id="newsletterForm">

            <input
                type="email"
                id="email"
                placeholder="Your email address"
                required>

            <button type="submit">
                Subscribe
            </button>

        </form>

        <div id="newsletterMessage"
             style="margin-top:15px;font-size:13px;">
        </div>

    </div>

</section>



<!-- =====================================================
     FOOTER
===================================================== -->

<footer>

    <div class="container">

        <div class="footer-grid">


            <div>

                <div class="footer-logo">
                    LUXE.
                </div>

                <p class="footer-about">

                    Modern fashion for modern lives.
                    Discover clothing designed with
                    confidence, comfort and timeless style.

                </p>


                <div class="social">

                    <a href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-pinterest-p"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                </div>

            </div>


            <div>

                <div class="footer-title">
                    Shop
                </div>

                <ul class="footer-links">

                    <li>Dresses</li>

                    <li>Tops</li>

                    <li>Party Wear</li>

                    <li>New Arrivals</li>

                    <li>Sale</li>

                </ul>

            </div>


            <div>

                <div class="footer-title">
                    Help
                </div>

                <ul class="footer-links">

                    <li>Contact Us</li>

                    <li>Shipping</li>

                    <li>Returns</li>

                    <li>Size Guide</li>

                    <li>FAQs</li>

                </ul>

            </div>


            <div>

                <div class="footer-title">
                    Account
                </div>

                <ul class="footer-links">

                    <li>
                        <a href="login.jsp">
                            Login
                        </a>
                    </li>

                    <li>
                        <a href="register.jsp">
                            Create Account
                        </a>
                    </li>

                    <li>
                        <a href="wishlist.jsp">
                            Wishlist
                        </a>
                    </li>

                    <li>
                        <a href="cart.jsp">
                            My Cart
                        </a>
                    </li>

                </ul>

            </div>

        </div>


        <div class="copyright">

            © <span id="year"></span>
            LUXE Fashion. All Rights Reserved.

        </div>

    </div>

</footer>



<!-- =====================================================
     SEARCH PANEL
===================================================== -->

<div class="search-panel"
     id="searchPanel">

    <div class="search-box">

        <input
            type="text"
            id="searchInput"
            placeholder="Search dresses, tops, party wear...">

        <button class="close-search"
                id="closeSearch">

            <i class="fa-solid fa-xmark"></i>

        </button>

    </div>

</div>



<script>


/* =====================================================
   PRODUCT DATA
===================================================== */

const PRODUCTS = [

    {
        id: 1,
        name: "Satin Slip Dress",
        category: "Dresses",
        price: 1899,
        oldPrice: 2499,
        rating: 5,
        badge: "Bestseller",
        image:
        "https://images.unsplash.com/photo-1566174053879-31528523f8ae?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 2,
        name: "Floral Summer Dress",
        category: "Dresses",
        price: 1499,
        oldPrice: 1999,
        rating: 5,
        badge: "New",
        image:
        "https://images.unsplash.com/photo-1595777457583-95e059d581b8?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 3,
        name: "Oversized Linen Shirt",
        category: "Tops",
        price: 1199,
        oldPrice: 1599,
        rating: 4,
        badge: "New",
        image:
        "https://images.unsplash.com/photo-1605763240000-7e93b172d754?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 4,
        name: "Elegant Black Dress",
        category: "Party Wear",
        price: 2199,
        oldPrice: 3299,
        rating: 5,
        badge: "Sale",
        image:
        "https://images.unsplash.com/photo-1566174053879-31528523f8ae?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 5,
        name: "Minimal White Top",
        category: "Tops",
        price: 899,
        oldPrice: 1299,
        rating: 4,
        image:
        "https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 6,
        name: "Pleated Midi Dress",
        category: "Dresses",
        price: 1799,
        oldPrice: 2299,
        rating: 5,
        badge: "Trending",
        image:
        "https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 7,
        name: "Weekend Casual Set",
        category: "Casual",
        price: 1299,
        oldPrice: 1699,
        rating: 4,
        image:
        "https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=700&q=85"
    },

    {
        id: 8,
        name: "Premium Evening Gown",
        category: "Party Wear",
        price: 2999,
        oldPrice: 4499,
        rating: 5,
        badge: "Limited",
        image:
        "https://images.unsplash.com/photo-1566174053879-31528523f8ae?auto=format&fit=crop&w=700&q=85"
    }

];



/* =====================================================
   CART
===================================================== */

let cartCount = 0;

const cartCountElement =
    document.getElementById("cartCount");


function addToCart(productId) {

    const product =
        PRODUCTS.find(p => p.id === productId);

    if (!product) return;

    cartCount++;

    cartCountElement.textContent =
        cartCount;

    alert(
        product.name +
        " added to your cart!"
    );
}



/* =====================================================
   RENDER PRODUCTS
===================================================== */

const productGrid =
    document.getElementById("productGrid");


function renderProducts(products) {

    productGrid.innerHTML = "";

    if (products.length === 0) {

        productGrid.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:60px;
                color:#777;
            ">
                No products found.
            </div>
        `;

        return;
    }


    products.forEach(product => {

        const card =
            document.createElement("article");

        card.className =
            "product-card";


        card.innerHTML = `

            <div class="product-image">

                ${
                    product.badge
                    ?
                    `
                    <span class="product-badge
                        ${product.badge === "Sale"
                        ? "sale"
                        : ""}">
                        ${product.badge}
                    </span>
                    `
                    : ""
                }

                <button
                    class="wishlist"
                    aria-label="Wishlist">

                    <i class="fa-regular fa-heart"></i>

                </button>


                <img
                    src="${product.image}"
                    alt="${product.name}"
                    loading="lazy">


                <button
                    class="quick-add"
                    data-id="${product.id}">

                    <i class="fa-solid fa-bag-shopping"></i>

                    ADD TO BAG

                </button>

            </div>


            <div class="product-info">

                <div class="product-category">

                    ${product.category}

                </div>

                <div class="product-name">

                    ${product.name}

                </div>


                <div class="product-rating">

                    ${"★".repeat(product.rating)}

                    <span style="color:#bbb">
                        ${"★".repeat(5-product.rating)}
                    </span>

                </div>


                <div class="price">

                    ₹${product.price.toLocaleString("en-IN")}

                    ${
                        product.oldPrice
                        ?
                        `
                        <span class="old-price">

                            ₹${product.oldPrice
                                .toLocaleString("en-IN")}

                        </span>
                        `
                        : ""
                    }

                </div>

            </div>

        `;


        productGrid.appendChild(card);

    });


    /* ADD TO CART */

    document
        .querySelectorAll(".quick-add")
        .forEach(button => {

            button.addEventListener(
                "click",
                function() {

                    addToCart(
                        Number(this.dataset.id)
                    );

                }
            );

        });


    /* WISHLIST */

    document
        .querySelectorAll(".wishlist")
        .forEach(button => {

            button.addEventListener(
                "click",
                function() {

                    const icon =
                        this.querySelector("i");

                    icon.classList.toggle(
                        "fa-regular"
                    );

                    icon.classList.toggle(
                        "fa-solid"
                    );

                    this.style.color =
                        icon.classList.contains(
                            "fa-solid"
                        )
                        ? "#c65d5d"
                        : "";

                }
            );

        });

}



/* =====================================================
   FILTER PRODUCTS
===================================================== */

document
    .querySelectorAll(".filter-btn")
    .forEach(button => {

        button.addEventListener(
            "click",
            function() {

                document
                    .querySelectorAll(".filter-btn")
                    .forEach(btn =>
                        btn.classList.remove("active")
                    );


                this.classList.add("active");


                const category =
                    this.dataset.category;


                if (category === "All") {

                    renderProducts(PRODUCTS);

                } else {

                    renderProducts(
                        PRODUCTS.filter(
                            product =>
                            product.category === category
                        )
                    );

                }

            }
        );

    });



/* =====================================================
   CATEGORY LINKS
===================================================== */

document
    .querySelectorAll("[data-filter]")
    .forEach(link => {

        link.addEventListener(
            "click",
            function() {

                const filter =
                    this.dataset.filter;


                const button =
                    document.querySelector(
                        `[data-category="${filter}"]`
                    );


                if (button) {

                    button.click();

                }

            }
        );

    });



/* =====================================================
   SEARCH
===================================================== */

const searchPanel =
    document.getElementById("searchPanel");

const searchInput =
    document.getElementById("searchInput");


document
    .getElementById("searchButton")
    .addEventListener(
        "click",
        () => {

            searchPanel.classList.add("show");

            searchInput.focus();

        }
    );


document
    .getElementById("closeSearch")
    .addEventListener(
        "click",
        () => {

            searchPanel.classList.remove("show");

        }
    );


searchPanel.addEventListener(
    "click",
    function(e) {

        if (e.target === searchPanel) {

            searchPanel.classList.remove(
                "show"
            );

        }

    }
);


searchInput.addEventListener(
    "input",
    function() {

        const query =
            this.value.toLowerCase().trim();


        if (!query) {

            renderProducts(PRODUCTS);

            return;

        }


        const results =
            PRODUCTS.filter(product =>

                product.name
                    .toLowerCase()
                    .includes(query)

                ||

                product.category
                    .toLowerCase()
                    .includes(query)

            );


        renderProducts(results);

        searchPanel.classList.remove(
            "show"
        );


        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    }
);



/* =====================================================
   MOBILE MENU
===================================================== */

const mobileButton =
    document.getElementById(
        "mobileMenuBtn"
    );

const mobileNav =
    document.getElementById(
        "mobileNav"
    );


mobileButton.addEventListener(
    "click",
    function() {

        if (
            mobileNav.style.display ===
            "block"
        ) {

            mobileNav.style.display =
                "none";

        } else {

            mobileNav.style.display =
                "block";

        }

    }
);



/* =====================================================
   NEWSLETTER
===================================================== */

document
    .getElementById("newsletterForm")
    .addEventListener(
        "submit",
        function(e) {

            e.preventDefault();


            const email =
                document
                .getElementById("email")
                .value
                .trim();


            const message =
                document.getElementById(
                    "newsletterMessage"
                );


            if (!email) return;


            message.textContent =
                "✓ Thank you! You're now on the LUXE list.";

            message.style.color =
                "#5d8b65";


            this.reset();

        }
    );



/* =====================================================
   DEAL BUTTON
===================================================== */

document
    .getElementById("dealButton")
    .addEventListener(
        "click",
        function() {

            const product =
                PRODUCTS.find(
                    p =>
                    p.name ===
                    "Satin Slip Dress"
                );


            if (product) {

                addToCart(product.id);

            }

        }
    );



/* =====================================================
   YEAR
===================================================== */

document.getElementById(
    "year"
).textContent =
    new Date().getFullYear();



/* =====================================================
   INITIAL LOAD
===================================================== */

renderProducts(PRODUCTS);


</script>

</body>

</html>
```
