<?php
ini_set('display_errors', 1); 
error_reporting(E_ALL);
$db_host = "localhost";
$db_user = "root";
$db_password = "phpwind.net";

mysql_connect("$db_host","$db_user","$db_password") or die("Error: No BD Connection");

mysql_select_db("cang7");

$cang7_tables=mysql_query("show tables");

while($cang7_table=mysql_fetch_array($cang7_tables)){
	echo "check table $cang7_table[0],  ";
	$check_rs = mysql_query("check table `$cang7_table[0]`");
	$check_arr = mysql_fetch_array($check_rs);
	echo "table status: $check_arr[3] <br>";
	if($check_arr[3]!="OK"){
		$repair_rs = mysql_query("repair table `$cang7_table[0]`"); 
		$repir_arr=mysql_fetch_array($rs);
		echo "repair table $cang7_table[0] , result: $repir_arr[3] <br>";
	}
}
?>