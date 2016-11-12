<?php
    $con = mysqli_connect("localhost", "root", "root", "webappdb");
    
    $username = $_POST["username"];
    $password = $_POST["password"];
    $tablename = $_POST["r_name"];	
    
    $statement = mysqli_prepare($con, "SELECT * FROM `$tablename` WHERE username = ? AND password = ?");
    mysqli_stmt_bind_param($statement, "ss", $username, $password);
    mysqli_stmt_execute($statement);
    
    mysqli_stmt_store_result($statement);
    mysqli_stmt_bind_result($statement, $userID, $name, $username, $age, $hostel_block, $room_no, $gender, $contact, $email, $password);
    
    $response = array();
    $response["success"] = false;  
    
    while(mysqli_stmt_fetch($statement)){
        $response["success"] = true;  
        $response["name"] = $name;
        $response["age"] = $age;
	$response["hostel_block"] = $hostel_block;
	$response["room_no"] = $room_no;
	$response["gender"] = $gender;
	$response["contact"] = $contact;
	$response["email"] = $email;
        $response["username"] = $username;
        $response["password"] = $password;
    }
    
    echo json_encode($response);
?>