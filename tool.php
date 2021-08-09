<?php
  require_once('Conection.php');

  $query = "SELECT * FROM u_tool_varsion AS tv INNER JOIN u_tool AS t ON tv.tool_id = t.id JOIN u_model_tool AS mt ON mt.tool_id = t.id WHERE tv.varsions_id = '".$_POST['version_no']."' AND mt.model_id = '".$_POST['model_no']."'";
  
  //Display the jailbreak tools in this query

  $exicute_query = mysqli_query($con,$query);
  $row_count = mysqli_num_rows($exicute_query);

  $array = [];//create a empty array

  if($row_count>0){
    for($i=0; $i<$row_count;$i++){
      $row = $exicute_query->fetch_assoc();
      array_push($array,$row);
    }
  }

  if(!empty($array)){
    echo json_encode($array);
  }else{
    echo json_encode(['message'=>0]);
  }
  

?>