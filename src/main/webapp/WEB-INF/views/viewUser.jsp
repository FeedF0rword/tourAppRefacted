<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h3>Update User!</h3>
            <p class="lead">View User Information:</p>
            <hr>
        </div>

        <form:form action="#" commandName="user" >

        <h4>Login Information</h4>
        <div class="form-group">
            <label for="username">Username</label>
            <form:input readonly="true"
                    path="username" value="${user.username}"
                        id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="role">Role</label>
            <form:input readonly="true" path="role" value="${user.role}"
                        id="role" class="form-Control"/>
        </div>
        <hr>
        <h4>User Information</h4>

        <div class="form-group">
            <label for="firstname">First Name</label>
            <form:input readonly="true" path="userInformation.firstname" value="${user.userInformation.firstname}"
                        id="firstname" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="surname">Sur Name</label>
            <form:input path="userInformation.surname"
                        readonly="true"
                        value="${user.userInformation.surname}"
                        id="surname" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="medicalDetails">Medical Details</label>
            <form:textarea class="form-control" id="medicalDetails"
                           readonly="true"
                           value="${user.userInformation.medicalMd}"
                           rows="3" path="userInformation.medicalMd" />
        </div>
        <hr>
        <h4>User Address</h4>

        <div class="form-group">
            <label for="addressNumber">Number</label>
            <form:input path="userInformation.address.number"
                        readonly="true"
                        value="${user.userInformation.address.number}"
                        id="addressNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="addressLine1">Address Line 1 </label>
            <form:input path="userInformation.address.addressLine1"
                        readonly="true"
                        value="${user.userInformation.address.addressLine1}"
                        id="addressLine1" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="addressLine2">Address Line 2</label>
            <form:input path="userInformation.address.addressLine2" id="addressLine2"
                        readonly="true"
                        value="${user.userInformation.address.addressLine2}" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="addressCity">City</label>
            <form:input path="userInformation.address.city" id="addressCity"
                        readonly="true"
                        value="${user.userInformation.address.city}" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="addressCountry">Country</label>
            <form:input path="userInformation.address.country" id="addressCountry"
                        readonly="true"
                        value="${user.userInformation.address.country}" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="PostCode">PostCode</label>
            <form:input path="userInformation.address.postcode"
                        readonly="true"
                        value="${user.userInformation.address.postcode}" id="PostCode" class="form-Control"/>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col">
                    <label for="inputtelephone">Tele Phone</label>
                    <form:input type="text" class="form-control"
                                readonly="true"
                                path="userInformation.address.telephone"
                                value="${user.userInformation.address.telephone}"
                                id="inputtelephone" name="telephone"/>
                </div>
                <div class="col">
                    <label for="inputMobile">Mobile Phone</label>
                    <form:input type="text" class="form-control"
                                readonly="true"
                                path="userInformation.address.mobile"
                                value="${user.userInformation.address.mobile}"
                                id="inputMobile" name="mobile"/>
                </div>
            </div>
        </div>
        <hr>
        <h4>Emergency Contact</h4>

        <div class="form-group">
            <div class="form-row">
                <div class="col">
                    <label for="emergencyContactFirstname">Emergency Contact Firstname</label>
                    <form:input type="text" class="form-control"
                                readonly="true"
                                value="${user.userInformation.emergencyContactFirstName}"
                                path="userInformation.emergencyContactFirstName"
                                id="emergencyContactFirstname" name="firstname"/>
                </div>
                <div class="col">
                    <label for="emergencyContactSurname">Emergency Contact Sur Name</label>
                    <form:input type="text" class="form-control"
                                readonly="true"
                                value="${user.userInformation.emergencyContactSurname}"
                                path="userInformation.emergencyContactSurname"
                                id="emergencyContactSurname"/>
                </div>
                <div class="col">
                    <label for="emergencyContactRelation">Emergency Contact Relation</label>
                    <form:input type="text" class="form-control"
                                readonly="true"
                                value="${user.userInformation.emergencyContactRelationship}"
                                path="userInformation.emergencyContactRelationship"
                                id="emergencyContactRelation"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="emergencyAddress">Emergency Contact Address</label>
            <form:textarea class="form-control" id="emergencyAddress"
                           readonly="true"
                           value="${user.userInformation.emergencyContactAddress}"
                           rows="3" path="userInformation.emergencyContactAddress" />
        </div>
        <hr>
        <h4>Insurance Information</h4>
        <div class="form-row">
            <div class="form-group col">
                <label for="insuranceNo">Insurance Number</label>
                <form:input type="text" class="form-control" path="insuranceInformation.insuranceNo"
                            readonly="true"
                            value="${user.insuranceInformation.insuranceNo}"
                            id="insuranceNo" name="insuranceNo"/>
            </div>
            <div class="form-group col-md-6">
                <label for="datepicker">Insurance Expiry Date</label>

                <form:input type="text" class="form-control"
                            readonly="true"
                            value="${user.insuranceInformation.expiry_date}"
                            path="insuranceInformation.expiry_date"
                            id="datepicker"/>
            </div>

            <div class="form-group col-md-6">
                <label for="validationInsurance">Insurance Validated</label>

                <form:input type="text" class="form-control"
                            readonly="true"
                            value="${user.insuranceInformation.insuranceVerified}"
                            path="insuranceInformation.insuranceVerified"
                            id="validationInsurance"/>
            </div>
        </div>
        <hr>
        <a href="<c:url value="/" />" class="btn btn-warning">Back To Home</a>
        </form:form>

        <c:if test="${pageContext.request.userPrincipal.name == user.username}">
        <a href="<c:url value="/customer/editUser/${user.customerId}" />"
           class="btn btn-success"> EDIT Details </a>
        </c:if>

        <c:if test="${pageContext.request.isUserInRole('ROLE_LEADER')}">
            <a href="<c:url value="/rideLeader/user/verifyUser/${user.customerId}" />"
               class="btn btn-info"> Verify Insurance </a>

            <a href="<c:url value="/rideLeader/user/unVerifyUser/${user.customerId}" />"
               class="btn btn-danger"> Remove Insurance Verification</a>
        </c:if>
    </div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
