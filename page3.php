
<style>
	select{
		margin-left:350px;
	}
</style>
		<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bmsce";
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql1="select coursecode from entry";
$res=mysqli_query($conn,$sql1);


$sql1="select coursecode from entry";
$res=mysqli_query($conn,$sql1);


echo '<select  id="dropdown" name="coursecode">';
while($row=mysqli_fetch_array($res)){
	echo '<option value="'.$row['coursecode'].'">'.$row['coursecode'].'</option>';
}
echo '</select>';
echo '<br><br>';


$sql2="select section from entry";
$res=mysqli_query($conn,$sql2);


echo '<select name="section">';
while($row=mysqli_fetch_array($res)){
	echo '<option value="'.$row['section'].'">'.$row['section'].'</option>';
}
echo '</select>';
echo '<br><br>';


$sql3="select year from entry";
$res=mysqli_query($conn,$sql3);


echo '<select name="year" >';
while($row=mysqli_fetch_array($res)){
	echo '<option value="'.$row['year'].'">'.$row['year'].'</option>';
}
echo '</select>';
echo '<br><br>';

if(isset($_POST['sub'])){
		$year=$_POST['year'];
	$sql5="select coursetitle,sem,faculty from entry where coursecode='".$_POST['coursecode']."' and section='".$_POST['section']."' and year=$year;";
	$res=mysqli_query($conn,$sql5);
	$row=mysqli_fetch_array($res);
	$coursetitle=$row['coursecode'];
	$sem=(int)$row['sem'];
	$faculty=$row['faculty'];
	$cfactor=(float)$_POST['coorelationfactor'];
	$nos=(int)$_POST['numberofstudent'];
	$s=(int)$_POST['s'];
	$a=(int)$_POST['a'];
	$b=(int)$_POST['b'];
	$c=(int)$_POST['c'];
	$d=(int)$_POST['d'];
	$e=(int)$_POST['e'];
	$f=(int)$_POST['f'];
	$x=(int)$_POST['x'];
	$i=(int)$_POST['i'];
	echo $year;
	
$sql="INSERT INTO marksreport VALUES('".$_POST['coursecode']."','".$_POST['section']."',$year,'$coursetitle',$sem,'$faculty',0,$nos,$s,$a,$b,$c,$d,$e,$f,$x,$i,'".$_POST['selfaudit']."');";
/*if ($conn->query($sql)){
	echo "successful inserted";
}
else{
	echo "an error has occured";
}*/
}
		
			?>
			
	<form action="" method="post">
<b style="margin-left:350px;">Correlation Factor</b><br><br>
	<input type="file" name="coorelationfactor" style="width:300px;margin-left:350px;"><br><br>
	<b style="margin-left:350px;">Number of students</b><br>
	<input type="number" name="numberofstudent" style="width:300px;margin-left:350px;"><br>
	<b style="margin-left:350px;">S</b><br>
	<input type="number" name="s" style="width:100px;margin-left:350px;"><br>
	<b style="margin-left:350px;">A</b><br>
	<input type="number" name="a" style="width:100px;margin-left:350px;"><br>
	<b style="margin-left:350px;">B</b><br>
	<input type="number" name="b" style="width:100px;margin-left:350px;"><br>
	<b style="margin-left:350px;">C</b><br>
	<input type="number" name="c" style="width:100px;margin-left:350px;"><br>
	<b style="margin-left:350px;">D</b><br>
	<input type="number" name="d" style="width:100px;margin-left:350px;"><br>
	<b style="margin-left:350px;">E</b><br>
	<input type="number" name="e" style="width:100px;margin-left:350px;"><br>
	<b style="margin-left:350px;">F</b><br>
	<input type="number" name="f" style="width:100px;margin-left:350px;"><br>
	<b style="margin-left:350px;">X</b><br>
	<input type="number" name="x" style="width:100px;margin-left:350px;"><br>
	<b style="margin-left:350px;">I</b><br>
	<input type="number" name="i" style="width:100px;margin-left:350px;"><br><br>
	<b style="margin-left:350px;">Self Audit By Faculty</b><br>
	<input type="text" name="selfaudit" style="width:800px;margin-left:350px;"><br><br>
	<input type="submit" value="Submit" name="sub" style="margin-left:350px;">
	</form>
	



