<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 ">
            <div class="login-form">
                <br>
                <br>
                <br>
                <h2 class="">Login Form</h2>

                <p>Use Your username and the password to login Here</p>
                <c:if test="${not empty msg}">
                    <div class="msg">${msg}</div>
                </c:if>
                <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                    <c:if test="${not empty error}">
                        <div class="error" style="color: #ff0000;">${error}</div>
                    </c:if>
                    <div class="form-group">
                        <p>Username</p>
                        <input type="text" id="username" name="username" class="form-control" />
                    </div>
                    <div class="form-group">
                        <p>Password</p>
                        <input type="password" id="password" name="password" class="form-control" />
                    </div>

                    <input type="submit" value="Submit" class="btn btn-default btn-lg btn-block login-btn">

                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </form>
                <p class="text-center small">Don't have an account?
                    <a href="<c:url value="/register" />">Sign up here!</a></p>
            </div>
        </div>

    </div>
</div>

