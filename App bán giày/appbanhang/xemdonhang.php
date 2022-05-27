<?php
    include "connect.php";
	$userID = $_POST['userID'];

    $query = 'SELECT * FROM `tbl_order` WHERE `userID` = '.$userID;
    $data = mysqli_query($conn, $query);
    $result = array();
    while ($row = mysqli_fetch_assoc($data)){
        $truyvan = 'SELECT * FROM `tbl_orderdetail` INNER JOIN tbl_product ON tbl_orderdetail.proID = tbl_product.proID WHERE tbl_orderdetail.orderID = '.$row['id'];
        $data1 = mysqli_query($conn, $truyvan);
        $item = array();
        while ($row1 = mysqli_fetch_assoc($data1)){
            $item[] = $row1;
        }

        $row['item'] = $item;
        $result[] = ($row);
    }
    
    if(!empty($result)){
        $arr = [
            'success' => true,
            'message' => "thanh cong",
            'result' => $result
        ];
    } else {
        $arr = [
            'success' => false,
            'message' => "that bai",
            'result' => $result
        ];
    }
    print_r(json_encode($arr));
?>