<?php
  require_once('Conection.php');

  $model_query = "SELECT * FROM u_model WHERE device_id = '".$_POST['device_id']."' ORDER BY m_id DESC";
  // 
  $exicute_model_query = mysqli_query($con,$model_query);
  $row_count = mysqli_num_rows($exicute_model_query);

  $array = [];//create a empty array

  if($row_count>0){
    for($i=0; $i<$row_count;$i++){
      $row = $exicute_model_query->fetch_assoc();
      array_push($array,$row);
    }
  }

  echo json_encode($array);

?>