<?php

include "connect.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

  $email = $_POST['email'];
  $query = 'SELECT * FROM `tbl_user` WHERE `email`="'.$email.'"';
    $data = mysqli_query($conn, $query);
    $result = array();
    while ($row = mysqli_fetch_assoc($data)){
        $result[] = ($row);
    }

  if (empty($result)){
    $arr = [
      'success' => false,
      'message' => "Mail không chính xác",
      'result' => $result
  ];
  } else {
    //send Mail
      $email=($result[0]["email"]);
      $pass=($result[0]["pass"]);
      $link="<a href='http://192.168.56.1/appbanhang/reset_pass.php?key=".$email."&reset=".$pass."'>Click To Reset password</a>";
    $mail = new PHPMailer();
    $mail->CharSet =  "utf-8";
    $mail->IsSMTP();
    // enable SMTP authentication
    $mail->SMTPAuth = true;                  
    // GMAIL username
    $mail->Username = "tienkad2510@gmail.com";
    // GMAIL password
    $mail->Password = "01672113356"; // pass cua mail
    $mail->SMTPSecure = "ssl";  
    // sets GMAIL as the SMTP server
    $mail->Host = "smtp.gmail.com";
    // set the SMTP port for the GMAIL server
    $mail->Port = "465";
    $mail->From= "tienkad2510@gmail.com";  // mail nguoi nhan
    $mail->FromName='app ban hang';
    $mail->AddAddress($email, 'reciever_name');
    $mail->Subject  =  'Reset Password';
    $mail->IsHTML(true);
    $mail->Body    = $link;
    if($mail->Send())
    {
      $arr = [
        'success' => true,
        'message' => "Vui lòng kiểm tra Mail của bạn",
        'result' => $result
    ];
    }
    else
    {
      $arr = [
        'success' => false,
        'message' => "Gửi Mail không thành công",
        'result' => $mail->ErrorInfo
    ];
    }
  }
  print_r(json_encode($arr));


?>