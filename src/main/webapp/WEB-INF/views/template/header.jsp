<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Mortercycle Tour App</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a href="<c:url value="/"/>" class="navbar-brand">Motorcycle<b>Tours</b></a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
            <div class="navbar-nav">
                <a href="<c:url value="/"/>" class="nav-item nav-link">Home</a>
                <a href="<c:url value="/rideout/rideoutList" />" class="nav-item nav-link">Rideouts</a>
            </div>
            <div class="navbar-nav ml-auto ">
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <a>Welcome: ${pageContext.request.userPrincipal.name}</a>
                    <a href="<c:url value="/j_spring_security_logout" />">Logout</a>
                    <%-- check user role --%>
                    <c:if test="${pageContext.request.isUserInRole('ROLE_USER')}">
                        <a href="<c:url value="/customer/viewUser" />">User Details</a>
                        <a href="<c:url value="/customer/cart" />">Registered Rideouts</a>
                    </c:if>

                    <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                        <a href="<c:url value="/admin" />">Admin</a>
                    </c:if>

                    <c:if test="${pageContext.request.isUserInRole('ROLE_LEADER')}">
                        <a href="<c:url value="/rideLeader" />">Ride Leader</a>
                    </c:if>

                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name  == null}">
                    <a href="<c:url value="/login/" />">Login</a>
                    <a href="<c:url value="/register" />">Register</a>
                </c:if>

            </div>
        </div>
    </nav>
</div>