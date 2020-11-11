<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <br>
            <h4>All Rideouts</h4>
            <p class="lead">Checkout all the awesome rideouts available now!</p>
        </div>
        <hr>
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
                    <td>
                        <a href="<spring:url value="/rideout/viewRideout/${rideout.rideoutId}" />"
                        class="btn btn-sm btn-info">
                          View
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<br>
<br><br><br><br><br><br><br><br><br><br>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
