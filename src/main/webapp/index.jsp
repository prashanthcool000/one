```jsp
<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">

    <title>CineBook — Movie Ticket Booking</title>

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

/* =========================================================
   GLOBAL
========================================================= */

:root {

    --black: #101010;
    --dark: #181818;
    --dark2: #222222;

    --white: #ffffff;

    --red: #e50914;
    --red-dark: #b20710;

    --gold: #f4b942;

    --gray: #8c8c8c;

    --light: #f5f5f5;

    --border: #e5e5e5;

    --container: 1250px;

    --radius: 14px;
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


a {

    text-decoration: none;

    color: inherit;
}


button,
input,
select {

    font-family: inherit;
}


.container {

    width: 100%;

    max-width: var(--container);

    margin: auto;

    padding: 0 24px;
}


/* =========================================================
   TOP BAR
========================================================= */

.topbar {

    background: var(--black);

    color: white;

    padding: 8px;

    text-align: center;

    font-size: 12px;

    letter-spacing: .4px;
}


.topbar i {

    color: var(--gold);

    margin-right: 6px;
}


/* =========================================================
   HEADER
========================================================= */

header {

    position: sticky;

    top: 0;

    z-index: 1000;

    background: rgba(16,16,16,.96);

    backdrop-filter: blur(12px);

    border-bottom: 1px solid #2d2d2d;

    color: white;
}


.header {

    height: 76px;

    display: flex;

    align-items: center;

    justify-content: space-between;

    gap: 30px;
}


.logo {

    font-family: "Playfair Display", serif;

    font-size: 30px;

    font-weight: 700;

    letter-spacing: 1px;
}


.logo span {

    color: var(--red);
}


.nav ul {

    display: flex;

    list-style: none;

    gap: 30px;
}


.nav a {

    font-size: 14px;

    color: #ddd;

    transition: .2s;
}


.nav a:hover {

    color: white;
}


.header-actions {

    display: flex;

    align-items: center;

    gap: 18px;
}


.header-icon {

    color: white;

    background: transparent;

    border: 0;

    cursor: pointer;

    font-size: 16px;

    position: relative;
}


.location {

    display: flex;

    align-items: center;

    gap: 7px;

    color: #ddd;

    font-size: 13px;
}


.location i {

    color: var(--red);
}


.mobile-menu {

    display: none;

    background: transparent;

    border: 0;

    color: white;

    font-size: 20px;

    cursor: pointer;
}


/* =========================================================
   HERO
========================================================= */

.hero {

    min-height: 610px;

    background:

        linear-gradient(
            90deg,
            rgba(0,0,0,.92),
            rgba(0,0,0,.35),
            rgba(0,0,0,.2)
        ),

        url("https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=1800&q=90")
        center/cover;

    display: flex;

    align-items: center;

    color: white;
}


.hero-content {

    max-width: 650px;
}


.hero-label {

    color: #ffb4b4;

    font-size: 12px;

    text-transform: uppercase;

    letter-spacing: 3px;

    font-weight: 700;

    margin-bottom: 18px;
}


.hero h1 {

    font-family: "Playfair Display", serif;

    font-size: clamp(48px, 7vw, 80px);

    line-height: 1.05;

    margin-bottom: 20px;
}


.hero h1 span {

    color: #ff3942;
}


.hero p {

    color: #ddd;

    max-width: 560px;

    font-size: 16px;

    margin-bottom: 30px;
}


.hero-buttons {

    display: flex;

    gap: 12px;

    flex-wrap: wrap;
}


.btn {

    border: 0;

    padding: 14px 24px;

    cursor: pointer;

    font-weight: 700;

    display: inline-flex;

    align-items: center;

    justify-content: center;

    gap: 9px;

    transition: .25s;
}


.btn-red {

    background: var(--red);

    color: white;
}


.btn-red:hover {

    background: var(--red-dark);

    transform: translateY(-2px);
}


.btn-outline {

    background: transparent;

    color: white;

    border: 1px solid #777;
}


.btn-outline:hover {

    background: white;

    color: black;
}


/* =========================================================
   BOOKING SEARCH
========================================================= */

.booking-search {

    margin-top: -45px;

    position: relative;

    z-index: 10;
}


.search-box {

    background: white;

    padding: 22px;

    box-shadow: 0 15px 50px rgba(0,0,0,.15);

    display: grid;

    grid-template-columns: 1.5fr 1fr 1fr auto;

    gap: 12px;

    border-radius: 12px;
}


.search-field {

    border: 1px solid var(--border);

    padding: 13px 15px;

    display: flex;

    align-items: center;

    gap: 10px;

    background: #fafafa;
}


.search-field i {

    color: var(--red);
}


.search-field input,
.search-field select {

    border: 0;

    outline: none;

    background: transparent;

    width: 100%;

    font-size: 14px;
}


.search-submit {

    background: var(--red);

    color: white;

    border: 0;

    padding: 0 26px;

    cursor: pointer;

    font-weight: 700;

    border-radius: 5px;
}


/* =========================================================
   SECTION
========================================================= */

.section {

    padding: 85px 0;
}


.section-header {

    display: flex;

    align-items: end;

    justify-content: space-between;

    margin-bottom: 35px;

    gap: 20px;
}


.eyebrow {

    color: var(--red);

    text-transform: uppercase;

    font-size: 11px;

    font-weight: 700;

    letter-spacing: 3px;

    margin-bottom: 7px;
}


.section-title {

    font-family: "Playfair Display", serif;

    font-size: 40px;

    line-height: 1.1;
}


.section-description {

    color: var(--gray);

    font-size: 14px;

    margin-top: 8px;
}


.view-all {

    color: var(--red);

    font-size: 13px;

    font-weight: 700;
}


/* =========================================================
   MOVIE FILTER
========================================================= */

.movie-filters {

    display: flex;

    gap: 8px;

    flex-wrap: wrap;

    margin-bottom: 30px;
}


.filter {

    border: 1px solid var(--border);

    background: white;

    padding: 9px 18px;

    border-radius: 30px;

    cursor: pointer;

    font-size: 12px;

    transition: .2s;
}


.filter:hover,
.filter.active {

    background: var(--red);

    border-color: var(--red);

    color: white;
}


/* =========================================================
   MOVIE GRID
========================================================= */

.movie-grid {

    display: grid;

    grid-template-columns: repeat(4,1fr);

    gap: 22px;
}


.movie-card {

    background: white;

    border-radius: 12px;

    overflow: hidden;

    border: 1px solid var(--border);

    transition: .3s;

    position: relative;
}


.movie-card:hover {

    transform: translateY(-7px);

    box-shadow: 0 20px 45px rgba(0,0,0,.12);
}


.movie-poster {

    aspect-ratio: 2 / 3;

    overflow: hidden;

    position: relative;

    background: #ddd;
}


.movie-poster img {

    width: 100%;

    height: 100%;

    object-fit: cover;

    transition: .45s;
}


.movie-card:hover .movie-poster img {

    transform: scale(1.05);
}


.movie-badge {

    position: absolute;

    top: 12px;

    left: 12px;

    background: var(--red);

    color: white;

    padding: 6px 9px;

    font-size: 10px;

    font-weight: 700;

    z-index: 2;

    text-transform: uppercase;
}


.movie-rating {

    position: absolute;

    top: 12px;

    right: 12px;

    background: rgba(0,0,0,.8);

    color: #ffc107;

    padding: 6px 8px;

    font-size: 11px;

    border-radius: 5px;
}


.movie-info {

    padding: 16px;
}


.movie-name {

    font-weight: 700;

    font-size: 16px;

    margin-bottom: 5px;
}


.movie-meta {

    color: var(--gray);

    font-size: 12px;

    margin-bottom: 14px;
}


.movie-meta span {

    margin-right: 7px;
}


.movie-actions {

    display: flex;

    gap: 8px;
}


.book-btn {

    flex: 1;

    background: var(--black);

    color: white;

    border: 0;

    padding: 10px;

    cursor: pointer;

    font-weight: 700;

    font-size: 12px;
}


.book-btn:hover {

    background: var(--red);
}


.info-btn {

    width: 40px;

    background: white;

    border: 1px solid var(--border);

    cursor: pointer;
}


/* =========================================================
   SHOWTIMES
========================================================= */

.showtimes-section {

    background: #f7f7f7;
}


.showtime-layout {

    display: grid;

    grid-template-columns: 1fr 1.5fr;

    gap: 35px;

    align-items: center;
}


.showtime-poster {

    height: 500px;

    overflow: hidden;
}


.showtime-poster img {

    width: 100%;

    height: 100%;

    object-fit: cover;
}


.showtime-content h2 {

    font-family: "Playfair Display", serif;

    font-size: 48px;

    margin-bottom: 10px;
}


.movie-info-line {

    color: var(--gray);

    font-size: 13px;

    margin-bottom: 20px;
}


.show-date {

    font-size: 12px;

    text-transform: uppercase;

    letter-spacing: 1px;

    font-weight: 700;

    margin-bottom: 12px;
}


.dates {

    display: flex;

    gap: 8px;

    margin-bottom: 25px;
}


.date {

    min-width: 65px;

    border: 1px solid var(--border);

    background: white;

    padding: 9px;

    text-align: center;

    cursor: pointer;
}


.date strong {

    display: block;

    font-size: 16px;
}


.date span {

    font-size: 10px;

    color: var(--gray);
}


.date.active {

    background: var(--red);

    border-color: var(--red);

    color: white;
}


.date.active span {

    color: white;
}


.cinema-name {

    font-weight: 700;

    font-size: 15px;

    margin-bottom: 10px;
}


.showtimes {

    display: flex;

    gap: 9px;

    flex-wrap: wrap;

    margin-bottom: 25px;
}


.time {

    border: 1px solid #bbb;

    background: white;

    padding: 10px 15px;

    cursor: pointer;

    font-size: 12px;

    font-weight: 600;
}


.time:hover,
.time.selected {

    border-color: var(--red);

    color: var(--red);
}


/* =========================================================
   FEATURES
========================================================= */

.features {

    display: grid;

    grid-template-columns: repeat(4,1fr);

    border-top: 1px solid var(--border);

    border-bottom: 1px solid var(--border);
}


.feature {

    padding: 30px 20px;

    display: flex;

    align-items: center;

    gap: 13px;

    border-right: 1px solid var(--border);
}


.feature:last-child {

    border-right: 0;
}


.feature i {

    color: var(--red);

    font-size: 22px;
}


.feature h4 {

    font-size: 13px;

    margin-bottom: 2px;
}


.feature p {

    font-size: 11px;

    color: var(--gray);
}


/* =========================================================
   HOW IT WORKS
========================================================= */

.steps {

    display: grid;

    grid-template-columns: repeat(3,1fr);

    gap: 20px;
}


.step {

    border: 1px solid var(--border);

    padding: 35px;

    text-align: center;
}


.step-number {

    width: 45px;

    height: 45px;

    margin: auto;

    display: grid;

    place-items: center;

    border-radius: 50%;

    background: #fff0f0;

    color: var(--red);

    font-weight: 700;

    margin-bottom: 18px;
}


.step i {

    font-size: 28px;

    color: var(--red);

    margin-bottom: 12px;
}


.step h3 {

    font-size: 17px;

    margin-bottom: 7px;
}


.step p {

    color: var(--gray);

    font-size: 13px;
}


/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter {

    background: var(--black);

    color: white;

    padding: 70px 20px;

    text-align: center;
}


.newsletter h2 {

    font-family: "Playfair Display", serif;

    font-size: 42px;

    margin-bottom: 10px;
}


.newsletter p {

    color: #aaa;

    font-size: 14px;

    margin-bottom: 25px;
}


.newsletter-form {

    max-width: 500px;

    margin: auto;

    display: flex;
}


.newsletter-form input {

    flex: 1;

    padding: 14px;

    border: 0;

    outline: none;
}


.newsletter-form button {

    background: var(--red);

    color: white;

    border: 0;

    padding: 0 25px;

    font-weight: 700;

    cursor: pointer;
}


/* =========================================================
   FOOTER
========================================================= */

footer {

    background: #090909;

    color: white;

    padding: 65px 0 25px;
}


.footer-grid {

    display: grid;

    grid-template-columns: 2fr 1fr 1fr 1fr;

    gap: 45px;

    padding-bottom: 40px;

    border-bottom: 1px solid #292929;
}


.footer-logo {

    font-family: "Playfair Display", serif;

    font-size: 30px;

    margin-bottom: 13px;
}


.footer-logo span {

    color: var(--red);
}


.footer-about {

    color: #888;

    max-width: 330px;

    font-size: 13px;
}


.footer-title {

    text-transform: uppercase;

    letter-spacing: 1px;

    font-size: 12px;

    font-weight: 700;

    margin-bottom: 17px;
}


.footer-links {

    list-style: none;
}


.footer-links li {

    color: #888;

    font-size: 13px;

    margin-bottom: 9px;
}


.footer-links li:hover {

    color: white;

    cursor: pointer;
}


.social {

    display: flex;

    gap: 9px;

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

    color: #666;

    padding-top: 23px;

    font-size: 11px;
}


/* =========================================================
   BOOKING MODAL
========================================================= */

.modal {

    position: fixed;

    inset: 0;

    background: rgba(0,0,0,.75);

    z-index: 3000;

    display: none;

    align-items: center;

    justify-content: center;

    padding: 20px;
}


.modal.show {

    display: flex;
}


.booking-modal {

    width: 100%;

    max-width: 900px;

    max-height: 90vh;

    overflow-y: auto;

    background: white;

    border-radius: 14px;

    padding: 30px;

    position: relative;
}


.close-modal {

    position: absolute;

    top: 18px;

    right: 20px;

    width: 35px;

    height: 35px;

    border: 0;

    border-radius: 50%;

    background: #f3f3f3;

    cursor: pointer;
}


.booking-header {

    margin-bottom: 25px;

    padding-right: 40px;
}


.booking-header h2 {

    font-family: "Playfair Display", serif;

    font-size: 34px;
}


.booking-header p {

    color: var(--gray);

    font-size: 13px;
}


/* SEAT SCREEN */

.screen {

    margin: 10px auto 30px;

    max-width: 500px;

    text-align: center;
}


.screen-line {

    height: 8px;

    background: #ddd;

    border-radius: 50%;

    box-shadow: 0 5px 15px rgba(0,0,0,.15);

    margin-bottom: 8px;
}


.screen span {

    color: #999;

    font-size: 10px;

    letter-spacing: 2px;
}


.seat-layout {

    max-width: 520px;

    margin: auto;
}


.seat-row {

    display: flex;

    justify-content: center;

    gap: 7px;

    margin-bottom: 8px;
}


.seat {

    width: 32px;

    height: 28px;

    border: 0;

    border-radius: 6px 6px 3px 3px;

    background: #ddd;

    font-size: 9px;

    cursor: pointer;
}


.seat:hover {

    background: #bbb;
}


.seat.selected {

    background: var(--red);

    color: white;
}


.seat.booked {

    background: #333;

    color: white;

    cursor: not-allowed;
}


.seat-space {

    width: 18px;
}


/* BOOKING SUMMARY */

.booking-summary {

    margin-top: 30px;

    border-top: 1px solid var(--border);

    padding-top: 25px;

    display: grid;

    grid-template-columns: 1fr auto;

    gap: 20px;

    align-items: end;
}


.summary-details h3 {

    margin-bottom: 8px;
}


.summary-details p {

    color: var(--gray);

    font-size: 13px;

    margin-bottom: 5px;
}


.total {

    font-size: 25px;

    font-weight: 700;

    margin-bottom: 12px;
}


.confirm-btn {

    background: var(--red);

    color: white;

    border: 0;

    padding: 13px 25px;

    cursor: pointer;

    font-weight: 700;
}


/* =========================================================
   SUCCESS MESSAGE
========================================================= */

.success-message {

    text-align: center;

    padding: 50px 20px;

    display: none;
}


.success-message i {

    font-size: 55px;

    color: #28a745;

    margin-bottom: 18px;
}


.success-message h2 {

    font-family: "Playfair Display", serif;

    margin-bottom: 8px;
}


.success-message p {

    color: var(--gray);

    font-size: 14px;
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1050px) {

    .nav {

        display: none;
    }

    .mobile-menu {

        display: block;
    }

    .movie-grid {

        grid-template-columns: repeat(3,1fr);
    }

    .search-box {

        grid-template-columns: 1fr 1fr;

    }

    .search-submit {

        padding: 13px;
    }

    .showtime-layout {

        grid-template-columns: 1fr 1fr;
    }

    .features {

        grid-template-columns: repeat(2,1fr);
    }

    .feature:nth-child(2) {

        border-right: 0;
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

        font-size: 25px;
    }

    .location {

        display: none;
    }

    .hero {

        min-height: 580px;
    }

    .hero h1 {

        font-size: 49px;
    }

    .booking-search {

        margin-top: -25px;
    }

    .search-box {

        grid-template-columns: 1fr;

        padding: 15px;
    }

    .section {

        padding: 60px 0;
    }

    .section-header {

        align-items: flex-start;

        flex-direction: column;
    }

    .section-title {

        font-size: 34px;
    }

    .movie-grid {

        grid-template-columns: repeat(2,1fr);

        gap: 14px;
    }

    .movie-info {

        padding: 12px;
    }

    .movie-name {

        font-size: 14px;
    }

    .showtime-layout {

        grid-template-columns: 1fr;
    }

    .showtime-poster {

        height: 400px;
    }

    .showtime-content h2 {

        font-size: 38px;
    }

    .steps {

        grid-template-columns: 1fr;
    }

    .newsletter-form {

        flex-direction: column;

        gap: 8px;
    }

    .newsletter-form input {

        padding: 14px;
    }

    .newsletter-form button {

        padding: 14px;
    }

}


@media(max-width:480px) {

    .container {

        padding: 0 15px;
    }

    .header-actions {

        gap: 11px;
    }

    .header-actions .desktop-only {

        display: none;
    }

    .hero {

        background-position: 62% center;
    }

    .hero h1 {

        font-size: 42px;
    }

    .movie-grid {

        grid-template-columns: 1fr 1fr;
    }

    .movie-poster {

        aspect-ratio: 2 / 2.8;
    }

    .features {

        grid-template-columns: 1fr;
    }

    .feature {

        border-right: 0;

        border-bottom: 1px solid var(--border);
    }

    .footer-grid {

        grid-template-columns: 1fr;
    }

    .booking-modal {

        padding: 20px 15px;
    }

    .seat {

        width: 27px;

        height: 25px;

        font-size: 8px;
    }

    .seat-row {

        gap: 4px;
    }

    .booking-summary {

        grid-template-columns: 1fr;
    }

}

</style>

</head>


<body>


<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="topbar">

    <i class="fa-solid fa-ticket"></i>

    Book your favorite movies instantly —
    <strong>Fast, Easy & Secure</strong>

</div>



<!-- =========================================================
     HEADER
========================================================= -->

<header>

    <div class="container header">


        <button class="mobile-menu"
                id="mobileMenu">

            <i class="fa-solid fa-bars"></i>

        </button>


        <a href="index.jsp"
           class="logo">

            Cine<span>Book.</span>

        </a>


        <nav class="nav">

            <ul>

                <li>
                    <a href="index.jsp">
                        Home
                    </a>
                </li>

                <li>
                    <a href="#movies">
                        Movies
                    </a>
                </li>

                <li>
                    <a href="#showtimes">
                        Showtimes
                    </a>
                </li>

                <li>
                    <a href="#how">
                        How It Works
                    </a>
                </li>

                <li>
                    <a href="#offers">
                        Offers
                    </a>
                </li>

            </ul>

        </nav>


        <div class="header-actions">


            <div class="location desktop-only">

                <i class="fa-solid fa-location-dot"></i>

                Hyderabad

            </div>


            <button class="header-icon">

                <i class="fa-solid fa-magnifying-glass"></i>

            </button>


            <a href="login.jsp"
               class="header-icon">

                <i class="fa-regular fa-user"></i>

            </a>


            <a href="mybookings.jsp"
               class="header-icon">

                <i class="fa-solid fa-ticket"></i>

            </a>

        </div>

    </div>

</header>



<!-- =========================================================
     HERO
========================================================= -->

<section class="hero">

    <div class="container">

        <div class="hero-content">

            <div class="hero-label">

                Your Cinema Experience

            </div>


            <h1>

                Lights.
                <span>Camera.</span>
                Action.

            </h1>


            <p>

                Discover the latest blockbusters, choose your
                favorite seats and book movie tickets in seconds.

            </p>


            <div class="hero-buttons">

                <a href="#movies"
                   class="btn btn-red">

                    Browse Movies

                    <i class="fa-solid fa-arrow-right"></i>

                </a>


                <a href="#showtimes"
                   class="btn btn-outline">

                    Today's Shows

                </a>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     SEARCH
========================================================= -->

<section class="booking-search">

    <div class="container">

        <div class="search-box">


            <div class="search-field">

                <i class="fa-solid fa-film"></i>

                <input
                    type="text"
                    id="movieSearch"
                    placeholder="Search movie...">

            </div>


            <div class="search-field">

                <i class="fa-solid fa-location-dot"></i>

                <select id="citySelect">

                    <option>Hyderabad</option>

                    <option>Bengaluru</option>

                    <option>Chennai</option>

                    <option>Mumbai</option>

                    <option>Delhi</option>

                </select>

            </div>


            <div class="search-field">

                <i class="fa-regular fa-calendar"></i>

                <input
                    type="date"
                    id="dateSelect">

            </div>


            <button
                class="search-submit"
                id="searchMovies">

                Search Movies

            </button>

        </div>

    </div>

</section>



<!-- =========================================================
     MOVIES
========================================================= -->

<section class="section"
         id="movies">

    <div class="container">


        <div class="section-header">

            <div>

                <div class="eyebrow">
                    Now Showing
                </div>

                <h2 class="section-title">
                    Movies You'll Love
                </h2>

                <p class="section-description">
                    Catch the latest releases on the big screen.
                </p>

            </div>


            <a href="#movies"
               class="view-all">

                View All Movies →

            </a>

        </div>


        <div class="movie-filters">

            <button
                class="filter active"
                data-genre="All">

                All

            </button>

            <button
                class="filter"
                data-genre="Action">

                Action

            </button>

            <button
                class="filter"
                data-genre="Drama">

                Drama

            </button>

            <button
                class="filter"
                data-genre="Comedy">

                Comedy

            </button>

            <button
                class="filter"
                data-genre="Romance">

                Romance

            </button>

            <button
                class="filter"
                data-genre="Thriller">

                Thriller

            </button>

        </div>


        <div class="movie-grid"
             id="movieGrid">

        </div>

    </div>

</section>



<!-- =========================================================
     SHOWTIMES
========================================================= -->

<section class="section showtimes-section"
         id="showtimes">

    <div class="container">

        <div class="showtime-layout">


            <div class="showtime-poster">

                <img
                    src="https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&w=900&q=85"
                    alt="Featured movie">

            </div>


            <div class="showtime-content">

                <div class="eyebrow">
                    Featured Movie
                </div>


                <h2>
                    The Last Horizon
                </h2>


                <div class="movie-info-line">

                    ⭐ 4.8 &nbsp; • &nbsp;
                    Action / Sci-Fi &nbsp; • &nbsp;
                    2h 24m &nbsp; • &nbsp;
                    U/A

                </div>


                <p class="section-description"
                   style="margin-bottom:25px;">

                    A legendary journey begins when a team
                    of explorers discovers a mysterious world
                    beyond the edge of known space.

                </p>


                <div class="show-date">
                    Select Date
                </div>


                <div class="dates">


                    <button class="date active">

                        <strong>02</strong>

                        <span>SEP</span>

                    </button>


                    <button class="date">

                        <strong>03</strong>

                        <span>SEP</span>

                    </button>


                    <button class="date">

                        <strong>04</strong>

                        <span>SEP</span>

                    </button>


                    <button class="date">

                        <strong>05</strong>

                        <span>SEP</span>

                    </button>


                    <button class="date">

                        <strong>06</strong>

                        <span>SEP</span>

                    </button>

                </div>


                <div class="cinema-name">

                    PVR ICON — Hyderabad

                </div>


                <div class="showtimes">


                    <button class="time">
                        10:30 AM
                    </button>

                    <button class="time">
                        01:15 PM
                    </button>

                    <button class="time selected">
                        04:30 PM
                    </button>

                    <button class="time">
                        07:45 PM
                    </button>

                    <button class="time">
                        10:30 PM
                    </button>

                </div>


                <button
                    class="btn btn-red"
                    id="featuredBook">

                    Book Tickets

                    <i class="fa-solid fa-ticket"></i>

                </button>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     FEATURES
========================================================= -->

<section class="container">

    <div class="features">


        <div class="feature">

            <i class="fa-solid fa-ticket"></i>

            <div>

                <h4>Instant Booking</h4>

                <p>Book your seats in seconds</p>

            </div>

        </div>


        <div class="feature">

            <i class="fa-solid fa-couch"></i>

            <div>

                <h4>Choose Your Seat</h4>

                <p>Select your favorite seats</p>

            </div>

        </div>


        <div class="feature">

            <i class="fa-solid fa-shield-halved"></i>

            <div>

                <h4>Secure Payment</h4>

                <p>100% safe transactions</p>

            </div>

        </div>


        <div class="feature">

            <i class="fa-solid fa-mobile-screen-button"></i>

            <div>

                <h4>Digital Tickets</h4>

                <p>Tickets delivered instantly</p>

            </div>

        </div>


    </div>

</section>



<!-- =========================================================
     HOW IT WORKS
========================================================= -->

<section class="section"
         id="how">

    <div class="container">


        <div class="section-header">

            <div>

                <div class="eyebrow">
                    Simple Process
                </div>

                <h2 class="section-title">
                    Book in 3 Easy Steps
                </h2>

            </div>

        </div>


        <div class="steps">


            <div class="step">

                <div class="step-number">
                    01
                </div>

                <i class="fa-solid fa-film"></i>

                <h3>
                    Choose a Movie
                </h3>

                <p>
                    Browse the latest movies and
                    select the one you want to watch.
                </p>

            </div>


            <div class="step">

                <div class="step-number">
                    02
                </div>

                <i class="fa-solid fa-chair"></i>

                <h3>
                    Pick Your Seats
                </h3>

                <p>
                    Select your preferred showtime
                    and choose your seats.
                </p>

            </div>


            <div class="step">

                <div class="step-number">
                    03
                </div>

                <i class="fa-solid fa-ticket"></i>

                <h3>
                    Confirm Booking
                </h3>

                <p>
                    Complete payment and receive
                    your digital movie tickets.
                </p>

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="newsletter"
         id="offers">

    <div class="container">

        <div class="eyebrow"
             style="color:#ff5a61;">

            Exclusive Offers

        </div>


        <h2>
            Never Miss a Movie.
        </h2>


        <p>
            Subscribe and get movie updates,
            early access and exclusive offers.
        </p>


        <form
            class="newsletter-form"
            id="newsletterForm">

            <input
                type="email"
                id="email"
                placeholder="Enter your email"
                required>

            <button type="submit">

                Subscribe

            </button>

        </form>


        <div id="newsletterMessage"
             style="margin-top:12px;font-size:13px;">

        </div>

    </div>

</section>



<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">


        <div class="footer-grid">


            <div>

                <div class="footer-logo">

                    Cine<span>Book.</span>

                </div>


                <p class="footer-about">

                    Your simple and convenient destination
                    for booking movie tickets online.
                    Find movies, select seats and enjoy
                    the show.

                </p>


                <div class="social">

                    <a href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-youtube"></i>
                    </a>

                </div>

            </div>


            <div>

                <div class="footer-title">
                    Movies
                </div>

                <ul class="footer-links">

                    <li>Now Showing</li>

                    <li>Coming Soon</li>

                    <li>Popular Movies</li>

                    <li>Top Rated</li>

                </ul>

            </div>


            <div>

                <div class="footer-title">
                    Support
                </div>

                <ul class="footer-links">

                    <li>Help Center</li>

                    <li>Contact Us</li>

                    <li>Cancellation</li>

                    <li>Refund Policy</li>

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
                            Register
                        </a>
                    </li>

                    <li>
                        <a href="mybookings.jsp">
                            My Bookings
                        </a>
                    </li>

                    <li>
                        <a href="profile.jsp">
                            Profile
                        </a>
                    </li>

                </ul>

            </div>


        </div>


        <div class="copyright">

            © <span id="year"></span>
            CineBook. All Rights Reserved.

        </div>

    </div>

</footer>



<!-- =========================================================
     BOOKING MODAL
========================================================= -->

<div class="modal"
     id="bookingModal">


    <div class="booking-modal">


        <button
            class="close-modal"
            id="closeModal">

            <i class="fa-solid fa-xmark"></i>

        </button>


        <!-- BOOKING AREA -->

        <div id="bookingArea">


            <div class="booking-header">

                <h2 id="bookingMovie">
                    Movie Name
                </h2>

                <p id="bookingInfo">
                    Select your seats
                </p>

            </div>


            <!-- SCREEN -->

            <div class="screen">

                <div class="screen-line"></div>

                <span>
                    SCREEN
                </span>

            </div>


            <!-- SEATS -->

            <div class="seat-layout"
                 id="seatLayout">

            </div>


            <!-- SUMMARY -->

            <div class="booking-summary">


                <div class="summary-details">

                    <h3>
                        Booking Summary
                    </h3>

                    <p>
                        Seats:
                        <strong id="selectedSeats">
                            None
                        </strong>
                    </p>

                    <p>
                        Ticket Price:
                        ₹<span id="ticketPrice">
                            250
                        </span>
                    </p>

                </div>


                <div>

                    <div class="total">

                        ₹<span id="totalPrice">
                            0
                        </span>

                    </div>


                    <button
                        class="confirm-btn"
                        id="confirmBooking">

                        Confirm Booking

                    </button>

                </div>

            </div>


        </div>


        <!-- SUCCESS -->

        <div class="success-message"
             id="successMessage">

            <i class="fa-solid fa-circle-check"></i>

            <h2>
                Booking Confirmed!
            </h2>

            <p>
                Your movie tickets have been booked successfully.
            </p>

            <p style="margin-top:10px;">
                Booking ID:
                <strong id="bookingId"></strong>
            </p>

            <button
                class="btn btn-red"
                style="margin-top:25px;"
                onclick="location.href='mybookings.jsp'">

                View My Bookings

            </button>

        </div>


    </div>

</div>



<script>

/* =========================================================
   MOVIE DATA
========================================================= */

const MOVIES = [

    {
        id: 1,

        name: "The Last Horizon",

        genre: "Action",

        duration: "2h 24m",

        rating: 4.8,

        language: "English",

        price: 250,

        badge: "Featured",

        image:
        "https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&w=700&q=85"

    },


    {
        id: 2,

        name: "Midnight Echo",

        genre: "Thriller",

        duration: "2h 08m",

        rating: 4.6,

        language: "English",

        price: 220,

        badge: "New",

        image:
        "https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=700&q=85"

    },


    {
        id: 3,

        name: "Love in Paris",

        genre: "Romance",

        duration: "2h 15m",

        rating: 4.7,

        language: "Hindi",

        price: 200,

        badge: "Popular",

        image:
        "https://images.unsplash.com/photo-1518929458119-e5bf444c30f4?auto=format&fit=crop&w=700&q=85"

    },


    {
        id: 4,

        name: "Laugh Out Loud",

        genre: "Comedy",

        duration: "1h 52m",

        rating: 4.4,

        language: "Telugu",

        price: 180,

        badge: "Comedy",

        image:
        "https://images.unsplash.com/photo-1595769816263-9b910be24d5f?auto=format&fit=crop&w=700&q=85"

    },


    {
        id: 5,

        name: "Shadow Protocol",

        genre: "Action",

        duration: "2h 31m",

        rating: 4.9,

        language: "English",

        price: 280,

        badge: "Blockbuster",

        image:
        "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=700&q=85"

    },


    {
        id: 6,

        name: "The Forgotten Road",

        genre: "Drama",

        duration: "2h 02m",

        rating: 4.5,

        language: "Hindi",

        price: 190,

        badge: "",

        image:
        "https://images.unsplash.com/photo-1500534623283-312aade485b7?auto=format&fit=crop&w=700&q=85"

    },


    {
        id: 7,

        name: "City Lights",

        genre: "Romance",

        duration: "2h 10m",

        rating: 4.3,

        language: "Telugu",

        price: 180,

        badge: "Trending",

        image:
        "https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=700&q=85"

    },


    {
        id: 8,

        name: "Final Mission",

        genre: "Action",

        duration: "2h 18m",

        rating: 4.7,

        language: "English",

        price: 250,

        badge: "Hit",

        image:
        "https://images.unsplash.com/photo-1543536448-d209d2d13a1c?auto=format&fit=crop&w=700&q=85"

    }

];



/* =========================================================
   ELEMENTS
========================================================= */

const movieGrid =
    document.getElementById("movieGrid");

const bookingModal =
    document.getElementById("bookingModal");

const bookingMovie =
    document.getElementById("bookingMovie");

const bookingInfo =
    document.getElementById("bookingInfo");

const seatLayout =
    document.getElementById("seatLayout");

const selectedSeats =
    document.getElementById("selectedSeats");

const totalPrice =
    document.getElementById("totalPrice");

const ticketPrice =
    document.getElementById("ticketPrice");



/* =========================================================
   RENDER MOVIES
========================================================= */

function renderMovies(movies) {

    movieGrid.innerHTML = "";


    if (movies.length === 0) {

        movieGrid.innerHTML = `

            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:60px;
                color:#888;
            ">

                <i class="fa-solid fa-film"
                   style="
                   font-size:35px;
                   margin-bottom:15px;
                "></i>

                <h3>No movies found</h3>

                <p>
                    Try another search or genre.
                </p>

            </div>

        `;

        return;
    }


    movies.forEach(movie => {

        const card =
            document.createElement("article");


        card.className =
            "movie-card";


        card.innerHTML = `

            <div class="movie-poster">

                ${
                    movie.badge
                    ?
                    `
                    <div class="movie-badge">
                        ${movie.badge}
                    </div>
                    `
                    :
                    ""
                }


                <div class="movie-rating">

                    <i class="fa-solid fa-star"></i>

                    ${movie.rating}

                </div>


                <img
                    src="${movie.image}"
                    alt="${movie.name}"
                    loading="lazy">

            </div>


            <div class="movie-info">

                <div class="movie-name">
                    ${movie.name}
                </div>


                <div class="movie-meta">

                    <span>
                        ${movie.genre}
                    </span>

                    •

                    <span>
                        ${movie.duration}
                    </span>

                    •

                    <span>
                        ${movie.language}
                    </span>

                </div>


                <div class="movie-actions">

                    <button
                        class="book-btn"
                        data-id="${movie.id}">

                        <i class="fa-solid fa-ticket"></i>

                        Book Tickets

                    </button>


                    <button
                        class="info-btn"
                        title="Movie information">

                        <i class="fa-solid fa-info"></i>

                    </button>

                </div>

            </div>

        `;


        movieGrid.appendChild(card);

    });


    document
        .querySelectorAll(".book-btn")
        .forEach(button => {

            button.addEventListener(
                "click",
                function() {

                    openBooking(
                        Number(this.dataset.id)
                    );

                }
            );

        });

}



/* =========================================================
   FILTER
========================================================= */

document
    .querySelectorAll(".filter")
    .forEach(button => {

        button.addEventListener(
            "click",
            function() {

                document
                    .querySelectorAll(".filter")
                    .forEach(btn =>
                        btn.classList.remove("active")
                    );


                this.classList.add("active");


                const genre =
                    this.dataset.genre;


                if (genre === "All") {

                    renderMovies(MOVIES);

                } else {

                    renderMovies(
                        MOVIES.filter(
                            movie =>
                            movie.genre === genre
                        )
                    );

                }

            }
        );

    });



/* =========================================================
   SEARCH
========================================================= */

document
    .getElementById("searchMovies")
    .addEventListener(
        "click",
        searchMovies
    );


document
    .getElementById("movieSearch")
    .addEventListener(
        "keydown",
        function(e) {

            if (e.key === "Enter") {

                searchMovies();

            }

        }
    );


function searchMovies() {

    const query =
        document
        .getElementById("movieSearch")
        .value
        .toLowerCase()
        .trim();


    if (!query) {

        renderMovies(MOVIES);

    } else {

        renderMovies(

            MOVIES.filter(movie =>

                movie.name
                    .toLowerCase()
                    .includes(query)

                ||

                movie.genre
                    .toLowerCase()
                    .includes(query)

                ||

                movie.language
                    .toLowerCase()
                    .includes(query)

            )

        );

    }


    document
        .getElementById("movies")
        .scrollIntoView({
            behavior: "smooth"
        });

}



/* =========================================================
   BOOKING
========================================================= */

let currentMovie = null;

let selectedSeatList = [];

const SEAT_PRICE = 250;


function openBooking(movieId) {

    currentMovie =
        MOVIES.find(
            movie =>
            movie.id === movieId
        );


    if (!currentMovie) return;


    selectedSeatList = [];


    bookingMovie.textContent =
        currentMovie.name;


    bookingInfo.textContent =
        currentMovie.genre +
        " • " +
        currentMovie.duration +
        " • " +
        currentMovie.language;


    ticketPrice.textContent =
        currentMovie.price;


    totalPrice.textContent = "0";


    selectedSeats.textContent =
        "None";


    generateSeats();


    document
        .getElementById("bookingArea")
        .style.display = "block";


    document
        .getElementById("successMessage")
        .style.display = "none";


    bookingModal.classList.add("show");

}



function generateSeats() {

    seatLayout.innerHTML = "";


    const rows = [
        "A",
        "B",
        "C",
        "D",
        "E",
        "F",
        "G"
    ];


    rows.forEach(
        (row, rowIndex) => {

            const rowElement =
                document.createElement(
                    "div"
                );


            rowElement.className =
                "seat-row";


            for (
                let seatNumber = 1;
                seatNumber <= 10;
                seatNumber++
            ) {

                if (seatNumber === 6) {

                    const space =
                        document.createElement(
                            "div"
                        );

                    space.className =
                        "seat-space";

                    rowElement.appendChild(
                        space
                    );

                }


                const seat =
                    document.createElement(
                        "button"
                    );


                const seatId =
                    row + seatNumber;


                seat.className =
                    "seat";


                seat.textContent =
                    seatNumber;


                seat.dataset.seat =
                    seatId;


                /*
                    Demo booked seats
                */

                if (
                    (
                        rowIndex === 0 &&
                        seatNumber === 3
                    )

                    ||

                    (
                        rowIndex === 0 &&
                        seatNumber === 4
                    )

                    ||

                    (
                        rowIndex === 2 &&
                        seatNumber === 7
                    )

                    ||

                    (
                        rowIndex === 4 &&
                        seatNumber === 2
                    )

                    ||

                    (
                        rowIndex === 5 &&
                        seatNumber === 8
                    )
                ) {

                    seat.classList.add(
                        "booked"
                    );

                    seat.disabled = true;

                }


                seat.addEventListener(
                    "click",
                    function() {

                        toggleSeat(
                            this
                        );

                    }
                );


                rowElement.appendChild(
                    seat
                );

            }


            seatLayout.appendChild(
                rowElement
            );

        }
    );

}



/* =========================================================
   SEAT SELECTION
========================================================= */

function toggleSeat(seat) {

    const seatId =
        seat.dataset.seat;


    if (
        seat.classList.contains(
            "selected"
        )
    ) {

        seat.classList.remove(
            "selected"
        );


        selectedSeatList =
            selectedSeatList.filter(
                id => id !== seatId
            );

    } else {

        if (
            selectedSeatList.length >= 6
        ) {

            alert(
                "You can select maximum 6 seats."
            );

            return;

        }


        seat.classList.add(
            "selected"
        );


        selectedSeatList.push(
            seatId
        );

    }


    updateBookingSummary();

}



/* =========================================================
   BOOKING SUMMARY
========================================================= */

function updateBookingSummary() {

    if (
        selectedSeatList.length === 0
    ) {

        selectedSeats.textContent =
            "None";

        totalPrice.textContent =
            "0";

        return;

    }


    selectedSeats.textContent =
        selectedSeatList.join(", ");


    const total =
        selectedSeatList.length *
        currentMovie.price;


    totalPrice.textContent =
        total.toLocaleString("en-IN");

}



/* =========================================================
   CLOSE MODAL
========================================================= */

document
    .getElementById("closeModal")
    .addEventListener(
        "click",
        closeBooking
    );


bookingModal.addEventListener(
    "click",
    function(e) {

        if (
            e.target ===
            bookingModal
        ) {

            closeBooking();

        }

    }
);


function closeBooking() {

    bookingModal.classList.remove(
        "show"
    );

}



/* =========================================================
   CONFIRM BOOKING
========================================================= */

document
    .getElementById("confirmBooking")
    .addEventListener(
        "click",
        function() {

            if (
                selectedSeatList.length === 0
            ) {

                alert(
                    "Please select at least one seat."
                );

                return;

            }


            const bookingId =
                "CB" +
                Date.now()
                    .toString()
                    .slice(-8);


            document.getElementById(
                "bookingId"
            ).textContent =
                bookingId;


            document.getElementById(
                "bookingArea"
            ).style.display =
                "none";


            document.getElementById(
                "successMessage"
            ).style.display =
                "block";

        }
    );



/* =========================================================
   FEATURED BOOKING
========================================================= */

document
    .getElementById("featuredBook")
    .addEventListener(
        "click",
        function() {

            openBooking(1);

        }
    );



/* =========================================================
   DATE BUTTONS
========================================================= */

document
    .querySelectorAll(".date")
    .forEach(button => {

        button.addEventListener(
            "click",
            function() {

                document
                    .querySelectorAll(".date")
                    .forEach(
                        btn =>
                        btn.classList.remove(
                            "active"
                        )
                    );


                this.classList.add(
                    "active"
                );

            }
        );

    });



/* =========================================================
   SHOWTIME BUTTONS
========================================================= */

document
    .querySelectorAll(".time")
    .forEach(button => {

        button.addEventListener(
            "click",
            function() {

                document
                    .querySelectorAll(".time")
                    .forEach(
                        btn =>
                        btn.classList.remove(
                            "selected"
                        )
                    );


                this.classList.add(
                    "selected"
                );

            }
        );

    });



/* =========================================================
   NEWSLETTER
========================================================= */

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
                "✓ Thanks! Movie updates are now coming your way.";


            message.style.color =
                "#65c982";


            this.reset();

        }
    );



/* =========================================================
   MOBILE MENU
========================================================= */

document
    .getElementById("mobileMenu")
    .addEventListener(
        "click",
        function() {

            const nav =
                document.querySelector(
                    ".nav"
                );


            if (
                nav.style.display ===
                "block"
            ) {

                nav.style.display =
                    "none";

            } else {

                nav.style.display =
                    "block";

                nav.style.position =
                    "absolute";

                nav.style.top =
                    "65px";

                nav.style.left =
                    "0";

                nav.style.right =
                    "0";

                nav.style.background =
                    "#101010";

                nav.style.padding =
                    "20px";

            }

        }
    );



/* =========================================================
   YEAR
========================================================= */

document.getElementById(
    "year"
).textContent =
    new Date().getFullYear();



/* =========================================================
   INITIALIZE
========================================================= */

renderMovies(MOVIES);


</script>

</body>

</html>
```
