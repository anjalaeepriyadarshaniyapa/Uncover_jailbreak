<?php
  require_once('Conection.php');

  $modele_query = "SELECT * FROM u_model WHERE m_id = '".$_POST['model_id']."'";
  $exicute_modele_query = mysqli_query($con,$modele_query);
  $row_count = mysqli_num_rows($exicute_modele_query);

  $model_array = [];//create a empty array

  if($row_count>0){
    for($i=0; $i<$row_count;$i++){
      $row = $exicute_modele_query->fetch_assoc();
      array_push($model_array,$row);
    }
  }

  $start_version = $model_array[0]["start_varsion"];
  $end_version = $model_array[0]["end_varsion"];

  $version_query = "SELECT * FROM u_versions WHERE id BETWEEN '".$start_version."' AND '".$end_version."' ORDER BY id DESC";
  $exicute_version_query = mysqli_query($con,$version_query);
  $row_count = mysqli_num_rows($exicute_version_query);

  $version_array = [];

  if($row_count>0){
    for($i=0;$i<$row_count;$i++){
      $row = $exicute_version_query->fetch_assoc();
      array_push($version_array,$row);
    }
  }

  echo json_encode($version_array);

  //print_r($array);
?>