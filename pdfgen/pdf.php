<?php
require_once('../fpdf.php');

class PDF extends FPDF
{
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
		$this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
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
		$this->Cell(120,10,$row["coursetitle"],0,0,'L');
		$this->Ln(6);

		$this->SetFont('Arial','B',9);
		$this->Cell(12);
		$this->Cell(40,10,'Course Code: ',0,0,'L');
		$currentY = $this->GetY() + 7;
		$this->SetFont('Arial','',7);
		$this->line(65,$currentY,185,$currentY);
		$this->SetFont('Arial','',11);
		$this->cell(30);
		$this->Cell(120,10,$row["coursecode"],0,0,'L');
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
		$this->Cell(100,10,$row["coursetype"],0,0,'L');
		
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
		$this->Cell(120,10,$row["program"],0,0,'L');
		
		$this->Ln(6);
		
		$this->SetFont('Arial','B',9);
		$this->Cell(12);
		$this->Cell(40,10,'Faculty: ',0,0,'L');
		$currentY = $this->GetY() + 7;
		$this->SetFont('Arial','',7);
		$this->line(65,$currentY,185,$currentY);
		$this->SetFont('Arial','',11);
		$this->cell(30);
		$this->Cell(120,10,$row["faculty"],0,0,'L');
		
	}

	function COsection($conn, $row)
	{
		$sql = "SELECT * FROM courseoutcome where coursecode = ?";
 
		//$this->Cell(150, 8, $sql,1, 0, 'C');
		//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');


        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "s", $row["coursecode"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {

	        	$courseCodeRow = $result->fetch_assoc();

	        	//section header
	        	$this->Ln(12);
				$this->Cell(12);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(14,6,"A",1, 0, 'C');
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
					$this->MultiCell(130, 8, $courseCodeRow["co{$rowCnt}"],1);
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
			$sql = "SELECT * FROM copo where coursecode = ? and cono = ?" ;
	 
			//$this->Cell(150, 8, $sql,1, 0, 'C');
			//$this->Cell(150, 8, $row["coursecode"],1, 1, 'L');


	        if($stmt = mysqli_prepare($conn, $sql))
	        {
		        // Bind variables to the prepared statement as parameters
		        mysqli_stmt_bind_param($stmt, "sd", $row["coursecode"], $rowCnt);
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


		//print
		$this->Ln(4);
		$this->Cell(12);
		$this->SetFont('Arial', 'B', 11);
		$this->Cell(14,6,"B",1, 0, 'C');
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
		$sql = "SELECT * FROM assesmenttool where coursecode = ?";
        if($stmt = mysqli_prepare($conn, $sql))
        {
	        // Bind variables to the prepared statement as parameters
	        mysqli_stmt_bind_param($stmt, "s", $row["coursecode"]);
	        mysqli_stmt_execute($stmt);
	        $result = mysqli_stmt_get_result($stmt);
	        //echo mysqli_num_rows($result);
	        if(mysqli_num_rows($result) > 0)
	        {

	        	$testRow = $result->fetch_assoc();

	        	//section header
	        	$this->Ln(4);
				$this->Cell(12);
				$this->SetFont('Arial', 'B', 11);
				$this->Cell(14,6,"C",1, 0, 'C');
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

	function table($conn, $row)
	{
		$this->COsection($conn, $row);
		$this->COPOmapping($conn, $row);
		$this->Assessment($conn, $row);
	}

	function Page1($conn, $row)
	{
		$this->AuditHeader();
		$this->courseDetails($row);
		$this->table($conn, $row);
			
	}
}