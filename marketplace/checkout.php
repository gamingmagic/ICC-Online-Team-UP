<!--
    /*

    ** Copyright (c) JowieJesoro. All rights reserved.

    *   Developed By Ark Crew
    *   Software Company
    *
    *   https://www.ark-crew.com
    **  contact@ark-crew.com 
    
    */
-->

<?php
require_once('functions/config.php');
session_start();

if(isset($_SESSION['account_id'])){
    $accountid = $_SESSION['account_id'];
    $queryuser ="select * from login LEFT JOIN cp_credits on login.account_id = cp_credits.account_id where login.account_id = '$accountid' ";
    $runuser=mysqli_query($link,$queryuser);
    $rowuser=mysqli_fetch_array($runuser);
    $balance=$rowuser['balance'];
    // echo $balance;
    
}
else{
    header('Location: index.php');
}



if(isset($_GET['pid']))
{
    $pid = $_GET['pid'];
    $query ="select * from tradeshop where nameid = '$pid' ";
    $run=mysqli_query($link,$query);
    $row=mysqli_fetch_array($run);
    
    $cost = $row['cost'];
    $sellerid = $row['account_id'];

    
    
    
}
else{
    header('Location: product.php');
}

?>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Halaman Login</title>
        <link rel="stylesheet" href="style.css">
    </head>
   
    <body>
        <div class="container"  ng-app="myApp" ng-controller="myCtrl">
          <h1>Checkout</h1>
            <form ng-submit="checkout()">
             <center>   <label class="h11">Cost</label><br>  <br>
                    <h3 class="h11"><?php echo $cost; ?></h3>
    <br>
                    <hr><br>
                    <label class="h11">Balance</label><br>
                    <br>
                    <h3 class="h11"><?php echo $balance; ?></h3><br><br></center>
                <button>Proceed To Purchase</button>
            </form>
        </div>    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>


<script>
    $msg="";
    $flag="";
    var app = angular.module('myApp', []);
    app.controller('myCtrl', function($scope, $http, $window) {
        $scope.accountid='<?php echo $accountid;?>'  ; 
        $scope.balance='<?php echo $balance;?>'  ; 
        $scope.cost='<?php echo $cost;?>'  ;  
        $scope.pid='<?php echo $pid;?>'  ;
        $scope.sellerid='<?php echo $sellerid;?>'  ;

        $scope.balance = parseInt($scope.balance);
        $scope.cost = parseInt($scope.cost);
        $scope.checkout=function(){
            if($scope.balance >= $scope.balance){
                $http.post(
                "functions/checkout.php",
                {
                    'accountid':$scope.accountid,
                    'balance':  $scope.balance,
                    'cost':    $scope.cost,
                    'pid':      $scope.pid,
                    'sellerid': $scope.sellerid       
                }
                ).then(function(response){
                    
                    console.log(response);
                    
                   // $scope.response = response.data;
                   $scope.response=$.trim(response.data);
                    if($scope.response =="yes"){
                        $msg ="Thank you for the purchase";
                        $flag ="success"; 
                        swal($msg, "", $flag);
                        $window.location.href="product.php";
                    }
                    else if($scope.response == "outofbal"){
                        $msg ="Insufficent Balance";
                        $flag ="error"; 
                        swal($msg, "", $flag);
           
                    }
                    else if($scope.response == "not_active"){
                        $scope.msg= "Account is not activated";
                        $msg ="Account is not activated";
                        $flag ="error"; 
                        swal($msg, "", $flag);
                    }
                    else{
                        $scope.msg= "Error: Out of Balance";
                        $msg ="Out of Balance";
                        $flag ="error"; 
                        swal($msg, "", $flag);
                    
                    }
                });

            }
            else{
                $msg ="Please add your Credits";
                $flag ="error"; 
                swal($msg, "", $flag);
                
            }
           
            
        }
        
    });
</script>

</body>
</html>
