<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <h3>User List</h3>
            <p class="lead">All the Users Registered!</p>
        </div>
        <hr>
        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>User Name</th>
                <th>User Role</th>
                <th>User FirstName</th>
                <th>User LastName</th>
                <th>Actions</th>
            </tr>
            </thead>
            <c:forEach items="${customers}" var="user">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.role}</td>
                    <td>${user.userInformation.firstname}</td>
                    <td>${user.userInformation.surname}</td>
                    <td>
                        <c:if test="${pageContext.request.isUserInRole('ROLE_LEADER')}">
                            <a class="btn btn-sm btn-info"
                               href="<spring:url value="/rideLeader/user/viewUser/${user.customerId}" />">
                                View</a>
                        </c:if>

                        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                            <a href="<spring:url value="/admin/user/viewUser/${user.customerId}" />"
                            class="btn btn-sm btn-info">
                                View</a>

                            <a href="<spring:url value="/admin/user/editUser/${user.customerId}" />"
                            class="btn btn-sm btn-warning">
                                Edit</a>

                            <a href="<spring:url value="/admin/user/deleteUser/${user.customerId}" />"
                               class="btn btn-sm btn-danger">Disable</a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <hr>
        <a href="<spring:url value="/register" />" class="btn btn-success">Add User</a>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>