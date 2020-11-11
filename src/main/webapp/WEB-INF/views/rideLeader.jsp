
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <h2>Ride Leader page</h2>
            <p class="lead">This is the Ride Leader!</p>
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
        <h3>
            <a href="<c:url value="/rideLeader/rideoutInventory" />" >Rideout Inventory</a>
        </h3>
        <p>Here you can view, check and modify the Rideouts!</p>
        <hr>
        <h3>
            <a href="<c:url value="/rideLeader/userInventory" />" >User Inventory</a>
        </h3>
        <hr>
        <p>Here you can view, check Users!</p>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>

