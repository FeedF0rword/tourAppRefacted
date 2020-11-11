<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <h3>Rideout Deatails</h3>
            <p class="lead">Here is the detail information of the Rideout!</p>
            <h5>Title: ${rideout.rideoutTitle}</h5>
        </div>

        <div class="container">
            <hr>
            <div class="row">
                <div class="col-md-4">
                    <h6><strong>State</strong> : ${rideout.rideoutStatus}</h6>

                    <h6>Max Riders: ${rideout.maxRiders}</h6>

                    <br>
                    <h6>Ride Leader: ${rideout.rideLeader}</h6>

                    <br>
                    <h6>Start Date: ${rideout.startDate}</h6>
                    <br>
                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/rideout/rideoutList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/rideoutInventory" />
                    </c:if>
                </div>

                <div class="col-md-4">
                    <h4>Description:</h4>
                    <p>${rideout.rideoutDescription}
                    </p>
                </div>

                <div class="col-md-4">
                    <h4>Rideout Itinerary</h4>
                    <p>
                    ${rideout.rideoutItineary}
                    </p>
                </div>

                <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                        <div class="col-md-12">
                            <table class="table table-striped table-hover">
                                <thead>
                                <tr class="bg-success">
                                    <th>Rider Firstname</th>
                                    <th>Rider Surname</th>
                                    <th>Rider Insurance Verified</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <c:forEach items="${rideout.rideoutItemList}" var="rideoutItem">
                                    <tr>
                                        <td>${rideoutItem.cart.customer.userInformation.firstname}</td>
                                        <td>${rideoutItem.cart.customer.userInformation.surname}</td>
                                        <td>${rideoutItem.cart.customer.insuranceInformation.insuranceVerified}</td>
                                        <td>
                                            <a href="<spring:url value="/admin/user/viewUser/${rideoutItem.cart.customer.customerId}" />">
                                                View
                                                <span class="glyphicon glyphicon-info-sign"></span></a>
                                            <a href="<spring:url value="/admin/user/editUser//${rideoutItem.cart.customer.customerId}" />">
                                                Edit
                                                <span class="glyphicon glyphicon-edit"></span></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                </c:if>
            </div>
            <div class="row">
                <p>
                    <a href="<c:url value="/" />" class="btn btn-default">Back</a>
                        <c:if test="${pageContext.request.isUserInRole('ROLE_USER')}">
                        <a href="<spring:url value="/resources/add/${rideout.rideoutId}" />"
                           class="btn btn-success btn-large">
                            <span class="glyphicon glyphicon-shopping-rideoutRegistration"></span>
                            Register Now</a>
                        <a href="<spring:url value="/customer/cart" />"
                           class="btn btn-default">
                            <span class="glyphicon glyphicon-hand-right"></span>View Registered Rideouts</a>
                    </c:if>
                </p>
            </div>
        </div>
    </div>
</div>

<%--<script src="<c:url value="/resources/js/controller.js" /> "></script>--%>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
