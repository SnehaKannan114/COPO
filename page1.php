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
 TEMPLATE NAME:page1
 */

//get_header(); ?>



<form action="./insert.php" method="post">
	<b>Course Code</b>
	<input type="text" name="coursecode"  maxlength="10" style="width: 300px;"><br>
	<b>Section</b>
	<input type="text" name="section" maxlength="1"><br>
	<b>Year</b>
	<input type="number" name="year" maxlength="4"><br>	
	<b>Course Title</b>
	<input type="text" name="coursetitle"><br>
	<b>Credits</b>
	<input type="number" name="credits"><br>
	<b>Course Type</b>
	<select name="coursetype">
	<option value="core">Core</option>
	<option value="elective">Elective</option>
	</select>
	<br>
	<b>No. of Students</b>
	<input type="number" name="noofstudents"><br>
	<b>Program</b>
	<input type="text" name="program">
	<b>Faculty</b>
	<input type="text" name="faculty"><br>
	<b>Semester</b>
	<input type="number" name="semester" min="1" max="10"><br>
	
	<b>Course Outcome</b><br><br>
	
	<table>
		<tr>
			<td>CO1</td>
			<td><input type="text" name="co1"></td>
	</tr>
	<tr>
			<td>CO2</td>
			<td><input type="text" name="co2"></td>
	</tr>
	<tr>
			<td>CO3</td>
			<td><input type="text" name="co3"></td>
	</tr>
	<tr>
			<td>CO4</td>
			<td><input type="text" name="co4"></td>
	</tr>
	<tr>
			<td>CO5</td>
			<td><input type="text" name="co5"></td>
	</tr>
	<tr>
			<td>CO6</td>
			<td><input type="text" name="co6"></td>
	</tr>
	<tr>
			<td>CO7</td>
			<td><input type="text" name="co7"></td>
	</tr>
	<tr>
			<td>CO8</td>
			<td><input type="text" name="co8"></td>
	</tr>
</table>
	<b>CO-PO Mapping</b><br><br>
	<table cellspacing="20px">
	<tr>
		<td></td>
		<td>PO1</td>
		<td>PO2</td>
		<td>PO3</td>
		<td>PO4</td>
		<td>PO5</td>
		<td>PO6</td>
		<td>PO7</td>
		<td>PO8</td>
		<td>PO9</td>
		<td>P10</td>
		<td>P11</td>
		<td>P12</td>
		<td>PSO1</td>
		<td>PSO2</td>
		<td>PSO3</td>
	</tr>
	<tr>
			<td>CO1</td>
			<td><select name="11">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="12">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="13">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="14">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="15">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="16">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="17">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="18">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="19">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="110">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="111">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="112">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="113">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="114">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="115">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
	</tr>
	<tr>
			<td>CO1</td>
			<td><select name="21">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="22">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="23">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="24">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="25">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="26">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="27">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="28">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="29">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="210">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="211">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="212">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="213">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="214">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="215">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
	</tr>
	<tr>
			<td>CO1</td>
			<td><select name="31">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="32">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="33">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="34">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="35">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="36">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="37">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="38">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="39">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="310">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="311">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="312">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="313">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="314">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="315">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
	</tr>
	<tr>
			<td>CO1</td>
			<td><select name="41">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="42">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="43">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="44">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="45">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="46">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="47">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="48">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="49">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="410">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="411">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="412">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="413">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="414">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="415">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
	</tr>
	<tr>
			<td>CO1</td>
			<td><select name="51">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="52">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="53">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="54">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="55">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="56">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="57">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="58">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="59">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="510">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="511">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="512">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="513">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="514">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="515">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
	</tr>
	<tr>
			<td>CO1</td>
			<td><select name="61">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="62">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="63">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="64">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="65">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="66">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="67">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="68">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="69">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="610">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="611">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="612">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="613">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="614">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="615">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
	</tr>
	<tr>
			<td>CO1</td>
			<td><select name="71">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="72">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="73">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="74">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="75">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="76">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="77">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="78">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="79">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="710">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="711">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="712">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="713">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="714">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="715">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
	</tr>
	<tr>
			<td>CO1</td>
			<td><select name="81">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="82">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="83">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="84">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="85">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="86">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="87">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="88">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="89">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="810">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="811">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="812">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="813">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="814">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
		<td><select name="815">
				<option value="0">N/A</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select></td>
	</tr>
	
</table>
	<b>Assessment Tool</b><br><br>
	<table>
			<tr>
				<th>Tool</th>
				<th>Remarks</th>
				<th>Marks</th>
				
			</tr>
			<tr>
				<td>Internals</td>
				<td><input type="text" name="internalremarks" value="Best 2 of 3"></td>
				<td><input type="number" name="internalmarks"></td>
			</tr>
			<tr>
				<td>Quiz</td>
				<td><input type="text" name="quizremarks" value="One/Average of Two/Best 2 of 3/Any Other"></td>
				<td><input type="number" name="quizmarks"></td>
			</tr>
			<tr>
				<td>Lab Components</td>
				<td><input type="text" name="labremarks" value="If Applicable"></td>
				<td><input type="number" name="labmarks"></td>
			</tr>
			<tr>
				<td>Self Study Components</td>
				<td><input type="text" name="selfremarks" value="If Applicable"></td>
				<td><input type="number" name="selfmarks"></td>
			</tr>
			<tr>
				<td>AAT Components</td>
				<td><input type="text" name="aatremarks" value="Seminar/Mini-project/any other" ></td>
				<td><input type="number" name="aatmarks"></td>
			</tr>
			<tr >
<td align="center" colspan="2">Total</td>
				<td>50</td>
			</tr>
			
		</table>
	<input type="submit" name="sub" value="Submit" >
	<a href="http://localhost/bmsce/faculty-form-2/">	<input type="button" value="Next"></a>
</form>
		