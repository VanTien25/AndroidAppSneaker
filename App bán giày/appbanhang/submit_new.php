<?php
include "connect.php";


if(isset($_POST['submit_password']) && $_POST['email'])
{
  $email=$_POST['email'];
  $pass=$_POST['password'];

  $query = "update tbl_user set pass='$pass' where email='$email'";
  //print_r($query);
  $data = mysqli_query($conn, $query);
  if($data == true)
  {
      echo "Đổi mật khẩu thành công";
  }
  

}
?>