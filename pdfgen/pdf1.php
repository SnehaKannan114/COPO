<?php
require_once('./pdf.php');

function pdfbuilder($pdf, $conn, $row)
{
	$pdf->AddPage();
	$pdf->Page1($conn, $row);
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bmsce";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * FROM entry";
$result = $conn->query($sql);

if ($result->num_rows > 0) 
{
	$cnt = 0;
	$pdf = new PDF();
    // output data of each row
    while($row = $result->fetch_assoc()) 
    {
    	//for each course in DB
    	pdfbuilder($pdf, $conn, $row);
	}
	//saves compiled pdf
	$pdf->output();
}
else 
{
	echo "0 results";
}
$conn->close();

// Instanciation of inherited class

?>
