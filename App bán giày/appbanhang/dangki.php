<?php
    include "connect.php";
	$username = $_POST['username'];
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $phone = $_POST['phone'];


    // check data 
    $query = 'SELECT * FROM `tbl_user` WHERE `email` = "'.$email.'"';
    $data = mysqli_query($conn, $query);
    $numrow = mysqli_num_rows($data);

    if ($numrow > 0){
        $arr = [
            'success' => false,
            'message' => "email đã tồn tại"
        ];
    } else {
        // insert
        $query = 'INSERT INTO `tbl_user`(`username`, `email`, `pass`, `phone`) VALUES ("'.$username.'", "'.$email.'", "'.$pass.'", "'.$phone.'")';
        $data = mysqli_query($conn, $query);
    
        if($data == true){
            $arr = [
                'success' => true,
                'message' => "thanh cong"
            ];
        } else {
            $arr = [
                'success' => false,
                'message' => "that bai"
            ];
        }
    }
    print_r(json_encode($arr));
?>