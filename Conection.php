
<?php
	  //create connection
		$con = mysqli_connect('localhost','root','','uncover');
		//checking the connection
		if(mysqli_connect_error()){
		die('Databese connection failed'. mysqli_connect_error());
		}
?>