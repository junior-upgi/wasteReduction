<?php
	header("Content-Type:application/json;charset=utf-8");
	try{
		$connection=new PDO('mysql:host=127.0.0.1;dbname=wasteReduction;charset=utf8','wasteReduction','wasteReduction');
		$connection->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	}catch(PDOException $error){
		die($error->getMessage());
	}
	
	$queryString="SELECT * FROM `wasteReduction`.`expenseComparison_division_2016_annual`;";
	$resultSet=$connection->query($queryString);
	$resultSet->setFetchMode(PDO::FETCH_ASSOC);
	while($record=$resultSet->fetch()){
		$expenseComparison_division_2016_annual[]=$record;
	}
	echo(json_encode($expenseComparison_division_2016_annual,
		JSON_UNESCAPED_UNICODE|
		JSON_PRETTY_PRINT|
		JSON_NUMERIC_CHECK|
		JSON_PRESERVE_ZERO_FRACTION));
	$connection=null;
?>