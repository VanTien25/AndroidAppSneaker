<?php
    include "connect.php";
	$sdt = $_POST['sdt'];
	$email = $_POST['email'];
    $tongtien = $_POST['tongtien'];
    $userID = $_POST['userID'];
    $diachi = $_POST['diachi'];
    $soluong = $_POST['soluong'];
    $chitiet = $_POST['chitiet'];


    $query = 'INSERT INTO `tbl_order`(`userID`, `diachi`, `sodienthoai`, `email`, `soluong`, `tongtien`) VALUES ('.$userID.',"'.$diachi.'","'.$sdt.'","'.$email.'",'.$soluong.',"'.$tongtien.'")';
    $data = mysqli_query($conn, $query);
    if ($data == true) {
        $query = 'SELECT id AS iddonghang FROM `tbl_order` WHERE `userID` = '.$userID.' ORDER BY id DESC LIMIT 1';
        $data = mysqli_query($conn, $query);

        while ($row = mysqli_fetch_assoc($data)){
            $orderID = ($row);
        }
        if (!empty($orderID)) {
            // co don hang
            $chitiet = json_decode($chitiet, true);
            foreach ($chitiet as $key => $value) {
                $truyvan = 'INSERT INTO `tbl_orderdetail`(`orderID`, `proID`, `soluong`, `gia`) VALUES ('.$orderID["iddonghang"].','.$value["proID"].','.$value["proQuan"].',"'.$value["price"].'")';

                $data = mysqli_query($conn, $truyvan);
        
            }

            if ($data == true) {
                $arr = [
                    'success' => true,
                    'message' => "thanh cong"
                ];
            }else {
                $arr = [
                    'success' => false,
                    'message' => "that bai"
                ];

            }
            print_r(json_encode($arr));
        }
    }else {
        $arr = [
            'success' => false,
            'message' => "that bai"
        ];

        print_r(json_encode($arr));
    }


?>