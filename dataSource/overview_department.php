<?php
	header("Content-Type:application/json;charset=utf-8");
	try{
		$connection=new PDO('mysql:host=127.0.0.1;dbname=wasteReduction;charset=utf8','wasteReduction','wasteReduction');
		$connection->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	}catch(PDOException $error){
		die($error->getMessage());
	}
	
	$queryString="SELECT * FROM `wasteReduction`.`overview_department`;";
	$resultSet=$connection->query($queryString);
	$resultSet->setFetchMode(PDO::FETCH_ASSOC);
	while($record=$resultSet->fetch()){
		$overview_department[]=$record;
	}
	echo(json_encode($overview_department,
		JSON_UNESCAPED_UNICODE|
		JSON_PRETTY_PRINT|
		JSON_NUMERIC_CHECK|
		JSON_PRESERVE_ZERO_FRACTION));
	$connection=null;
?>