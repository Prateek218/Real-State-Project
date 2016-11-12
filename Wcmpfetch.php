<?php
    $con = mysqli_connect("localhost", "root", "root", "webappdb");
    
    $cmp_id = $_POST["Complaint_No"];
    
    $statement = mysqli_prepare($con, "SELECT * FROM complaint_details WHERE Complaint_No = ?");
    mysqli_stmt_bind_param($statement, "s", $cmp_id);
    mysqli_stmt_execute($statement);
    
    mysqli_stmt_store_result($statement);
    mysqli_stmt_bind_result($statement, $Complaint_No, $C_From_Reg, $C_From_Name, $Hostel_Block, $Room_No, $To_warden_id, $Subject, $Message);
    
    $response = array();
    $response["success"] = false;  
    
    while(mysqli_stmt_fetch($statement)){
        $response["success"] = true;  
        $response["Complaint_No"] = $Complaint_No;
        $response["C_From_Reg"] = $C_From_Reg;
	$response["C_From_Name"] = $C_From_Name;
	$response["Hostel_Block"] = $Hostel_Block;
	$response["Room_No"] = $Room_No;
	$response["To_warden_id"] = $To_warden_id;
	$response["Subject"] = $Subject;
        $response["Message"] = $Message;
    }
    
    echo json_encode($response);
?>