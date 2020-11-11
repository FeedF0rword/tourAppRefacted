<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Registered Rideouts</h1>
                    <p>All the Registed Rideouts</p>
                    <hr>
                    <h4>First Name: ${registrations.customer.userInformation.firstname}</h4>
                    <h4>Last Name:  ${registrations.customer.userInformation.surname}</h4>
                </div>
            </div>
        </section>
        <section class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Rideout Title</th>
                        <th>Max Riders</th>
                        <th>Start Date</th>
                        <th>Ride Leader</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <c:forEach items="${registrations.cartItems}" var="rideout">
                    <tr>
                        <td>${rideout.product.rideoutTitle}</td>
                        <td>${rideout.product.maxRiders}</td>
                        <td>${rideout.product.startDate}</td>
                        <td>${rideout.product.rideLeader}</td>
                        <td>
                            <a href="<spring:url value="/rideout/viewRideout/${rideout.product.rideoutId}" />"
                               class="btn btn-sm btn-success">View</a>

                            <a href="<spring:url value="/resources/remove/${rideout.product.rideoutId}" />"
                               class="btn btn-sm btn-danger">Remove</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <a href="<spring:url value="/" />" class="btn btn-info">Go Back to Home</a>
        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>