<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <h3>Add Feedback!</h3>
        </div>
        <hr>
        <form:form action="${pageContext.request.contextPath}/resources/addFeedback" method="post"
                   commandName="rideout" >

            <h4>Login Information</h4>
            <form:hidden path="cartItemId" value="${rideout.cartItemId}" />
            <div class="form-group">
                <label for="username">Rideout Name</label>
                <input readonly="true"
                            value="${rideout.product.rideoutTitle}"
                            id="username" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="emergencyAddress">Emergency Contact Address</label>
                <form:textarea class="form-control" id="emergencyAddress"
                               value="${rideout.feedback}"
                               rows="3" path="rideout.feedback" />
            </div>

            <hr>
            <input type="submit" value="Submit" class="btn btn-success">
            <a href="<c:url value="/" />" class="btn btn-warning">Cancel</a>
        </form:form>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
