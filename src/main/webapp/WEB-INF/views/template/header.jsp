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

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/modern-business.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <!-- Angular JS -->
    <%--    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>--%>

    <!-- Bootstrap core CSS -->
    <%--    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">--%>

    <%--    <!-- Carousel CSS -->--%>
    <%--    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">--%>

</head>
<!-- NAVBAR
================================================== -->
<body>
<%----%>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="<c:url value="/"/>">Motorcycle<b>Tours</b></a>
        <button class="navbar-toggler navbar-toggler-right" type="button"
                data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="<c:url value="/"/>" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="<c:url value="/rideout/rideoutList" />" class="nav-link">Rideouts</a>
                </li>
            </ul>
            <div class="navbar-nav ml-auto ">
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <a  class="nav-link">Welcome: ${pageContext.request.userPrincipal.name}</a>
                    <a  class="nav-link" href="<c:url value="/j_spring_security_logout" />">Logout</a>
                    <%-- check user role --%>
                    <c:if test="${pageContext.request.isUserInRole('ROLE_USER')}">
                        <a  class="nav-link" href="<c:url value="/customer/viewUser" />">User Details</a>
                        <a  class="nav-link" href="<c:url value="/customer/cart" />">Registered Rideouts</a>
                    </c:if>

                    <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                        <a  class="nav-link" href="<c:url value="/admin" />">Admin</a>
                    </c:if>

                    <c:if test="${pageContext.request.isUserInRole('ROLE_LEADER')}">
                        <a  class="nav-link" href="<c:url value="/rideLeader" />">Ride Leader</a>
                    </c:if>

                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name  == null}">
                    <a  class="nav-link" href="<c:url value="/login/" />">Login</a>
                    <a  class="nav-link" href="<c:url value="/register" />">Register</a>
                </c:if>
            </div>
        </div>
    </div>
</nav>