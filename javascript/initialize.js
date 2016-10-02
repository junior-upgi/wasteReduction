$(document).ready(function(){
	var reportFileName=$(".submenuLabel.active").data("reportFile");												//grab the report name to load
	$(".articleContainer").append("<article class='reportContainer "+reportFileName+"'></article>");				//creat a article element to hold the dataTable
	$(".reportContainer."+reportFileName).load("html/"+reportFileName+".html",function(){							//load default skeleton report html structure
		var skeletonHtml=$("table."+reportFileName+" tbody").html();												//save a copy of the skeleton tbody html content
		$("table."+reportFileName+" tbody").empty();																//clear the tbody html content
		$.getJSON("dataSource/"+$("table."+reportFileName+" tbody").data("dataSource")+".php",function(tbodyData){	//ajax to retrieve body data
			$.each(tbodyData,function(recordIndex,tbodyDataRecord){													//loop through each record
				$("table."+reportFileName+" tbody").append(skeletonHtml);											//insert a skeleton row into the tbody element
				for(var fieldName in tbodyDataRecord){																//loop through each field of the indexed record
					if(tbodyDataRecord[fieldName]!=null){															//proceed if the current index'ed data is not of null value
						//write the current index'ed database value into the table cell
						$("table."+reportFileName+" tr.skeletonRow td[data-field-name='"+fieldName+"']").html(tbodyDataRecord[fieldName]);
						//preserve a copy of the original value in a custom attribute
						$("table."+reportFileName+" tr.skeletonRow td[data-field-name='"+fieldName+"']").attr("data-original-value",tbodyDataRecord[fieldName]);
					}
					else{
						//if the original data is NULL, insert an empty value in the custom data field
						$("table."+reportFileName+" tr.skeletonRow td[data-field-name='"+fieldName+"']").attr("data-original-value","");
					}
				}
				$("table."+reportFileName+" tbody tr.skeletonRow").attr("data-record-index",recordIndex);	//supply the row with a recordIndex
				$("table."+reportFileName+" tbody tr.skeletonRow").removeClass("skeletonRow");				//remove skeletonRow class after data insertion is complete
			});
			//proceed to insert footer data if dataSource is defined in the reportFile
			if($("table."+reportFileName+" tfoot").data("dataSource")!="none"){
				//load the footer data through ajax
				$.getJSON("./dataSource/"+$("table."+reportFileName+" tfoot").data("dataSource")+".php",function(tfootData){
					for(var fieldName in tfootData[0]){														//loop through each field existed in the data record
						if(tfootData[0][fieldName]!=null){													//proceed if the current index'ed data is not of null value
							//write the current index'ed database value into the table cell
							$("table."+reportFileName+" tfoot tr th[data-field-Name='"+fieldName+"']").html(tfootData[0][fieldName]);
							//preserve a copy of the original value in a custom attribute
							$("table."+reportFileName+" tfoot tr th[data-field-Name='"+fieldName+"']").attr("data-original-value",tfootData[0][fieldName]);
						}
						else{
							//if the original data is NULL, insert an empty value in the custom data field
							$("table."+reportFileName+" tfoot tr th[data-field-Name='"+fieldName+"']").attr("data-original-value","");
						}
					}
					formatTableData();
					//slide in the report display
					$(".articleContainer").slideDown();
				});
			}
			else{
				formatTableData();
				//slide in the report display
				$(".articleContainer").slideDown();
			}
		});
	});
});