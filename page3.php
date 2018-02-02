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

get_header(); ?>
		<b>Select the faculty</b><br>
			<select name="">
				<option>data to be fetched from db</option>
				<option>a</option>
				<option>b</option>
			</select><br><br>

	<select name="">
				<option>data to be fetched from db</option>
				<option>a</option>
				<option>b</option>
			</select><br><br>
	<select name="">
				<option>data to be fetched from db</option>
				<option>a</option>
				<option>b</option>
			</select><br><br>
			
	<form action="" method="post">
			Semester<br>
		<input type="text" name="reportsem">
		Course Title<br>
<input type="text" name="reportcourse">
Faculty Name<br>
<input type="text" name="reportfaculty">
Correlation Factor<br>
	<input type="text" name="coorelationfactor"><br>
	Number of students<br>
	<input type="number" name="numberofstudent"><br>
	S<br>
	<input type="number" name="s"><br>
	A<br>
	<input type="number" name="a"><br>
	B<br>
	<input type="number" name="b"><br>
	C<br>
	<input type="number" name="c"><br>
	D<br>
	<input type="number" name="d"><br>
	E<br>
	<input type="number" name="e"><br>
	F<br>
	<input type="number" name="f"><br>
	X<br>
	<input type="number" name="x"><br>
	I<br>
	<input type="number" name="i"><br>
	Self Audit By Faculty<br>
	<input type="text" name="selfaudit"><br>
	<input type="submit" value="Submit" id="sub">
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

<?php get_footer();
