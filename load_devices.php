<?php
  require_once('Conection.php');

  $device_query = "SELECT * FROM u_device";
  $exicute_device_query = mysqli_query($con,$device_query);
  $row_count = mysqli_num_rows($exicute_device_query);

  $array = [];//create a empty array

  if($row_count>0){
    for($i=0; $i<$row_count;$i++){
      $row = $exicute_device_query->fetch_assoc();
      array_push($array,$row);
    }
  }

  echo json_encode($array);

?>