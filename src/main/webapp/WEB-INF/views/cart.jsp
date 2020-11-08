<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Registered Rideouts</h1>
                    <p>All the Registed Rideouts</p>
                </div>
            </div>
        </section>
        ${registrations.customer.userInformation.firstname}
        ${registrations.customer.userInformation.surname}
        <section class="container">
            <table class="table table-hover">
                <tr>
                    <th>Rideout Title</th>
                    <th>Max Riders</th>
                    <th>Start Date</th>
                    <th>Ride Leader</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${registrations.cartItems}" var="rideout">
                    <tr>
                        <td>${rideout.product.rideoutTitle}</td>
                        <td>${rideout.product.maxRiders}</td>
                        <td>${rideout.product.startDate}</td>
                        <td>${rideout.product.rideLeader}</td>
                        <td>
                            <a href="<spring:url value="/rideout/viewRideout/${rideout.product.rideoutId}" />"
                               class="label label-success">
                                <span class="glyphicon glyphicon-info-sign"></span>view</a>

                            <a href="<spring:url value="/resources/remove/${rideout.product.rideoutId}" />"
                               class="label label-danger">
                                <span class="glyphicon glyphicon-remove"></span>remove</a>

                        </td>
                    </tr>
                </c:forEach>
            </table>
            <a href="<spring:url value="/" />" class="btn btn-default">Go Back to Home</a>
        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<%--<script src="<c:url value="/resources/js/controller.js" /> "></script>--%>
<%@include file="/WEB-INF/views/template/footer.jsp" %>