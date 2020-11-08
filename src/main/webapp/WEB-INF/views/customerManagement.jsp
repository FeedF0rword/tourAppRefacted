<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>User List</h1>

            <p class="lead">All the Users!</p>
        </div>

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
                            <a href="<spring:url value="/rideLeader/user/viewUser/${user.customerId}" />"
                            ><span class="glyphicon glyphicon-info-sign"></span></a>
                        </c:if>

                        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                            <a href="<spring:url value="/admin/user/viewUser/${user.customerId}" />"
                            ><span class="glyphicon glyphicon-info-sign"></span></a>

                            <a href="<spring:url value="/admin/user/editUser/${user.customerId}" />"
                            ><span class="glyphicon glyphicon-pencil"></span></a>

                            <a href="<spring:url value="/admin/user/deleteUser/${user.customerId}" />"
                            ><span class="glyphicon glyphicon-remove"></span></a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/register" />" class="btn btn-primary">Add User</a>



<%@include file="/WEB-INF/views/template/footer.jsp" %>