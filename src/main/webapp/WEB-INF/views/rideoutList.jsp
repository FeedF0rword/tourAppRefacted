<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Checkout all the awesome rideouts available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Rideout Title</th>
                <th>Max Riders</th>
                <th>Start Date</th>
                <th>Ride Leader</th>
                <th>Actions</th>
            </tr>
            </thead>
            <c:forEach items="${rideouts}" var="rideout">
                <tr>
                    <td>${rideout.rideoutTitle}</td>
                    <td>${rideout.maxRiders}</td>
                    <td>${rideout.startDate}</td>
                    <td>${rideout.rideLeader}</td>
                    <td><a href="<spring:url value="/rideout/viewRideout/${rideout.rideoutId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
