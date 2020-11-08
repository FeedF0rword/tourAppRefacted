<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Rideout</h1>

            <p class="lead">Fill the below information to add a Rideout:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/rideout/addRideout" method="post"
                   commandName="rideout" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Rideout Title</label> <form:errors path="rideoutTitle" cssStyle="color: #ff0000;" />
            <form:input path="rideoutTitle" id="name" class="form-Control"/>
        </div>


        <div class="form-group">
            <label for="rideoutStatus">Select Role</label>
            <form:select class="form-control" path="rideoutStatus" id="rideoutStatus" name="role">
                <form:option value="PLANNING">Planning</form:option>
                <form:option value="PUBLISHED">Published</form:option>
                <form:option value="FINISHED">Finished</form:option>
            </form:select>
        </div>

        <div class="form-group">
            <label for="maxRiders">Start Date</label>
            <form:input path="startDate" id="maxRiders" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="rideLeader">Ride Leader</label>
            <form:input path="rideLeader" id="rideLeader" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="description">Rideout Description</label>
            <form:textarea class="form-control" id="description"
                           rows="3" path="rideoutDescription" />
        </div>

        <div class="form-group">
            <label for="maxRiders">Max Riders</label>
            <form:errors path="maxRiders" cssStyle="color: #ff0000;" />
            <form:input path="maxRiders" id="maxRiders" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="rideoutItineary">Rideout Itinerary</label>
            <form:textarea class="form-control" id="rideoutItineary"
                           rows="3" path="rideoutItineary" />
        </div>


        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/rideoutInventory" />" class="btn btn-default">Cancel</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
