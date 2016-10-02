$(document).ready(function(){
	
	//if a mainMenuLabel is clicked
	$(".mainMenuLabel").click(function(){
		var originalMainMenuLabel=$(".mainMenuLabel.active").data("targetSubmenu");						//id the original mainMenuLabel
		var targetMainMenuLabel=$(this).data("targetSubmenu");											//id the target mainMenuLabel
		var targetSubmenuLabel=$(".submenuLabel.defaultLabel."+targetMainMenuLabel).data("reportFile");	//id the default submenu
		//console.log(originalMainMenuLabel+":"+targetMainMenuLabel+":"+targetSubmenuLabel);
		if(originalMainMenuLabel!=targetMainMenuLabel){										//proceed if the target is different from the original mainMenuLabel
			$(".mainMenuLabel.active").removeClass("active");								//remove 'active' class from the original mainMenuLabel
			$(".submenuLabel.active").removeClass("active");								//remove the 'active' class from the original submenuLabel
			$(".submenuContainer."+originalMainMenuLabel).slideUp(function(){				//slide the original submenu away
				$(this).removeClass("active").addClass("inactive");							//supply 'inactive' class to original submenuContainer
				$(".submenuLabel."+targetMainMenuLabel+".defaultLabel").addClass("active");	//label 'active' class on the default submenuLabel
				$(".submenuContainer."+targetMainMenuLabel).slideDown(function(){			//slide out the target submenu
					$(this).removeClass("inactive").addClass("active");						//supply 'active' class to target submenuContainer
					$("div.defaultLabel."+targetMainMenuLabel).addClass("active");			//supply 'active' class to 'defaultLabel' submenuLabel
					//if user clicks on verification menuLabel
					if(targetSubmenuLabel=="verification"){
						//console.log($("div.verify.defaultLabel").text());
						reinitializeVerificationReport(targetSubmenuLabel,$("div.verify.defaultLabel").text());
					}
					else{
						reinitializeReport(targetSubmenuLabel);												//refresh data display according to chosen menu
					}
					$(".mainMenuLabel[data-target-Submenu='"+targetMainMenuLabel+"']").addClass("active");	//label 'active' class on the target mainMenuLabel
				});
			});
			$(".extendedTitle").text($(this).text());
		}
	});
	
	//if a submenuLabel item is clicked
	$(".submenuLabel").click(function(){
		var originalSubmenuLabel=$(".submenuLabel.active").data("reportFile");		//id the original submenuLabel
		var targetSubmenuLabel=$(this).data("reportFile");							//id the target submenuLabel
		//*console.log(originalSubmenuLabel+":"+targetSubmenuLabel);*/
		//proceed if the clicked submenuLabel is NOT the currently active submenuLabel
		if(!$(this).hasClass("active")){
			$(".submenuLabel.active").removeClass("active");						//remove the 'active' class from the original submenuLabel
			//if user clicks on verification submenuLabel
			if(targetSubmenuLabel=="verification"){
				reinitializeVerificationReport(targetSubmenuLabel,$(this).text());
			}
			else{
				reinitializeReport(targetSubmenuLabel);								//refresh data display according to chosen menu
			}
			$(this).addClass("active");	//add the 'active' class to the target submenuLabel
		}
	});
	
	//timePeriodToggle filter processing on performance page
	$(document).on("click",".timePeriodToggle",function(){
		var selectedTimePeriod=$(this).data("timePeriod");		//grab the id of the clicked toggle DIV
		if(!$(this).hasClass("active")){						//if an inactive timePeriodToggle DIV is clicked
			$(this).css("background-color","#0066FF");			//change DIV background color
			$(this).css("color","white");						//change DIV font color
			$("."+selectedTimePeriod).removeClass("hidden");	//hide all elements according to the class toggled
			$(this).addClass("active");							//change add 'active' class to the toggle
		}
		else{												//if an active timePeriodToggle DIV is clicked
			$(this).css("background-color","white");		//change DIV background color
			$(this).css("color","black");					//change DIV font color
			$("."+selectedTimePeriod).addClass("hidden");	//hide all elements according to the class toggled
			$(this).removeClass("active");					//change add 'active' class to the toggle
		}
	});
	
	//departmentToggle filter processing
	$(document).on("click",".departmentToggle",function(){
		var departmentToggled=$(this).text();
		if($(this).data("status")=="inactive"){
			$(this).css("background-color","#0066FF");
			$(this).css("color","white");
			$("tbody tr td[data-field-name='departmentTitle']").each(function(){
				if($(this).text()==departmentToggled){
					$(this).closest("tr").show();
				}
			});
			$(this).data("status","active");
		}
		else{
			$(this).css("background-color","white");
			$(this).css("color","black");
			$("tbody tr td[data-field-name='departmentTitle']").each(function(){
				if($(this).text()==departmentToggled){
					$(this).closest("tr").hide();
				}
			});
			$(this).data("status","inactive");
		}
	});
	
	//monthToggle filter processing
	$(document).on("click",".monthToggle",function(){
		var monthToggled=Number($(this).data("month"));					//retrieve the month number
		if(!$(this).hasClass("active")){								//if an inactive month DIV is pressed
			$(this).css("background-color","#0066FF");					//change DIV background color
			$(this).css("color","white");								//change DIV font color
			$("tbody tr td[data-field-name='month']").each(function(){	//loop through each table record's 月份 column
				if($(this).text()==monthToggled){						//if the month shown is the same as the toggled month
					$(this).closest("tr").show();						//show the TR if hidden
				}
			});
			$(this).addClass("active");									//change the DIV to active status
		}
		else{															//if and active DIV is pressed
			$(this).css("background-color","white");					//change DIV background color
			$(this).css("color","black");								//change DIV font color
			$("tbody tr td[data-field-Name='month']").each(function(){	//loop through each table record's 月份 column
				if(Number($(this).text())==monthToggled){				//if the month shown is the same as the toggled month
					$(this).closest("tr").hide();						//hide the TR if it's visible
				}
			});
			$(this).removeClass("active");								//change the DIV to inactive status
		}
	});
	
	//divisionToggle filter processing
	$(document).on("click",".divisionToggle",function(){
		var divisionToggled=$(this).text();										//retrieve the division toggle clicked
		if(!$(this).hasClass("active")){										//if an inactive divisionToggle DIV is pressed
			$(this).css("background-color","#0066FF");							//change DIV background color
			$(this).css("color","white");										//change DIV font color
			$("tbody tr td[data-field-name='divisionTitle']").each(function(){	//loop through each table record's 部門 column
				if($(this).text()==divisionToggled){							//if the month shown is the same as the toggled month
					$(this).closest("tr").show();								//show the TR if hidden
				}
			});
			$(this).addClass("active");											//add the 'active' class
		}
		else{																	//if and active DIV is pressed
			$(this).css("background-color","white");							//change DIV background color
			$(this).css("color","black");										//change DIV font color
			$("tbody tr td[data-field-Name='divisionTitle']").each(function(){	//loop through each table record's 部門 column
				if($(this).text()==divisionToggled){							//if the month shown is the same as the toggled month
					$(this).closest("tr").hide();								//hide the TR if it's visible
				}
			});
			$(this).removeClass("active");										//remove the 'active' class
		}
	});
});