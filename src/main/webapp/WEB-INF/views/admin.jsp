
<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <h1>Administrator page</h1>
            <p class="lead">This is the administrator page!</p>
        </div>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <div class="jumbotron">
            <h1 class="display-4">Welcome: ${pageContext.request.userPrincipal.name}!</h1>
            <p class="lead">
                User: ${pageContext.request.userPrincipal.name} | <a href="<c:url
                value="/j_spring_security_logout" />">Logout here</a>
            </p>
        </div>
        </c:if>
        <hr>
        <h4>
            <a href="<c:url value="/admin/rideoutInventory" />" >Rideout Inventory</a>
        </h4>
        <p>Here you can view, check and modify the Rideouts!</p>
        <hr>
        <h4>
            <a href="<c:url value="/admin/userInventory" />" >User Inventory</a>
        </h4>
        <p>Here you can view, check and modify the Users!</p>
        <hr>
    </div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>

