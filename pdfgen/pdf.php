<?php
require_once('../fpdf.php');

class PDF extends FPDF
{
	var $bottom_margin = 0;
	var $page_height = 286.93;
	var $height_of_cell = 60;
	var $letterCnt = 'A';
					
	// Page header
	function Header()
	{
		//bmsce header logo
		$this->Image('../images/bmscelogo.png',95,3,15);
		
		$this->Ln(7);
		
		$this->SetFont('Times','',16);
		$this->Cell(80);
		$this->Cell(30,10,'BMS COLLEGE OF ENGINEERING, BENGALURU-19',0,0,'C');
		
		$this->Ln(6);
		
		$this->SetFont('Times','',14);
		$this->Cell(80);
		$this->Cell(30,10,'Autonomous Institute, Affiliated to VTU',0,0,'C');
		$this->Ln(10);
	}
	// Page footer
	function Footer()
	{
		// Position at 1.5 cm from bottom
		$this->SetY(-15);
		// Arial italic 8
		$this->SetFont('Arial','I',8);
		// Page number
		//$this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
	}
	function AuditHeader()
	{
		$this->SetFont('Arial','B',14);
		$this->Cell(80);
		$this->Cell(30,10,'Faculty Self-Audit',0,0,'C');
		
		$this->Ln(5);
		$this->SetFont('Arial','BI',11);
		$this->Cell(80);
		$this->Cell(30,10,'(to be submitted at the end of the semester)',0,0,'C');
		
		// Line break
		$this->Ln(9);

		//When new subject starts, reset letter count
		$this->letterCnt = 'A';
	}

	function courseDetails($row)
	{
		$this->SetFont('Arial','B',9);
		$this->Cell(12);
		$this->Cell(40,10,'Course Title: ',0,0,'L');
		$currentY = $this->GetY() + 7;
		$this->SetFont('Arial','',7);
		$this->line(65,$currentY,185,$currentY);
		$this->SetFont('Arial','',11);
		$this->cell(30);
		$this->Cell(120,10,strtoupper($row["coursetitle"]),0,0,'L');
		$this->Ln(6);

		$this->SetFont('Arial','B',9);
		$this->Cell(12);
		$this->Cell(40,10,'Course Code: ',0,0,'L');
		$currentY = $this->GetY() + 7;
		$this->SetFont('Arial','',7);
		$this->line(65,$currentY,185,$currentY);
		$this->SetFont('Arial','',11);
		$this->cell(30);
		$this->Cell(120,10,strtoupper($row["coursecode"]),0,0,'L');
		$this->Ln(6);
		
		$this->SetFont('Arial','B',9);
		$this->Cell(12);
		$this->Cell(40,10,'Credits (L-T-P-S): ',0,0,'L');
		$currentY = $this->GetY() + 7;
		$this->SetFont('Arial','',7);
		$this->line(65,$currentY,185,$currentY);
		$this->SetFont('Arial','',11);
		$this->cell(30);
		$this->Cell(120,10,$row["credits"],0,0,'L');
		
		$this->Ln(6);
		
		$this->SetFont('Arial','B',9);
		$this->Cell(12);
		$this->Cell(50,10,'Course Type (Core/Elective): ',0,0,'L');
		$currentY = $this->GetY() + 7;
		$this->SetFont('Arial','',7);
		$this->line(75,$currentY,185,$currentY);
		$this->SetFont('Arial','',11);
		$this->cell(20);
		$this->Cell(100,10,strtoupper($row["coursetype"]),0,0,'L');
		
		$this->Ln(6);
		
		$this->SetFont('Arial','B',9);
		$this->Cell(12);
		$this->Cell(40,10,'Number of Students: ',0,0,'L');
		$currentY = $this->GetY() + 7;
		$this->SetFont('Arial','',7);
		$this->line(65,$currentY,185,$currentY);
		$this->SetFont('Arial','',11);
		$this->cell(30);
		$this->Cell(120,10,$row["noofstudent"],0,0,'L');
		
		$this->Ln(6);
		
		$this->SetFont('Arial','B',9);
		$this->Cell(12);
		$this->Cell(40,10,'Program: ',0,0,'L');
		$currentY = $this->GetY() + 7;
		$this->SetFont('Arial','',7);
		$this->line(65,$currentY,185,$currentY);
		$this->SetFont('Arial','',11);
		$this->cell(30);
		$this->Cell(120,10,strtoupper($row["program"]),0,0,'L');
		
		$this->Ln(6);
		
		$this->SetFont('Arial','B',9);
		$this->Cell(12);
		$this->Cell(40,10,'Faculty: ',0,0,'L');
		$currentY = $this->GetY() + 7;
		$this->SetFont('Arial','',7);
		$this->line(65,$currentY,185,$currentY);
		$this->SetFont('Arial','',11);
		$this->cell(30);
		$this->Cell(120,10,strtoupper($row["faculty"]),0,0,'L');
		//$this->Cell(120,10,ucwords($row["faculty"]),0,0,'L');
		
	}

	function COsection($conn, $row)
	{
		$sql = "SELECT * FROM courseoutcome where coursecode = ? and section = ? and year = ?";
 
		//$this->Cell(150, 8, $sql,1, 0, 'C');
		//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');


        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {

	        	$courseCodeRow = $result->fetch_assoc();

	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->Ln(12);
				$this->Cell(12);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(14,6,$this->letterCnt++,1, 0, 'C');
				$this->Cell(155,6,"Course Outcomes",1, 1, 'L');
				
				$noOfCOs = 0;
				for($var = 1; $var < 7; $var++)
				{
					if($courseCodeRow["co{$var}"] == "")
						continue;
					else
						$noOfCOs++;
				}
				$this->Cell(12);
				$this->Cell(14, 12 + 8*$noOfCOs,"",1,0);
				$this->Cell(155, 12 + 8*$noOfCOs,"",1,0);
				$this->Ln(0);
				//$this->Cell(28);
				$this->SetFont('Arial', 'BI', 11);
				$this->Cell(28);
				$this->Cell(150,8,"At the end of the course the students will be able to ",0, 1, 'L');

		        for($rowCnt = 1; $rowCnt < 7; $rowCnt++)
				{
					if($courseCodeRow["co{$rowCnt}"] == "")
						continue;
					$this->Cell(28);
					$this->SetFont('Arial', 'BI', 11);
					$this->Cell(20, 8,"CO{$rowCnt}", 1, 0, 'C');
					$this->SetFont('Arial', '', 9);
					$this->MultiCell(130, 8, ucfirst($courseCodeRow["co{$rowCnt}"]),1);
				}
			}
				/*warning at the end
				$this->Cell(55);
				$this->SetFont('Arial', 'BI', 11);
				$this->Cell(20, 8,"NOTE: Add/Delete ROW as required", 0, 1, 'C');
			*/
		}
		else
		{
			$this->Cell(20, 8, "Error in connection. Please try again",1, 0, 'C');
		}
	}

	function array_count($value, $array) 
	{
    	$counts = array_count_values($array);
    	return $counts[$value];
	}

	function COPOmapping($conn, $row)
	{
		//populate COPO matrix
		$COPOmatrix;
		$noOfCOs = 0;
        for($rowCnt = 1; $rowCnt < 9; $rowCnt++)
		{
			$sql = "SELECT * FROM copo where coursecode = ? and section = ? and year = ? and cono = ?" ;
	 
			//$this->Cell(150, 8, $sql,1, 0, 'C');
			//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');


	        if($stmt = mysqli_prepare($conn, $sql))
	        {
		        // Bind variables to the prepared statement as parameters
		        mysqli_stmt_bind_param($stmt, "ssdd", $row["coursecode"], $row["section"], $row["year"], $rowCnt);
		        mysqli_stmt_execute($stmt);
		        $result = mysqli_stmt_get_result($stmt);
		        //echo mysqli_num_rows($result);
		        if(mysqli_num_rows($result) > 0)
		        {

		        	$copoRow = $result->fetch_assoc();
		        	for($colCnt = 1; $colCnt < 13; $colCnt++)
		        	{
		        		$COPOmatrix[$rowCnt-1][$colCnt-1] = $copoRow["po{$colCnt}"];
		        	}
		        	for($colCnt = 1; $colCnt < 13; $colCnt++)
		        	{
		        		if($COPOmatrix[$rowCnt-1][$colCnt-1] > 0)
		        		{
		        			$noOfCOs++;
		        			break;
		        		}
		        	}
		        		
		        }
		    }
		}

		//To push to next page if not sufficient space
		$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	    if($this->height_of_cell > $space_left)
	    {	
	    	$this->AddPage();
	      	$this->Cell(12);
	    }
	        	

		//print
		$this->Ln(4);
		$this->Cell(12);
		$this->SetFont('Arial', 'B', 11);
		$this->Cell(14, 6, $this->letterCnt++, 1, 0, 'C');
		$this->Cell(155,6,"CO-PO Mapping",1, 1, 'L');
		$this->Cell(12);
		$this->Cell(14, 16 + 8*$noOfCOs,"",1, 0, 'C');
		$this->Cell(155, 16 + 8*$noOfCOs,"",1, 0, 'C');
		$this->Ln(4);
		//$this->Cell(28);
		//$this->SetFont('Arial', 'BI', 11);
		//$this->Cell(28);
		//$this->Cell(150,8,"At the end of the course the students will be able to ",0, 1, 'L');
		$this->Cell(28);
		$this->Cell(20, 8, "",1,0);
		$this->SetFont('Arial', 'B', 10);
		for($colCnt = 1; $colCnt < 13; $colCnt++)
		{
			$this->Cell(10, 8, "PO{$colCnt}",1,0);
		}
		$this->Ln(8);
		for($rowCnt = 1; $rowCnt < 9; $rowCnt++)
		{
			$coExistFlag = 0;
			$arrayTemp = $COPOmatrix[$rowCnt-1];
			foreach($arrayTemp as $var)
				if($var>0)
					$coExistFlag = 1;
			if($coExistFlag == 0)
				continue;
			$noOfCOs++;
			$this->Cell(28);
			$this->SetFont('Arial', 'B', 11);
			$this->Cell(20, 8,"CO{$rowCnt}", 1, 0, 'C');
			$this->SetFont('Arial', '', 9);
			for($colCnt = 1; $colCnt < 13; $colCnt++)
			{
				if($COPOmatrix[$rowCnt-1][$colCnt-1] == 0)
					$this->Cell(10, 8, "NA",1,0);	
				else
					$this->Cell(10, 8, $COPOmatrix[$rowCnt-1][$colCnt-1],1,0);
			}
			$this->Ln(8);	
		}
	}

	function Assessment($conn, $row)
	{
		$sql = "SELECT * FROM assesmenttool where coursecode = ? and section = ? and year = ?";
        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {

	        	$testRow = $result->fetch_assoc();

				//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->Ln(4);
				$this->Cell(12);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(14,6,$this->letterCnt++,1, 0, 'C');
				$this->Cell(155,6,"Assessment Tools(for 50 marks of CIE)",1, 1, 'L');
				
				$noOfTests = 0;
				
				if($testRow["internals"]!=0)
					$noOfTests++;
				if($testRow["quiz"]!=0)
					$noOfTests++;
				if($testRow["lab"]!=0)
					$noOfTests++;
				if($testRow["selfstudy"]!=0)
					$noOfTests++;
				if($testRow["aat"]!=0)
					$noOfTests++;

				$this->Cell(12);
				$this->Cell(14, 22 + 8*$noOfTests,"",1, 0, 'C');
				$this->Cell(155, 22 + 8*$noOfTests,"",1, 0, 'C');
				$this->Ln(4);
				
				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(45, 8,"Tool", 1, 0, 'C');
				$this->Cell(80, 8, "Remarks", 1, 0, 'C');
				$this->Cell(20, 8, "Marks", 1, 1, 'C');

				if($testRow["internals"] != 0)
				{
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 10);
					$this->Cell(45, 8,"Internals", 1, 0, 'C');
					$this->Cell(80, 8, "Best 2 of 3", 1, 0, 'C');
					$this->SetFont('Arial', '', 11);
					$this->Cell(20, 8,$testRow["internals"], 1, 1, 'C');
				}
				if($testRow["quiz"] != 0)
				{
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 10);
					$this->Cell(45, 8,"QUIZ", 1, 0, 'C');
					$this->Cell(80, 8, "One/Average Of Two/Best 2 of 3", 1, 0, 'C');
					$this->SetFont('Arial', '', 11);
					$this->Cell(20, 8,$testRow["quiz"], 1, 1, 'C');
				}
				if($testRow["lab"] != 0)
				{
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 10);
					$this->Cell(45, 8,"Lab Component", 1, 0, 'C');
					$this->Cell(80, 8, "if applicable", 1, 0, 'C');
					$this->SetFont('Arial', '', 11);
					$this->Cell(20, 8,$testRow["lab"], 1, 1, 'C');
				}
				if($testRow["selfstudy"] != 0)
				{
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 10);
					$this->Cell(45, 8,"Self-Study Component", 1, 0, 'C');
					$this->Cell(80, 8, "if applicable", 1, 0, 'C');
					$this->SetFont('Arial', '', 11);
					$this->Cell(20, 8,$testRow["selfstudy"], 1, 1, 'C');
				}
				if($testRow["aat"] != 0)
				{
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 10);
					$this->Cell(45, 8,"AAT", 1, 0, 'C');
					$this->Cell(80, 8, "Seminar/Mini-project/any other", 1, 0, 'C');
					$this->SetFont('Arial', '', 11);
					$this->Cell(20, 8,$testRow["aat"], 1, 1, 'C');
				}	

				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(125, 8,"Total", 1, 0, 'C');
				$this->Cell(20, 8, "50", 1, 1, 'C');
			}
		
				/*warning at the end
				$this->Cell(55);
				$this->SetFont('Arial', 'BI', 11);
				$this->Cell(20, 8,"NOTE: Add/Delete ROW as required", 0, 1, 'C');
			*/
		}
		else
		{
			$this->Cell(20, 8, "Error in connection. Please try again",1, 0, 'C');
		}
	}

	function AToolsCOMapping($conn, $row)
	{
		$sql = "SELECT * FROM atoolmapping where coursecode = ? and section = ? and year = ?";
		if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {
	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->Ln(2);
				$this->Cell(12);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(14, 6, $this->letterCnt++, 1, 0, 'C');
				$this->Cell(155, 6, "Assessment Tool Mapping to CO",1, 1, 'L');

				$noOfTests = mysqli_num_rows($result);
				$this->Cell(12);

				$this->Cell(14, 12 + 6*$noOfTests,"",1,0);
				$this->Cell(155, 12 + 6*$noOfTests,"",1,0);
				
				
				$this->Ln(2);
				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(15, 6,"", 1, 0, 'C');
				$this->Cell(15, 6, "C01", 1, 0, 'C');
				$this->Cell(15, 6, "CO2", 1, 0, 'C');
				$this->Cell(15, 6, "CO3", 1, 0, 'C');
				$this->Cell(15, 6, "CO4", 1, 0, 'C');
				$this->Cell(15, 6, "CO5", 1, 0, 'C');
				$this->Cell(15, 6, "CO6", 1, 0, 'C');
				$this->Cell(15, 6, "CO7", 1, 0, 'C');
				$this->Cell(15, 6, "CO8", 1, 0, 'C');
				$this->Cell(15, 6, "Total", 1, 1, 'Cell');
				//$this->Ln(8);
				$total = 0;
				while($testRow = $result->fetch_assoc()) 
			    {
			    	$this->Ln(0);
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 11);
					$this->Cell(15, 6, $testRow["test"], 1, 0, 'C');
					for($colCnt = 1; $colCnt < 9; $colCnt++)
					{
						$this->Cell(15, 6, $testRow["co{$colCnt}"], 1, 0, 'C');
						if($testRow["co{$colCnt}"] > 0)
							$total += $testRow["co{$colCnt}"];
					}
					$this->Cell(15, 6, $total, 1, 0, 'C');
				}
				$this->Ln(8);
			}
		}
		else
		{
			$this->Cell(20, 8, "Error in connection. Please try again",1, 0, 'C');
		}
	}

	function max($a, $b)
	{
		if($a>$b)
			return $a;
		else
			return $b;
	}



	function LectureSchedule($conn, $row)
	{
		$sql = "SELECT * FROM lectureschedule where coursecode = ? and section = ? and year = ?";
		if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {
	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->Ln(2);
				$this->Cell(12);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(14, 6, $this->letterCnt++, 1, 0, 'C');
				$this->Cell(155, 6, "Lecture Schedule",1, 1, 'L');

				$noOfLectures = mysqli_num_rows($result);
				$this->Cell(12);

				$topleftX = $this->GetX();
				$this->Cell(14, 12 + 6*$noOfLectures,"",0,0);
				$this->Cell(155, 12 + 6*$noOfLectures,"",0,0);
				
				$topY = $this->GetY();

				$this->Ln(2);
				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(20, 6,"Lecture #", 1, 0, 'C');
				$this->Cell(20, 6, "Unit #", 1, 0, 'C');
				$this->Cell(60, 6, "Topic", 1, 0, 'C');
				$this->MultiCell(50, 6, "Remarks", 1);
				//$this->Ln(8);
				$firstRowY = $this->GetY();
				while($lectureRow = $result->fetch_assoc()) 
			    {
			    	$this->Ln(0);
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 11);
					$x = $this->GetX();
					$y = $this->GetY();
					$this->MultiCell(20, 6, $lectureRow["lno"], 0, 'C');
					$this->setXY($x+20,$y);
					$x = $this->GetX();
					$y = $this->GetY();
					$this->MultiCell(20, 6, $lectureRow["uno"], 0, 'C');
					$this->setXY($x+20,$y);
					$this->SetFont('Arial', '', 10);
					$x=$this->GetX();
					$y=$this->GetY();
					$this->MultiCell(60, 6, $lectureRow["topic"], 0);
					$row3Y=$this->GetY();
					//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
					$this->SetXY($x+60,$y);
					$this->MultiCell(50, 6, $lectureRow["remarks"], 0);
					$x=$this->GetX();
					$row4Y=$this->GetY();
					$maxY = $this->max($row3Y, $row4Y);
					$this->SetXY($x, $maxY);
					$this->Line($x+28, $maxY, $x+178, $maxY);
					//$this->SetFont('Arial', '', 9);
					//$this->MultiCell(130, 8, $lectureRow["co{$rowCnt}"],1);
				}
				$this->Line($x+28, $firstRowY, $x+28, $maxY);
				$this->Line($x+20+28, $firstRowY, $x+20+28, $maxY);
				$this->Line($x+40+28, $firstRowY, $x+40+28, $maxY);
				$this->Line($x+100+28, $firstRowY, $x+100+28, $maxY);
				$this->Line($x+150+28, $firstRowY, $x+150+28, $maxY);
				$this->Ln(0);
				$x=$this->GetX()+12;
				$y=$maxY;
				$this->SetXY($x,$x-4);
				$this->Line($topleftX, $topY, $x, $y+2);
				$this->Line($topleftX+14, $topY, $x+14, $y+2);
				$this->Line($topleftX+169, $topY, $x+169, $y+2);
				$this->Line($topleftX, $topY, $topleftX+169, $topY);
				$this->Line($x, $y+2, $x+169, $y+2);
				$this->SetXY($x,$y+2);
				
			}
		}
		else
		{
			$this->Cell(20, 8, "Error in connection. Please try again",1, 0, 'C');
		}
	}


	function Tutorials($conn, $row)
	{
		$sql = "SELECT * FROM tutorial where coursecode = ? and section = ? and year = ?";
		if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {
	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->Ln(0);
				$this->Cell(12);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(14, 6, $this->letterCnt++,1 , 0, 'C');
				$this->Cell(155, 6, "Tutorials",1, 1, 'L');

				$noOfTutorials = mysqli_num_rows($result);
				$this->Cell(12);

				$topleftX = $this->GetX();
				$topY = $this->GetY();
				$this->Cell(14, 12 + 6*$noOfTutorials,"",0,0);
				$this->Cell(155, 12 + 6*$noOfTutorials,"",0,0);
				
				
				
				$this->Ln(2);
				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(20, 6,"Tutorial #", 1, 0, 'C');
				$this->Cell(20, 6, "Unit #", 1, 0, 'C');
				$this->Cell(60, 6, "Topic", 1, 0, 'C');
				$this->MultiCell(50, 6, "Remarks/Skill Addressed", 1);
				//$this->Ln(8);
					
				$firstRowY = $this->getY();	
				while($tutorialRow = $result->fetch_assoc()) 
			    {
			    	$this->Ln(0);
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 11);
					$x = $this->GetX();
					$y = $this->GetY();
					$this->MultiCell(20, 6, $tutorialRow["tno"], 0, 'C');
					$this->setXY($x+20,$y);
					$x = $this->GetX();
					$y = $this->GetY();
					$this->MultiCell(20, 6, $tutorialRow["uno"], 0, 'C');
					$this->setXY($x+20,$y);
					$this->SetFont('Arial', '', 10);
					$x=$this->GetX();
					$y=$this->GetY();
					$this->MultiCell(60, 6, $tutorialRow["topic"], 0);
					$row3Y=$this->GetY();
					//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
					$this->SetXY($x+60,$y);
					$this->MultiCell(50, 6, $tutorialRow["remarks"], 0);
					$x=$this->GetX();
					$row4Y=$this->GetY();
					$maxY = $this->max($row3Y, $row4Y);
					$this->SetXY($x, $maxY);
					$this->Line($x+28, $maxY, $x+178, $maxY);
					//$this->SetFont('Arial', '', 9);
					//$this->MultiCell(130, 8, $lectureRow["co{$rowCnt}"],1);
				}
				$this->Line($x+28, $firstRowY, $x+28, $maxY);
				$this->Line($x+20+28, $firstRowY, $x+20+28, $maxY);
				$this->Line($x+40+28, $firstRowY, $x+40+28, $maxY);
				$this->Line($x+100+28, $firstRowY, $x+100+28, $maxY);
				$this->Line($x+150+28, $firstRowY, $x+150+28, $maxY);
				$this->Ln(0);
				$x=$this->GetX()+12;
				$y=$maxY;
				$this->SetXY($x,$x-4);
				$this->Line($topleftX, $topY, $x, $y+2);
				$this->Line($topleftX+14, $topY, $x+14, $y+2);
				$this->Line($topleftX+169, $topY, $x+169, $y+2);
				$this->Line($x, $y+2, $x+169, $y+2);
				$this->SetXY($x,$y+2);
				
			}
		}
		else
		{
			$this->Cell(20, 8, "Error in connection. Please try again",1, 0, 'C');
		}
	}

	function Laboratory($conn, $row)
	{
		$sql = "SELECT * FROM laboratory where coursecode = ? and section = ? and year = ?";
		if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {
	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->Ln(0);
				$this->Cell(12);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(14, 6, $this->letterCnt++,1 , 0, 'C');
				$this->Cell(155, 6, "Laboratory",1, 1, 'L');

				$noOfLabs = mysqli_num_rows($result);
				$this->Cell(12);

				$topleftX = $this->GetX();
				$topY = $this->GetY();				
				
				$this->Ln(2);
				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(25, 6,"Experiment #", 1, 0, 'C');
				$this->Cell(20, 6, "Unit #", 1, 0, 'C');
				$this->Cell(55, 6, "Topic", 1, 0, 'C');
				$this->MultiCell(50, 6, "Remarks/Skill Addressed", 1);
				//$this->Ln(8);
				$firstRowY = $this->GetY();
				while($labRow = $result->fetch_assoc()) 
			    {
			    	$this->Ln(0);
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 11);
					$x = $this->GetX();
					$y = $this->GetY();
					$this->MultiCell(25, 6, $labRow["lno"], 0, 'C');
					$this->setXY($x+25,$y);
					$x = $this->GetX();
					$y = $this->GetY();
					$this->MultiCell(20, 6, $labRow["uno"], 0, 'C');
					$this->setXY($x+20,$y);
					$this->SetFont('Arial', '', 10);
					$x=$this->GetX();
					$y=$this->GetY();
					$this->MultiCell(55, 6, $labRow["name"], 0);
					$row3Y=$this->GetY();
					//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
					$this->SetXY($x+55,$y);
					$this->MultiCell(50, 6, $labRow["remarks"], 0);
					$x=$this->GetX();
					$row4Y=$this->GetY();
					$maxY = $this->max($row3Y, $row4Y);
					$this->SetXY($x, $maxY);
					$this->Line($x+28, $maxY, $x+178, $maxY);
					//$this->SetFont('Arial', '', 9);
					//$this->MultiCell(130, 8, $lectureRow["co{$rowCnt}"],1);
				}
				$this->Line($x+28, $firstRowY, $x+28, $maxY);
				$this->Line($x+25+28, $firstRowY, $x+25+28, $maxY);
				$this->Line($x+45+28, $firstRowY, $x+45+28, $maxY);
				$this->Line($x+100+28, $firstRowY, $x+100+28, $maxY);
				$this->Line($x+150+28, $firstRowY, $x+150+28, $maxY);
				$this->Ln(0);
				$this->Ln(0);
				$x=$this->GetX()+12;
				$y=$maxY;
				$this->SetXY($x,$x-4);
				$this->Line($topleftX, $topY, $x, $y+2);
				$this->Line($topleftX+14, $topY, $x+14, $y+2);
				$this->Line($topleftX+169, $topY, $x+169, $y+2);
				$this->Line($x, $y+2, $x+169, $y+2);
				$this->SetXY($x,$y+2);
				
			}
		}
		else
		{
			$this->Cell(20, 8, "Error in connection. Please try again",1, 0, 'C');
		}
	}

	function SelfStudy($conn, $row)
	{
		$sql = "SELECT * FROM selfstudy where coursecode = ? and section = ? and year = ?";
 
		//$this->Cell(150, 8, $sql,1, 0, 'C');
		//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');


        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {

	        	$selfstudyRow = $result->fetch_assoc();

	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->SetFont('Arial', 'B', 11);
				$this->Cell(14, 6, $this->letterCnt++, 1, 0, 'C');
				$this->Cell(155,6,"Self Study",1, 1, 'L');
				$this->Cell(12);
				$topleftX = $this->GetX();
				$topY = $this->GetY();

				//$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(28);
				$this->Cell(150,8,"Self Study Activity Description ",0, 1, 'L');
				$this->Cell(28);
				$this->SetFont('Arial', '', 10);
				$this->MultiCell(150,6,$selfstudyRow["description"],1);

				$this->Ln(4);

				$this->SetFont('Arial', 'B', 11);
				$this->Cell(12);
				$this->Cell(28);
				$this->Cell(150,8,"Self Study Evaluation Rubrixs ",0, 1, 'L');
				$this->Cell(28);
				$this->SetFont('Arial', '', 10);
				$this->MultiCell(150,6,$selfstudyRow["rubrix"],1);

				$x=$this->GetX()+12;
				$y=$this->GetY();

				$this->SetXY($x,$x-4);
				$this->Line($topleftX, $topY, $x, $y+2);
				$this->Line($topleftX+14, $topY, $x+14, $y+2);
				$this->Line($topleftX+169, $topY, $x+169, $y+2);
				$this->Line($x, $y+2, $x+169, $y+2);
				$this->SetXY($x,$y+2);
			}
		}
	    
	}

	function Survey($conn, $row)
	{
		$sql = "SELECT * FROM survey where coursecode = ? and section = ? and year = ?";
 
		//$this->Cell(150, 8, $sql,1, 0, 'C');
		//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');


        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {

	        	$surveyRow = $result->fetch_assoc();
	        	if(strlen($surveyRow["suggestion"])>3)
	        	{
	        		//To push to next page if not sufficient space
					$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        		if($this->height_of_cell > $space_left)
	        		{	$this->AddPage();
	        			$this->Cell(12);
	        		}
	        		
		        	//section header
		        	$this->SetFont('Arial', 'B', 11);
		        	$x=$this->GetX();
					$y=$this->GetY();
					$this->MultiCell(14, 6, "     {$this->letterCnt}          ", 1, 'L');
					$this->letterCnt++;
					//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
					$this->SetXY($x+14,$y);
					$this->MultiCell(155,6,"List the suggestions/comments for improvement of the course (or similar course) delivered during the previous academic year (as mentioned in the course file)",1);
					$this->Cell(12);
					$topleftX = $this->GetX();
					$topY = $this->GetY();

					//$this->Cell(28);
					$this->SetFont('Arial', 'B', 11);
					$this->Cell(14);
					$this->SetFont('Arial', '', 10);
					$this->MultiCell(150,8,$surveyRow["suggestion"],0);

					$x=$this->GetX()+12;
					$y=$this->GetY();

					$this->SetXY($x,$x-4);
					$this->Line($topleftX, $topY, $x, $y);
					$this->Line($topleftX+14, $topY, $x+14, $y);
					$this->Line($topleftX+169, $topY, $x+169, $y);
					$this->Line($x, $y, $x+169, $y);
					$this->SetXY($x,$y);
				}
				if(strlen($surveyRow["action"])>3)
	        	{
	        		//To push to next page if not sufficient space
					$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        		if($this->height_of_cell > $space_left)
	        		{	$this->AddPage();
	        			$this->Cell(12);
	        		}
		        	//section header
		        	$this->SetFont('Arial', 'B', 11);
		        	$x=$this->GetX();
					$y=$this->GetY();
					$this->MultiCell(14, 6, $this->letterCnt++, 1);
					//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
					$this->SetXY($x+14,$y);
					$this->MultiCell(155,6,"Action taken to address the suggestions/comments (of the above)",1);
					$this->Cell(12);
					$topleftX = $this->GetX();
					$topY = $this->GetY();

					//$this->Cell(28);
					$this->SetFont('Arial', 'B', 11);
					$this->Cell(14);
					$this->SetFont('Arial', '', 10);
					$this->MultiCell(150,8,$surveyRow["action"],0);
					$x=$this->GetX()+12;
					$y=$this->GetY();

					$this->SetXY($x,$x-4);
					$this->Line($topleftX, $topY, $x, $y);
					$this->Line($topleftX+14, $topY, $x+14, $y);
					$this->Line($topleftX+169, $topY, $x+169, $y);
					$this->Line($x, $y, $x+169, $y);
					$this->SetXY($x,$y);
				}
				if(strlen($surveyRow["summary"])>3)
	        	{
	        		//To push to next page if not sufficient space
					$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        		if($this->height_of_cell > $space_left)
	        		{	$this->AddPage();
	        			$this->Cell(12);
	        		}

		        	//section header
		        	$this->SetFont('Arial', 'B', 11);
		        	$x=$this->GetX();
					$y=$this->GetY();
					$this->MultiCell(14, 6, $this->letterCnt++, 1, 'C');
					//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
					$this->SetXY($x+14,$y);
					$this->MultiCell(155,6,"Course End Survery (Summary)",1);
					$this->Cell(12);
					$topleftX = $this->GetX();
					$topY = $this->GetY();

					//$this->Cell(28);
					$this->SetFont('Arial', 'B', 11);
					$this->Cell(14);
					$this->SetFont('Arial', '', 10);
					$this->MultiCell(150,8,$surveyRow["summary"],0);

					$x=$this->GetX()+12;
					$y=$this->GetY();

					$this->SetXY($x,$x-4);
					$this->Line($topleftX, $topY, $x, $y);
					$this->Line($topleftX+14, $topY, $x+14, $y);
					$this->Line($topleftX+169, $topY, $x+169, $y);
					$this->Line($x, $y, $x+169, $y);
					$this->SetXY($x,$y);
				}
			}
		}
	    
	}

	function auditOfAssesTools($conn, $row)
	{
		$sql = "SELECT * FROM cie where coursecode = ? and section = ? and year = ?";
 
		//$this->Cell(150, 8, $sql,1, 0, 'C');
		//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');

        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {
	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->SetFont('Arial', 'B', 11);
				$this->Cell(14, 6, $this->letterCnt++, 1, 0, 'C');
				$this->Cell(155,6,"Micro-level Audit of Assesment Tool(s) used",1, 1, 'L');
				$this->Cell(12);
				$topleftX = $this->GetX();
				$topY = $this->GetY();
        		$this->Ln(2);
				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(15, 6, "                        \t", 1);
				//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
				$this->SetXY($x+15,$y);
				
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(15, 6, "                        \t", 1);
				//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
				$this->SetXY($x+15,$y);
				
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(25, 6, "Remember/ Understand", 1);
				//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
				$this->SetXY($x+25,$y);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(23, 6, "Apply/ Knowledge", 1);
				$this->SetXY($x+23,$y);

				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(17, 6, "Analyze\t", 1);
				$this->SetXY($x+17,$y);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(16, 6, "Design\t", 1);
				$this->SetXY($x+16,$y);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(22, 6, "Any other (Specify)", 1);
				$this->SetXY($x+22,$y);
								
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(18, 6, "Total Marks", 1);
				$this->SetXY($x+18,$y+6);
				$testTypes = array();

				$starty=$this->GetY();
				
				$cnt = 0;
				/*for ($row = 0; $row < 2; $row++) {
					for ($col = 0; $col < 2; $col++) {
				 	$row = $testTypes["Test-1"][$col];
				 	$this->Cell(18, 6, $row['ak'] , 1, 1, 'C');   
				  }
				}*/
				while($testRow = $result->fetch_assoc())
	        	{
	        		$testTypes[$testRow["type"]][] = $testRow;
	        	}
	        	$newArray = array_keys($testTypes);
				foreach($newArray as $key)
				{
	        		$marks = 0;
					$row = $testTypes[$key][0];
					for($col = 0; $col < sizeof($testTypes[$key]); $col++)
					{
						$this->Ln(6);
						$this->Cell(28);
						$this->SetFont('Arial', 'B', 11);
						if($col == 0)
							$this->Cell(15, 6,$row["type"], 0, 0, 'C');
						else
							$this->Cell(15, 6,"", 0, 0, 'C');
						$this->Cell(15, 6,$row["qno"], 1, 0, 'C');
						$this->SetFont('Arial', '', 10);
						$marks += $row["ru"] + $row["ak"] + $row["an"] + $row["de"] + $row["ao"];
						$this->Cell(25, 6, $row["ru"], 1, 0, 'C');
						$this->Cell(23, 6, $row["ak"], 1, 0, 'C');
						$this->Cell(17, 6, $row["an"], 1, 0, 'C');
						$this->Cell(16, 6, $row["de"], 1, 0, 'C');
						$this->Cell(22, 6, $row["ao"], 1, 0, 'C');
						$this->Cell(18, 6, $marks, 1, 0, 'C');
	        			
					}
					$this->Ln(0);
					$x=$this->GetX()+28;
					$y=$this->GetY()+6;
					$this->Line($x, $y, $x+150, $y);
					$this->Line($x, $starty, $x, $y);
					$this->Line($x+15, $starty, $x+15, $y);
	        	}
	        	$this->Ln(8);
				$x=$this->GetX()+12;
				$y=$this->GetY();
				$this->SetXY($x,$x-4);
				$this->Line($topleftX, $topY, $x, $y);
				$this->Line($topleftX+14, $topY, $x+14, $y);
				$this->Line($topleftX+169, $topY, $x+169, $y);
				$this->Line($x, $y, $x+169, $y);
				$this->SetXY($x,$y);
	        }
		}
	}

	function auditOfSEE($conn, $row)
	{
		$sql = "SELECT * FROM see where coursecode = ? and section = ? and year = ?";
 
		//$this->Cell(150, 8, $sql,1, 0, 'C');
		//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');

        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {
	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->SetFont('Arial', 'B', 11);
				$this->Cell(14, 6, $this->letterCnt++, 1, 0, 'C');
				$this->Cell(155,6,"Micro-level Audit of SEE Question Paper", 1, 1, 'L');
				$this->Cell(12);
				$topleftX = $this->GetX();
				$topY = $this->GetY();
        		$this->Ln(2);
				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(15, 6, "                        \t", 1);
				//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
				$this->SetXY($x+15,$y);
				
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(15, 6, "                        \t", 1);
				//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
				$this->SetXY($x+15,$y);
				
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(25, 6, "Remember/ Understand", 1);
				//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
				$this->SetXY($x+25,$y);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(23, 6, "Apply/ Knowledge", 1);
				$this->SetXY($x+23,$y);

				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(17, 6, "Analyze\t", 1);
				$this->SetXY($x+17,$y);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(16, 6, "Design\t", 1);
				$this->SetXY($x+16,$y);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(22, 6, "Any other (Specify)", 1);
				$this->SetXY($x+22,$y);
								
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(18, 6, "Total Marks", 1);
				$this->SetXY($x+18,$y+6);
				$testTypes = array();

				$starty=$this->GetY();
				
				$cnt = 0;
				while($row = $result->fetch_assoc())
	        	{
	        		$marks = 0;
					$this->Ln(6);
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 11);
					if($cnt == 0)
					{
						$this->Cell(15, 6,"SEE", 0, 0, 'C');
						$cnt++;
					}
					else
						$this->Cell(15, 6," ", 0, 0, 'C');
					$this->Cell(15, 6,$row["qno"], 1, 0, 'C');
					$this->SetFont('Arial', '', 10);
					$marks += $row["ru"] + $row["ak"] + $row["an"] + $row["de"] + $row["ao"];
					$this->Cell(25, 6, $row["ru"], 1, 0, 'C');
					$this->Cell(23, 6, $row["ak"], 1, 0, 'C');
					$this->Cell(17, 6, $row["an"], 1, 0, 'C');
					$this->Cell(16, 6, $row["de"], 1, 0, 'C');
					$this->Cell(22, 6, $row["ao"], 1, 0, 'C');
					$this->Cell(18, 6, $marks, 1, 0, 'C');
	        			
					
					$this->Ln(0);
				}
				$x=$this->GetX()+28;
				$y=$this->GetY()+6;
				$this->Line($x, $starty, $x, $y);
				$this->Line($x+15, $starty, $x+15, $y);
	        	$this->Line($x, $y, $x+150, $y);
	        	$this->Ln(8);
				$x=$this->GetX()+12;
				$y=$this->GetY();
				$this->SetXY($x,$x-4);
				$this->Line($topleftX, $topY, $x, $y);
				$this->Line($topleftX+14, $topY, $x+14, $y);
				$this->Line($topleftX+169, $topY, $x+169, $y);
				$this->Line($x, $y, $x+169, $y);
				$this->SetXY($x,$y);
	        }
		}
	}

	function attainment($conn, $row)
	{
		$sql = "SELECT * FROM attainment where coursecode = ? and section = ? and year = ?";
 
		//$this->Cell(150, 8, $sql,1, 0, 'C');
		//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');

        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {
	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->SetFont('Arial', 'B', 11);
				$this->Cell(14, 6, $this->letterCnt++, 1, 0, 'C');
				$this->Cell(155,6,"CO Attainment", 1, 1, 'L');
				$this->Cell(12);
				$topleftX = $this->GetX();
				$topY = $this->GetY();
        		
        		$this->Ln(2);
				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(15, 6, "  CO#          \t\t    ", 1, "C");
				$this->SetXY($x+15,$y);
				
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(25, 6, "Attainment CAYm1", 1, "C");
				//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
				$this->SetXY($x+25,$y);
				
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(25, 6, "Attainment CAY", 1, "C");
				//$this->Cell(50, 8, $lectureRow["remarks"], 1, 0, 'C');
				$this->SetXY($x+25,$y);
				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(25, 6, " Target Set   ", 1, "C");
				$this->SetXY($x+25,$y);

				$x=$this->GetX();
				$y=$this->GetY();
				$this->MultiCell(61, 6, "\t\t\t\t\t\t\t            Remarks\t\t\t\t\t                     ", 1, "C");
				$this->SetXY($x+61,$y+6);
				
				$starty=$this->GetY();
				while($row = $result->fetch_assoc())
	        	{
	        		$marks = 0;
					$this->Ln(6);
					$this->Cell(28);
					$this->SetFont('Arial', 'B', 11);
					$this->Cell(15, 6,$row["co"], 1, 0, 'C');
					$this->SetFont('Arial', '', 10);
					$this->Cell(25, 6, $row["caym1"], 1, 0, 'C');
					$this->Cell(25, 6, $row["cay"], 1, 0, 'C');
					$this->Cell(25, 6, $row["target"], 1, 0, 'C');
					$this->Cell(61, 6, $row["remark"], 1, 0, 'C');
					$this->Ln(0);
				}
				$x=$this->GetX()+28;
				$y=$this->GetY()+6;
				//$this->Line($x, $starty, $x, $y);
				//$this->Line($x+15, $starty, $x+15, $y);
	        	//$this->Line($x, $y, $x+150, $y);
	        	$this->Ln(8);
				$x=$this->GetX()+12;
				$y=$this->GetY();
				$this->SetXY($x,$x-4);
				$this->Line($topleftX, $topY, $x, $y);
				$this->Line($topleftX+14, $topY, $x+14, $y);
				$this->Line($topleftX+169, $topY, $x+169, $y);
				$this->Line($x, $y, $x+169, $y);
				$this->SetXY($x,$y);
	        }
		}
	}
	
	function innovation($conn, $row)
	{
		$sql = "SELECT * FROM innovation where coursecode = ? and section = ? and year = ?";
 
		//$this->Cell(150, 8, $sql,1, 0, 'C');
		//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');

        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "ssd", $row["coursecode"], $row["section"], $row["year"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {
	        	//To push to next page if not sufficient space
				$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	        	if($this->height_of_cell > $space_left)
	        	{	$this->AddPage();
	        		$this->Cell(12);
	        	}
	        	
	        	//section header
	        	$this->SetFont('Arial', 'B', 11);
				$this->Cell(14, 6, $this->letterCnt++, 1, 0, 'C');
				$this->Cell(155,6,"Innovation in TLP/Best Practices adopted (delivery/assessment)", 1, 1, 'L');
				$this->Cell(12);
				$topleftX = $this->GetX();
				$topY = $this->GetY();
        		
        		$this->Ln(2);
				$this->Cell(28);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(85, 6, "Innovation", 1, 0, "C");
				$this->Cell(51, 6, "Remarks", 1, 0, "C");
				//$this->SetXY($x+,$y+6);
				
				$starty=$this->GetY();

				$this->Ln(6);
	        	while($row = $result->fetch_assoc())
	        	{
	        		$this->Ln(0);
	        		$this->Cell(28);
					$this->SetFont('Arial', '', 10);
					$x=$this->GetX();
					$y=$this->GetY();
					$this->MultiCell(85, 6, $row["Innovation"], 0, 'C');
					$yinnov = $this->getY();
					$this->SetXY($x+85, $y);
					$x=$this->GetX();
					$y=$this->GetY();
					$this->MultiCell(51, 6, $row["Remark"], 0, 'C');
					$yrem = $this->getY();
					$maxy = $this->max($yinnov, $yrem);
					$this->SetXY($x, $maxy);
					$this->Line($x, $starty, $x, $maxy);
	        		$this->Line($x+51, $starty, $x+51, $maxy);
	        		$this->Line($x-85, $starty, $x-85, $maxy);
	        		$this->Line($x-85, $maxy, $x+51, $maxy);
				}
				$x=$this->GetX()+28;
				$y=$this->GetY()+6;
				//$this->Line($x, $starty, $x, $y);
				//$this->Line($x+15, $starty, $x+15, $y);
	        	//$this->Line($x, $y, $x+150, $y);
	        	$this->Ln(2);
				$x=$this->GetX()+12;
				$y=$this->GetY();
				$this->SetXY($x,$x-4);
				$this->Line($topleftX, $topY, $x, $y);
				$this->Line($topleftX+14, $topY, $x+14, $y);
				$this->Line($topleftX+169, $topY, $x+169, $y);
				$this->Line($x, $y, $x+169, $y);
				$this->SetXY($x,$y);
	        }
		}
	}

	function signature($conn, $row)
	{
		//To push to next page if not sufficient space
		$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	    if($this->height_of_cell > $space_left)
	    {	
	    	$this->AddPage();
	        $this->Cell(12);
	    }
	    $this->SetFont('Arial', '', 10);
		$this->Ln(12);
	    $this->Cell(25);
		$this->Cell(51, 6, "Signature of Faculty(s)", 0, 0, "C");
	 	$this->Cell(45);
	 	$this->Cell(51, 6, "Signature of HOD", 0, 0, "C");
		$this->Ln(6);
	    $this->Cell(51, 6, "Date", 0, 0, "C");		   
	}


	function note($conn, $row)
	{
		//To push to next page if not sufficient space
		$space_left = $this->page_height -($this->GetY()+$this->bottom_margin);
	    if($this->height_of_cell > $space_left)
	    {	
	    	$this->AddPage();
	        $this->Cell(12);
	    }
	    $this->SetFont('Arial', 'B', 10);
		$this->Ln(12);
	    $this->Cell(51, 6, "Note", 0, 1, "C");
	 	$this->SetFont('Arial', '', 10);
	    $this->Cell(30);
		$this->Cell(51, 6, "(i)The Course plan is an attempt to ensure ", 0, 0, "L");
	 	$this->SetFont('Arial', 'B', 10);
		$this->Cell(16);
		$this->Cell(37, 6, "continuous improvement", 0, 0, "L");
		$this->SetFont('Arial', '', 10);
		$this->Cell(51, 6, "in the TLP of the course", 0, 1, "C");
		$this->Cell(30);
		$this->Cell(51, 6, "(ii)Calander of Events and detailed schedule included. ", 0, 0, "L");
	 
	 	$this->SetFont('Arial', 'B', 10);
		$this->Ln(12);
		$this->Cell(15);
	    $this->Cell(51, 6, "Annexures to be included", 0, 1, "C");
	 	$this->SetFont('Arial', '', 10);
	 	$this->Cell(30);
	 	$this->Cell(51, 6, "(i)All the THREE Internal Question Papers", 0, 1, "L");
		$this->Cell(30);
		$this->Cell(51, 6, "(ii)Quiz Papers/others ", 0, 1, "L");
	 	$this->Cell(30);
	 	$this->Cell(51, 6, "(ii)SEE Question Paper ", 0, 1, "L");
	}

	function table($conn, $row)
	{
		$this->COsection($conn, $row);
		$this->COPOmapping($conn, $row);
		$this->Assessment($conn, $row);
		$this->AToolsCOMapping($conn, $row);
		$this->LectureSchedule($conn, $row);
		$this->Tutorials($conn, $row);
		$this->Laboratory($conn, $row);
		$this->SelfStudy($conn, $row);
		$this->Survey($conn, $row);
		$this->auditOfAssesTools($conn, $row);
		$this->auditOfSEE($conn, $row);
		$this->attainment($conn, $row);
		$this->innovation($conn, $row);
		$this->signature($conn, $row);
		$this->note($conn, $row);
				
	}

	function Page1($conn, $row)
	{
		$this->AuditHeader();
		$this->courseDetails($row);
		$this->table($conn, $row);
			
	}
}