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
            }


            seatLayout.appendChild(
                rowElement
            );

        }
    );

}



/* =========================================================
   SEAT SELECTION
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
