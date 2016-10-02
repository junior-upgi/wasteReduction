function formatTableData(){
	//format the table values
	$(".percent").each(function(){	//percentage value
		if($(this).text()!=""){
			//perform rounding calculation before inserting the value
			var percentValue=Math.round($(this).data("originalValue")*10000)/10000;
			//format value into percentage format and insert into the current cell
			$(this).text(percentValue.toLocaleString("zh-Hant-TW",{style:"percent",maximumFractionDigits:"2"}));
		}
	});
	$(".currency").each(function(){	//currency value
		if($(this).text()!=""){
			//format value into currency format and insert into the current cell
			$(this).text($(this).data("originalValue").toLocaleString("zh-Hant-TW",{style:"currency",currencyDisplay:"symbol",currency:"TWD",maximumFractionDigits:"0"}));
		}
	});
	$(".currencyShorten").each(function(){	//currency to be shortened to the ten thousand
		if($(this).text()!=""){
			//perform rounding calculation before inserting the value
			var currencyShortenValue=Math.round($(this).data("originalValue")/100)/100;
			//format value into currency format and insert into the current cell
			$(this).text(currencyShortenValue.toLocaleString("zh-Hant-TW",{style:"currency",currencyDisplay:"symbol",currency:"TWD",maximumFractionDigits:"2"}));
		}
	});
	$(".largeQuantity").each(function(){	//largeQuantity value
		if($(this).text()!=""){
			//format value into largeQuantity format and insert into the current cell
			$(this).text($(this).data("originalValue").toLocaleString("zh-Hant-TW",{maximumFractionDigits:"2"}));
		}
	});
}

$(document).on("mouseover","tbody.stripe td",function(){
	var currentFieldName=$(this).data("fieldName");
	$(this).closest("table").find("td[data-field-name='"+currentFieldName+"']").each(function(){
		$(this).css("background-color","#CC6699").css("color","black");
	});
	$(this).closest("table").find("th[data-field-name='"+currentFieldName+"']").each(function(){
		$(this).css("background-color","#CC6699").css("color","black");
	});
});

$(document).on("mouseleave","tbody.stripe td",function(){
	var previousFieldName=$(this).data("fieldName");
	$(this).closest("table").find("td[data-field-name='"+previousFieldName+"']").each(function(){
		$(this).removeAttr("style");
	});
	$(this).closest("table").find("th[data-field-name='"+previousFieldName+"']").each(function(){
		$(this).removeAttr("style");
	});
});


$(document).on("mouseover","tbody.divisionGroupHighlight td",function(){
	var currentFieldName=$(this).data("fieldName");
	var currentDivisionTitle=$(this).closest("tr").children("[data-field-name='divisionTitle']").text();
	$(this).closest("table").find("td[data-field-name='"+currentFieldName+"']").each(function(){
		$(this).css("background-color","#CC6699").css("color","white");
	});
	$(this).closest("table").find("th[data-field-name='"+currentFieldName+"']").each(function(){
		$(this).css("background-color","#CC6699").css("color","white");
	});
	$(this).closest("table").find("td[data-field-name='divisionTitle']").each(function(){
		if($(this).text()==currentDivisionTitle){
			$(this).closest("tr").css("background-color","#CC6699").css("color","black");
			if($(this).next().next().next().text()=="同期差異"){
				$(this).closest("tr").children().css("background-color","#9966FF").css("color","white");
			}
		}
	});
});

$(document).on("mouseleave","tbody.divisionGroupHighlight td",function(){
	var previousFieldName=$(this).data("fieldName");
	var previousDivisionTitle=$(this).closest("tr").children("[data-field-name='divisionTitle']").text();
	$(this).closest("table").find("td[data-field-name='"+previousFieldName+"']").each(function(){
		$(this).removeAttr("style");
	});
	$(this).closest("table").find("th[data-field-name='"+previousFieldName+"']").each(function(){
		$(this).removeAttr("style");
	});
	$(this).closest("table").find("td[data-field-name='divisionTitle']").each(function(){
		if($(this).text()==previousDivisionTitle){
			$(this).closest("tr").removeAttr("style");
			$(this).closest("tr").children().removeAttr("style");
		}
	});
});

$(document).on("mouseover","tbody.departmentGroupHighlight td",function(){
	var currentFieldName=$(this).data("fieldName");
	var currentDepartmentTitle=$(this).closest("tr").children("[data-field-name='departmentTitle']").text();
	$(this).closest("table").find("td[data-field-name='"+currentFieldName+"']").each(function(){
		$(this).css("background-color","#CC6699").css("color","white");
	});
	$(this).closest("table").find("th[data-field-name='"+currentFieldName+"']").each(function(){
		$(this).css("background-color","#CC6699").css("color","white");
	});
	$(this).closest("table").find("td[data-field-name='departmentTitle']").each(function(){
		if($(this).text()==currentDepartmentTitle){
			$(this).closest("tr").css("background-color","#CC6699").css("color","black");
			if($(this).next().next().text()=="同期差異"){
				$(this).closest("tr").children().css("background-color","#9966FF").css("color","white");
			}
		}
	});
});

$(document).on("mouseleave","tbody.departmentGroupHighlight td",function(){
	var previousFieldName=$(this).data("fieldName");
	var previousDepartmentTitle=$(this).closest("tr").children("[data-field-name='departmentTitle']").text();
	$(this).closest("table").find("td[data-field-name='"+previousFieldName+"']").each(function(){
		$(this).removeAttr("style");
	});
	$(this).closest("table").find("th[data-field-name='"+previousFieldName+"']").each(function(){
		$(this).removeAttr("style");
	});
	$(this).closest("table").find("td[data-field-name='departmentTitle']").each(function(){
		if($(this).text()==previousDepartmentTitle){
			$(this).closest("tr").removeAttr("style");
			$(this).closest("tr").children().removeAttr("style");
		}
	});
});