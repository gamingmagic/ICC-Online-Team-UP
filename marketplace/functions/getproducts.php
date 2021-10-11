<?php 

require_once('./config.php');



$query = "SELECT * from tradeshop  where quantity > '0' ";

$output=array();
$i=1;
$run=mysqli_query($link,$query);
if(mysqli_num_rows($run)>0){
    while($row=mysqli_fetch_array($run)){	
        $temp=array();
        $temp['sr'] = $i;
        $temp['nameid']=$row['nameid'];
        $temp['quantity']=$row['quantity'];
        $temp['cost']=$row['cost'];
        
   
        array_push($output,$temp);
        $i++;
    }
    echo json_encode($output,JSON_UNESCAPED_SLASHES);	
}
else{
    echo "Error";
}












?>