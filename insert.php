<?php
if(isset($_POST["sub"])){
            
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "bmsce";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) 
    {
        die("Connection failed: " . $conn->connect_error);
    } 

    $year=(int)$_POST['year'];
    $credits=(int)$_POST["credits"];
    $noofstudents=(int)$_POST["noofstudents"];
    echo $credits . " " . $year;
    $sem=(int)$_POST['semester'];

    try {
        // First of all, let's begin a transaction
        $conn->begin_transaction();

        $sql="INSERT INTO entry VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,'".$_POST["coursetitle"]."',$credits,'".$_POST["coursetype"]."',$noofstudents,'".$_POST["program"]."','".$_POST["faculty"]."',$sem);";
        $sql1 ="INSERT INTO courseoutcome VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,'".$_POST["co1"]."','".$_POST["co2"]."','".$_POST["co3"]."','".$_POST["co4"]."','".$_POST["co5"]."','".$_POST["co6"]."','".$_POST["co7"]."','".$_POST["co8"]."');";
        $sql2="INSERT INTO copo VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,1,'".$_POST["11"]."','".$_POST["12"]."','".$_POST["13"]."','".$_POST["14"]."','".$_POST["15"]."','".$_POST["16"]."','".$_POST["17"]."','".$_POST["18"]."','".$_POST["19"]."','".$_POST["110"]."','".$_POST["111"]."','".$_POST["112"]."','".$_POST["113"]."','".$_POST["114"]."','".$_POST["115"]."');";
        $sql3="INSERT INTO copo VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,2,'".$_POST["21"]."','".$_POST["22"]."','".$_POST["23"]."','".$_POST["24"]."','".$_POST["25"]."','".$_POST["26"]."','".$_POST["27"]."','".$_POST["28"]."','".$_POST["29"]."','".$_POST["210"]."','".$_POST["211"]."','".$_POST["212"]."','".$_POST["213"]."','".$_POST["214"]."','".$_POST["215"]."');";
        $sql4="INSERT INTO copo VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,3,'".$_POST["31"]."','".$_POST["32"]."','".$_POST["33"]."','".$_POST["34"]."','".$_POST["35"]."','".$_POST["36"]."','".$_POST["37"]."','".$_POST["38"]."','".$_POST["39"]."','".$_POST["310"]."','".$_POST["311"]."','".$_POST["312"]."','".$_POST["313"]."','".$_POST["314"]."','".$_POST["315"]."');";
        $sql5="INSERT INTO copo VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,4,'".$_POST["41"]."','".$_POST["42"]."','".$_POST["43"]."','".$_POST["44"]."','".$_POST["45"]."','".$_POST["46"]."','".$_POST["47"]."','".$_POST["48"]."','".$_POST["49"]."','".$_POST["410"]."','".$_POST["411"]."','".$_POST["412"]."','".$_POST["413"]."','".$_POST["414"]."','".$_POST["515"]."');";
        $sql6="INSERT INTO copo VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,5,'".$_POST["51"]."','".$_POST["52"]."','".$_POST["53"]."','".$_POST["54"]."','".$_POST["55"]."','".$_POST["56"]."','".$_POST["57"]."','".$_POST["58"]."','".$_POST["59"]."','".$_POST["510"]."','".$_POST["511"]."','".$_POST["512"]."','".$_POST["513"]."','".$_POST["514"]."','".$_POST["515"]."');";
        $sql7="INSERT INTO copo VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,6,'".$_POST["61"]."','".$_POST["62"]."','".$_POST["63"]."','".$_POST["64"]."','".$_POST["65"]."','".$_POST["66"]."','".$_POST["67"]."','".$_POST["68"]."','".$_POST["69"]."','".$_POST["610"]."','".$_POST["611"]."','".$_POST["612"]."','".$_POST["613"]."','".$_POST["614"]."','".$_POST["615"]."');";
        $sql8="INSERT INTO copo VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,7,'".$_POST["71"]."','".$_POST["72"]."','".$_POST["73"]."','".$_POST["74"]."','".$_POST["75"]."','".$_POST["76"]."','".$_POST["77"]."','".$_POST["78"]."','".$_POST["79"]."','".$_POST["710"]."','".$_POST["711"]."','".$_POST["712"]."','".$_POST["713"]."','".$_POST["714"]."','".$_POST["715"]."');";
        $sql9="INSERT INTO copo VALUES('".$_POST["coursecode"]."','".$_POST["section"]."',$year,8,'".$_POST["81"]."','".$_POST["82"]."','".$_POST["83"]."','".$_POST["84"]."','".$_POST["85"]."','".$_POST["86"]."','".$_POST["87"]."','".$_POST["88"]."','".$_POST["89"]."','".$_POST["810"]."','".$_POST["811"]."','".$_POST["812"]."','".$_POST["813"]."','".$_POST["814"]."','".$_POST["815"]."');";
        $sql10="INSERT INTO assesmenttool VALUES('".$_POST["coursecode"]."','".$_POST["section"]."','$year','".$_POST["internalmarks"]."','".$_POST["quizmarks"]."','".$_POST["labmarks"]."','".$_POST["selfmarks"]."','".$_POST["aatmarks"]."');";
        if($conn->query($sql) && $conn->query($sql1) && $conn->query($sql2)  && $conn->query($sql3)  && $conn->query($sql4)  && $conn->query($sql5)  && $conn->query($sql6)  && $conn->query($sql7)  && $conn->query($sql8)  && $conn->query($sql9)  && $conn->query($sql10))
        {
        
            echo "All done 10 successfully";
            $conn->commit();
        } 
        else
        {
            $conn->rollback();
            echo "An error has occured";
        }
    }
    catch (Exception $e) {
            $conn->rollback();
        
    }
}
?>