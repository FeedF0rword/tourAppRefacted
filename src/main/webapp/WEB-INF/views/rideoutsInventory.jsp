<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>Rideouts List Page</h3>
            <p >This Lists All the Rideouts!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Rideout Title</th>
                <th>Max Riders</th>
                <th>Start Date</th>
                <th>Actions</th>
            </tr>
            </thead>
            <c:forEach items="${rideouts}" var="rideout">
                <tr>
                    <td>${rideout.rideoutTitle}</td>
                    <td>${rideout.maxRiders}</td>
                    <td>${rideout.startDate}</td>
                    <td>
                        <a href="<spring:url value="/rideout/viewRideout/${rideout.rideoutId}" />"
                        class="btn btn-sm btn-info">
                            View

                        <c:if test="${pageContext.request.isUserInRole('ROLE_LEADER')}">
                            <a href="<spring:url value="/rideLeader/rideout/editRideout/${rideout.rideoutId}" />"
                            class="btn btn-sm btn-warning">
                                Edit
                            </a>
                        </c:if>

                        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                            <a href="<spring:url value="/admin/rideout/editRideout/${rideout.rideoutId}" />"
                            class="btn btn-sm btn-warning">
                                Edit
                            </a>
                            <a href="<spring:url value="/admin/rideout/deleteRideout/${rideout.rideoutId}" />"
                            class="btn btn-sm btn-danger">
                                Delete
                            </a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
            <a href="<spring:url value="/admin/rideout/addRideout" />" class="btn btn-primary">Add Rideout</a>
        </c:if>
    </div>

</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
