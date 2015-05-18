<?php
        require = "dbCon.php";
    $cot=$_GET["cot"];
    $baihat = mysql_query("SELECT * FROM baihat");
    $dem = 0;
    while($row = mysql_fetch_array($baihat)){
        $dem = $dem+1;
        echo $row[$cot];
        if($dem < mysql_num_row($baihat))
        echo "#";
    }
    
?>