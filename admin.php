<?PHP
    require "dbCon.php";
    if(isset($_POST["btnGui"])){
        $tenBh = $_POST["tenBH"];
        $mp3 = $_POST["mp3"];
        $qr = "INSERT INTO baihat 
        VALUES(null,'$tenBh','$mp3') ";
        mysql_query($qr);
    }
?>
<table border="1" width ="500px">
    <tr>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <?php
        $baihat = mysql_query("SELECT * FROM baihat");
        while($row = mysql_fetch_array($baihat)){
    ?>
    <tr>
        <td><?php echo $row["idBh"] ?></td>
        <td><?php echo $row["tenBh"] ?></td>
        <td><?php echo $row["mp3"] ?></td>
    </tr>
<?php }?>
</table>
<form action="" method="POST">
Ten Bai Hat : <input type="text" id="tenBH" name="tenBH"/>
<br/>
Mp3 : <input type="text" id="mp3" name="mp3"/>
<br/>
<input type="submit" id="btnGui" value="Gui Bai Moi"  name="btnGui"/>
</form>