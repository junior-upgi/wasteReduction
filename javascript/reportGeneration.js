function reinitializeReport(reportFileName){
	$(".articleContainer").slideUp(function(){			//slide away report display
		$(".articleContainer").empty();					//remove all existing reports
		//creat a article element to hold the dataTable
		$(".articleContainer").append("<article class='reportContainer "+reportFileName+"'></article>");
		//load default skeleton report html structure
		$(".reportContainer."+reportFileName).load("./html/"+reportFileName+".html",function(){
			//start data loading process
			var skeletonHtml=$("table."+reportFileName+" tbody").html();		//save a copy of the skeleton tbody html content
			$("table."+reportFileName+" tbody").empty();						//clear the tbody html content
			//ajax to retrieve body data
			$.getJSON("./dataSource/"+$("table."+reportFileName+" tbody").data("dataSource")+".php",function(tbodyData){
				$.each(tbodyData,function(recordIndex,tbodyDataRecord){			//loop through each record
					$("table."+reportFileName+" tbody").append(skeletonHtml);	//insert a skeleton row into the tbody element
					for(var fieldName in tbodyDataRecord){						//loop through each field of the indexed record
						//proceed if the current index'ed data is not of null value
						if(tbodyDataRecord[fieldName]!=null){
							//write the current index'ed database value into the table cell
							$("table."+reportFileName+" tbody tr.skeletonRow td[data-field-name='"+fieldName+"']").html(tbodyDataRecord[fieldName]);
							//preserve a copy of the original value in a custom attribute
							$("table."+reportFileName+" tbody tr.skeletonRow td[data-field-name='"+fieldName+"']").attr("data-original-value",tbodyDataRecord[fieldName]);
						}
						else{
							//if the original data is NULL, insert an empty value in the custom data field
							$("table."+reportFileName+" tbody tr.skeletonRow td[data-field-name='"+fieldName+"']").attr("data-original-value","");
						}
					}
					//supply the row with a recordIndex
					$("table."+reportFileName+" tbody tr.skeletonRow").attr("data-record-index",recordIndex);
					//remove skeletonRow class after data insertion is complete
					$("table."+reportFileName+" tbody tr.skeletonRow").removeClass("skeletonRow");
				});
				//insert footer data if dataSource is defined
				if($("table."+reportFileName+" tfoot").data("dataSource")!="none"){
					//load the footer data through ajax
					$.getJSON("./dataSource/"+$("table."+reportFileName+" tfoot").data("dataSource")+".php",function(tfootData){
						for(var fieldName in tfootData[0]){
							//proceed if the current index'ed data is not of null value
							if(tfootData[0][fieldName]!=null){
								//write the current index'ed database value into the table cell
								$("table."+reportFileName+" tfoot tr th[data-field-name='"+fieldName+"']").html(tfootData[0][fieldName]);
								//preserve a copy of the original value in a custom attribute
								$("table."+reportFileName+" tfoot tr th[data-field-name='"+fieldName+"']").attr("data-original-value",tfootData[0][fieldName]);
							}
							else{
								//if the original data is NULL, insert an empty value in the custom data field
								$("table."+reportFileName+" tfoot tr th[data-field-name='"+fieldName+"']").attr("data-original-value","");
							}
						}
						formatTableData();
						$(".articleContainer").slideDown();	//slide in the report display
					});
				}
				else{
					formatTableData();
					$(".articleContainer").slideDown();	//slide in the report display
				}
			});
		});
	});
}

function reinitializeVerificationReport(reportFileName,departmentTitle){
	$(".articleContainer").slideUp(function(){			//slide away report display
		$(".articleContainer").empty();					//remove all reports
		//creat a article element to hold the dataTable
		$(".articleContainer").append("<article class='reportContainer "+reportFileName+"'></article>");
		//load default skeleton report html structure
		$(".reportContainer."+reportFileName).load("./html/"+reportFileName+".html",function(){
			//cycle through the loaded tables and remove the ones that does not pertain to the current department selected (has no department name as class)
			$(".dataTable").each(function(){
				if(!$(this).hasClass(departmentTitle)){$(this).remove();}
			});
			//cycle through each table that remained and load relavent data into cells
			$(".dataTable").each(function(){
				var viewTitle=$("tbody",this).data("dataSource");							//get the MySQL view name for the appropriate report
				var tbodyDataSource="./dataSource/runVerificationQuery.php";				//construction a data source string
				var skeletonHtml=$("tbody",this).html();									//retrieve the tbody tr skeleton structure
				$("tbody",this).empty();													//clear the tbody html content
				$.get(tbodyDataSource,{viewTitle:viewTitle,departmentTitle:departmentTitle},function(tbodyData){
					$.each(tbodyData,function(recordIndex,tbodyDataRecord){					//loop through each record
						$("tbody[data-data-source='"+viewTitle+"']").append(skeletonHtml);	//insert a skeleton row into the tbody element
						for(var fieldIndex in tbodyDataRecord){								//loop through each field of the index'ed record
							//save the currentCell in a variable for easier access
							var currentCell=$("tbody[data-data-source='"+viewTitle+"'] tr.skeletonRow td[data-field-name='"+fieldIndex+"']");
							//proceed if the current index'ed data is not of null value
							if(tbodyDataRecord[fieldIndex]!=null){
								//write the current index'ed database value into the table cell
								currentCell.html(tbodyDataRecord[fieldIndex]);
								//preserve a copy of the original value in a custom attribute
								currentCell.attr("data-original-value",currentCell.html());
							}
							else{
								//if the original data is NULL, insert an empty value in the custom data field
								currentCell.attr("data-original-value","");
							}
							//supply a recordIndex for the current cell element
							currentCell.attr("data-record-index",recordIndex);
						}
						//supply a recordIndex for the row element
						$("tbody[data-data-source='"+viewTitle+"'] tr.skeletonRow").attr("data-record-index",recordIndex);
						//remove skeletonRow class after data insertion is complete
						$("tbody[data-data-source='"+viewTitle+"'] tr.skeletonRow").removeClass("skeletonRow");
					});
					formatTableData();
				});
			});
			$(".articleContainer").slideDown();	//slide in the report display
		});
	});
}