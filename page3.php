<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 TEMPLATE NAME:page3
 */

?>
		<b style="margin-left:350px;">Select the faculty</b><br><br>
			<select name="" style="margin-left:350px;">
				<option>data to be fetched from db</option>
				<option>a</option>
				<option>b</option>
			</select><br><br>

	<select name="" style="margin-left:350px;">
				<option>data to be fetched from db</option>
				<option>a</option>
				<option>b</option>
			</select><br><br>
	<select name="" style="margin-left:350px;">
				<option>data to be fetched from db</option>
				<option>a</option>
				<option>b</option>
			</select><br><br><br>
			
	<form action="" method="post">
			<b style="margin-left:350px;">Semester</b><br>
		<input type="text" name="reportsem" style="width:300px;margin-left:350px;"><br>
		<b style="margin-left:350px;" >Course Title</b><br>
<input type="text" name="reportcourse" style="width:300px;margin-left:350px;"><br>
<b style="margin-left:350px;">Faculty Name</b><br>
<input type="text" name="reportfaculty" style="width:300px;margin-left:350px;"><br>
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
	<input type="submit" value="Submit" id="sub" style="margin-left:350px;">
	</form>
	

<?php
	
		
			if(isset($_POST["subsuggestion"])){
			$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bmsce";
			$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} $sql="INSERT INTO survey VALUES('"."','"."',0,'".$_POST["suggestion"]."','".$_POST["actions"]."','".$_POST["summary"]."');";
if ($conn->query($sql)){
	echo "successful inserted";
}
			}?>

<?php 
?>