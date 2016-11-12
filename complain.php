<?php
    $con = mysqli_connect("localhost", "root", "root", "webappdb");
   
     $name = $_POST["name"];
	$username = $_POST["username"];
	$receipt = $_POST["receipt"];
	$hostel_block = $_POST["hostel_block"];
    $room_no = $_POST["room_no"];
    $subject = $_POST["subject"];
	$message = $_POST["message"];
    $statement = mysqli_prepare($con, "INSERT INTO complaint_details ( C_From_Reg, C_From_Name, Hostel_Block, Room_No, To_warden_id, Subject, Message) VALUES (?, ?, ?, ?, ?, ?, ?)");
    mysqli_stmt_bind_param($statement, "sssisss", $username, $name, $hostel_block, $room_no, $receipt, $subject, $message);
    mysqli_stmt_execute($statement);
    
    $response = array();
    $response["success"] = true;  
    
    echo json_encode($response);
?>