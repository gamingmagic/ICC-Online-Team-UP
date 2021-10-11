

<?php
require_once('functions/config.php');
session_start();

if(isset($_SESSION['account_id'])){
    $accid  = $_SESSION['account_id'];
    $query2 = "SELECT `balance` FROM `cp_credits` WHERE `account_id` = '". $accid."' " ;

    $runu=mysqli_query($link,$query2);
    $rowu=mysqli_fetch_array($runu);
    $balance=$rowu['balance'];
    // echo $balance;
    
}


?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Page </title>

    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">


<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.js" type="text/javascript"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.28//angular-route.min.js"></script>

<link rel="stylesheet" href="styleproduct.css">

</head>
<body ng-app="myApp" ng-controller="myController" ng-init="getproducts()">
    <div class="container">
        <br/>
        <?php 
            if(isset($balance))
            {
        ?>
            <h3 class="text-white"> Your balance is $<?php echo($balance);?></h3>
        <?php
            }
        ?>
        <?php 
            $i=1;
        ?>
        <div class=" table-responsive py-5 w-75"> 
            <table class="table table-bordered table-hover">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Name Id</th>
                  <th scope="col">Quantity</th>
                  <th scope="col">Cost</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                <tr ng-repeat="product in products">
                  <th scope="row">{{product.sr}}</th>
                  <td>{{product.nameid}}</td>
                  <td>{{product.quantity}}</td>
                  <td>{{product.cost}}</td>
                  <td><a href="checkout.php?pid={{product.nameid}}" class="btn btn-primary">Buy</a></td>
                </tr>
            
              </tbody>
            </table>
        </div>
    </div>

		<script>
var app = angular.module('myApp', []);
app.controller('myController', function($scope, $http,$window,$location){
//start controller

$scope.getproducts = () =>{
    $http.get("functions/getproducts.php")
  .then(function(response) {
    console.log(response.data);
    $scope.products = response.data
  });
}




});

</script>
</body>
</html>