<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Rideouts List Page</h1>

            <p class="lead">This Lists All the Rideouts!</p>
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
                        ><span class="glyphicon glyphicon-info-sign"></span></a>

                        <c:if test="${pageContext.request.isUserInRole('ROLE_LEADER')}">
                            <a href="<spring:url value="/rideLeader/rideout/editRideout/${rideout.rideoutId}" />"
                            ><span class="glyphicon glyphicon-pencil"></span></a>
                        </c:if>

                        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                            <a href="<spring:url value="/admin/rideout/editRideout/${rideout.rideoutId}" />"
                            ><span class="glyphicon glyphicon-pencil"></span></a>

                            <a href="<spring:url value="/admin/rideout/deleteRideout/${rideout.rideoutId}" />"
                            ><span class="glyphicon glyphicon-remove"></span></a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
            <a href="<spring:url value="/admin/rideout/addRideout" />" class="btn btn-primary">Add Rideout</a>
        </c:if>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
