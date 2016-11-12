<?php

$con = mysqli_connect("localhost", "root", "root", "webappdb") or die('Unable to Connect');
if(mysqli_connect_error($con))
{
	echo "Failed to connect to Database ".mysqli_connect_error();
}

$query=mysqli_query($con,"SELECT * FROM warden");
if($query)
{
		while($row=mysqli_fetch_array($query))
	{
		$flag[]=$row;
	}
	print(json_encode($flag));
}
mysqli_close($con);
?>