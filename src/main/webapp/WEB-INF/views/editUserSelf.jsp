<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Update User!</h1>

            <p class="lead">User Information:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/customer/editUser" method="post"
                   commandName="customer" >

        <h3>Login Information</h3>
            <form:hidden path="customerId" value="${customer.customerId}" />
        <div class="form-group">
            <label for="username">Username</label>
            <form:input readonly="true"
                        path="username" value="${customer.username}"
                        id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <form:password path="password" value="${customer.password}"
                           id="password" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="role">Select Role</label>
            <form:select class="form-control" path="role" id="role" name="role">
                <form:option value="ROLE_USER">Rider</form:option>
            </form:select>
        </div>

        <h3>User Information</h3>

        <div class="form-group">
            <label for="firstname">First Name</label>
            <form:input path="userInformation.firstname" value="${customer.userInformation.firstname}"
                        id="firstname" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="surname">Email</label>
            <form:input path="userInformation.surname" value="${customer.userInformation.surname}"
                        id="surname" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="medicalDetails">Medical Details</label>
            <form:textarea class="form-control" id="medicalDetails" value="${customer.userInformation.medicalMd}"
                           rows="3" path="userInformation.medicalMd" />
        </div>

        <h3>User Address</h3>

        <div class="form-group">
            <label for="addressNumber">Number</label>
            <form:input path="userInformation.address.number"
                        value="${customer.userInformation.address.number}"
                        id="addressNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="addressLine1">Address Line 1 </label>
            <form:input path="userInformation.address.addressLine1"
                        value="${customer.userInformation.address.addressLine1}"
                        id="addressLine1" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="addressLine2">Address Line 2</label>
            <form:input path="userInformation.address.addressLine2" id="addressLine2"
                        value="${customer.userInformation.address.addressLine2}" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="addressCity">City</label>
            <form:input path="userInformation.address.city" id="addressCity"
                        value="${customer.userInformation.address.city}" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="addressCountry">Country</label>
            <form:input path="userInformation.address.country" id="addressCountry"
                        value="${customer.userInformation.address.country}" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="PostCode">PostCode</label>
            <form:input path="userInformation.address.postcode"
                        value="${customer.userInformation.address.postcode}" id="PostCode" class="form-Control"/>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col">
                    <label for="inputtelephone">Tele Phone</label>
                    <form:input type="text" class="form-control"
                                path="userInformation.address.telephone"
                                value="${customer.userInformation.address.telephone}"
                                id="inputtelephone" name="telephone"/>
                </div>
                <div class="col">
                    <label for="inputMobile">Mobile Phone</label>
                    <form:input type="text" class="form-control"
                                path="userInformation.address.mobile"
                                value="${customer.userInformation.address.mobile}"
                                id="inputMobile" name="mobile"/>
                </div>
            </div>
        </div>

        <h3>Emergency Contact</h3>

        <div class="form-group">
            <div class="form-row">
                <div class="col">
                    <label for="emergencyContactFirstname">Emergency Contact Firstname</label>
                    <form:input type="text" class="form-control"
                                value="${customer.userInformation.emergencyContactFirstName}"
                                path="userInformation.emergencyContactFirstName"
                                id="emergencyContactFirstname" name="firstname"/>
                </div>
                <div class="col">
                    <label for="emergencyContactSurname">Emergency Contact Sur Name</label>
                    <form:input type="text" class="form-control"
                                value="${customer.userInformation.emergencyContactSurname}"
                                path="userInformation.emergencyContactSurname"
                                id="emergencyContactSurname"/>
                </div>
                <div class="col">
                    <label for="emergencyContactRelation">Emergency Contact Relation</label>
                    <form:input type="text" class="form-control"
                                value="${customer.userInformation.emergencyContactRelationship}"
                                path="userInformation.emergencyContactRelationship"
                                id="emergencyContactRelation"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label for="emergencyAddress">Emergency Contact Address</label>
            <form:textarea class="form-control" id="emergencyAddress"
                           value="${customer.userInformation.emergencyContactAddress}"
                           rows="3" path="userInformation.emergencyContactAddress" />
        </div>

        <h3>Insurance Information</h3>
        <div class="form-row">
            <div class="form-group col">
                <label for="insuranceNo">Insurance Number</label>
                <form:input type="text" class="form-control" path="insuranceInformation.insuranceNo"
                            value="${customer.insuranceInformation.insuranceNo}"
                            id="insuranceNo" name="insuranceNo"/>
            </div>

            <div class="form-group col-md-6">
                <label for="datepicker">Insurance Expiry Date</label>
                <form:input type="text" class="form-control"
                            path="insuranceInformation.expiry_date"
                            id="datepicker"/>
            </div>
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
