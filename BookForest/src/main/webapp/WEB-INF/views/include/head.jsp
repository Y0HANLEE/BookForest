<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Item - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../../../resources/css/styles.css" rel="stylesheet"/>
         <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../../../resources/js/scripts.js"></script>
        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> 
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
            	<!-- kigi -->
                <a class="navbar-brand" href="/">BookForest[書林]</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="collapse navbar-collapse">
	                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
	                        <!-- <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li> -->
	                        <li class="nav-item dropdown">
	                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
	                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	                                <li><a class="dropdown-item" href="#!">All Products</a></li>
	                                <li><hr class="dropdown-divider" /></li>
	                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
	                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
	                            </ul>
	                        </li>
	                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
	                        <c:if test="">
		                        <li class="nav-item dropdown">
		                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">User</a>
		                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">	                            
		                                <li><a class="dropdown-item" href="#!">${user.name}(${user.userid})</a></li>
		                                <li><hr class="dropdown-divider" /></li>
		                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
		                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
		                            </ul>
		                        </li>
	                        </c:if>
	                        <c:if test="">
		                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
		                        <li class="nav-item"><a class="nav-link" href="#!">Join</a></li>
	                        </c:if>
	                    </ul>
                    </div>
					<form class="d-flex">
                        <button class="btn btn-outline-dark" id="goCart">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
 					                                     
                </div>
            </div>
        </nav>
        <!-- Header-->
		<header class="bg-dark py-5" id="header" style="background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(../resources/assets/img/forest1.jpg); background-size: cover; background-position: center;">
			<div class="container px-4 px-lg-5 my-5">
				<div class="text-center text-white">
					<h1 class="display-4 fw-bolder" id="headerTitle">BookForest[書林]</h1>
					<p class="lead fw-normal text-white-50 mb-0" id="headerIntro">책의 숲에서 길을 잃다</p>
				</div>
			</div>
		</header>
        <script>
        	$(document).ready(function(){
        		$("#goCart").click(function(e){
        			e.preventDefault();
        			alert("!!!");
        			//self.location="/goCart/uno?"+${user.uno};
        		});
        	});
        </script>