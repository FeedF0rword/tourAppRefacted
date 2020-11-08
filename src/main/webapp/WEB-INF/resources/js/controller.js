
var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http){

    $scope.refreshCart = function () {
        $http.get('/eMusicStore/rest/cart/'+$scope.cartId).success(function (data) {
           $scope.cart=data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/eMusicStore/rest/cart/'+$scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (rideoutId) {
        $http.put('/eMusicStore/rest/cart/add/'+rideoutId).success(function () {
            alert("Product successfully added to the cart!")
        });
    };

    $scope.removeFromCart = function (rideoutId) {
        $http.put('/eMusicStore/rest/cart/remove/'+rideoutId).success(function (data) {
            $scope.refreshCart();
        });
    };

});