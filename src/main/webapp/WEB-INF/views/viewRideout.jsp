<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Rideout Deatails</h1>

            <p class="lead">Here is the detail information of the Rideout!</p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <p>
                        <h4>Rideout Itinerary</h4>
                        ${rideout.rideoutItineary}
                    </p>
                </div>

                <div class="col-md-5">
                    <h3>Title: ${rideout.rideoutTitle}</h3>
                    <p>Description: <br>
                        ${rideout.rideoutDescription}</p>
                    <p>
                        <strong>State</strong> : ${rideout.rideoutStatus}
                    </p>

                    <h4>Max Riders: ${rideout.maxRiders}</h4>

                    <br>
                    <h4>Ride Leader: ${rideout.rideLeader}</h4>

                    <br>
                    <h4>Start Date: ${rideout.startDate}</h4>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/rideout/rideoutList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/rideoutInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value="/" />" class="btn btn-default">Back</a>
                        <c:if test="${pageContext.request.isUserInRole('ROLE_USER')}">
                            <a href="<spring:url value="/resources/add/${rideout.rideoutId}" />"
                               class="btn btn-success btn-large">
                                <span class="glyphicon glyphicon-shopping-rideoutRegistration"></span>
                                Register Now</a>
                            <a href="<spring:url value="/customer/cart" />"
                               class="btn btn-default">
                                <span class="glyphicon glyphicon-hand-right"></span>View Registed Rideouts</a>
                        </c:if>
                    </p>
                </div>
            </div>
        </div>



        <script src="<c:url value="/resources/js/controller.js" /> "></script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
