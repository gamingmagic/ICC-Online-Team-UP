<?php
require('config.php');
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $output=array();
    $logindata=json_decode(file_get_contents("php://input"));
    $accountid=$logindata->accountid;
    $balance=$logindata->balance;
    $cost=$logindata->cost;
    $pid=$logindata->pid;
    $sellerid = $logindata->sellerid;

    $sellerbal = 0;
    $floatcost = floatval($cost);
    $fee = (($floatcost)*10 ) /100;
    $price = $floatcost + $fee;
    $userremaining = floatval($balance) - $price;
    if($userremaining >= 0.00){
        // $val = "outofbal";
        // echo $val;
        // return;
    
    
        $sellerquery = "SELECT `balance` FROM `cp_credits` WHERE `account_id` = '$sellerid' ";
        $run1=mysqli_query($link,$sellerquery);
        if($run1){
            $data1= mysqli_fetch_object($run1);
            $sellerbal = $data1->balance;
            $sellerbalance= floatval($sellerbal) + $floatcost;
            
        }
        else
        {
            echo "error: Cannot buy right now, please come later";
            return;
        }
        $updatequery = "UPDATE `tradeshop` SET `quantity` = (`quantity`-1), `sold` = (`sold`+1), sold_date = NOW()  WHERE `nameid` = '$pid'";

        $updateUserBalance = "UPDATE `cp_credits` SET `balance` = '$userremaining' WHERE `account_id` = '$accountid'";

        $updateBuyerBalance = "UPDATE `cp_credits` SET `balance` = '$sellerbalance'  WHERE `account_id` = '$sellerid' ";

        if(mysqli_query($link,$updatequery)){
            if(mysqli_query($link,$updateUserBalance)){
                if(mysqli_query($link,$updateBuyerBalance)){

                    echo "yes";
                }
                else{
                    echo "error in seller";
                }

            }
            else{
                echo "error in buyer";
            }  
        }
        else{
            echo "error in update";
        }

    }
    else
    {
        echo "outofbal";
    }
}
?>