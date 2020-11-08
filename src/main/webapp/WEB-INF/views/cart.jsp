<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Registered Rideouts</h1>
                    <p>All the Registed Rideouts</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
            <div>
                <a class="btn btn-danger pull-left" ng-click="clearCart()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Remove all registrations</a>
            </div>

            <table class="table table-hover">
                <tr>
                    <th>Rideout Title</th>
                    <th>Max Riders</th>
                    <th>Start Date</th>
                    <th>Ride Leader</th>
                    <th>Action</th>
                </tr>
                <tr ng-repeat = "item in cart.cartItems">
                    <td>{{item.product.rideoutTitle}}</td>
                    <td>{{item.product.maxRiders}}</td>
                    <td>{{item.product.startDate}}</td>
                    <td>{{item.product.rideLeader}}</td>
                    <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.rideoutId)">
                        <span class="glyphicon glyphicon-remove"></span>remove</a></td>
                </tr>
            </table>

            <a href="<spring:url value="/" />" class="btn btn-default">Go Back to Home</a>
            </div>
        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>