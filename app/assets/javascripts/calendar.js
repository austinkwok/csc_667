var months = ['January', 'Febuary', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

var current = new Date();
var currentMonth = current.getMonth();
var currentYear = current.getFullYear();
var day = current.getDay();
var date = current.getDate();

function getMonthYear(month, year) {
	return month + " " + year.toString();
}

function getFirstDay(month, year) {
	var firstDay = new Date(year, month, 1);
	return firstDay.getDay();
}

function getLastDate(month, year) {
	var lastDate = new Date(year, month + 1, 0);
	return lastDate.getDate();
}

function initCalendar() {
	var firstDate = getFirstDay(currentMonth, currentYear);
	var numberDay = 1;

	$("#month_year").text(getMonthYear(months[currentMonth], currentYear));
	$("#t_body").empty();
	$("#t_body").append($("<tr>"));

	for(var i=0; i<firstDate;i++) {
		$("#t_body tr:last").append($("<td id='calendarTD'>"));	
	}

	for(var i=1; i<= 7-firstDate; i++) {
		$("#t_body tr:last").append("<td id='calendarTD' class='td" + numberDay + "'>" + numberDay.toString() + "</td>");
		if(numberDay == date && currentMonth == current.getMonth() && 
			currentYear == current.getFullYear()) {
			$("#t_body td:last").css("cssText", "background-color: #b2b2b2")
		}	
		numberDay++;
	}

	for(var i=2; i<=5; i++) {
		$("#t_body").append($("<tr>"));
		for(var j=1; j<=7; j++) {
			if (numberDay > getLastDate(currentMonth, currentYear)) {
				$("#t_body tr:last").append("<td id='calendarTD'>" + "</td>");
			} else {
				$("#t_body tr:last").append("<td id='calendarTD' class='td" + numberDay + "'>" + numberDay.toString() + "</td>");
			}
		if(numberDay == date && currentMonth == current.getMonth() && 
			currentYear == current.getFullYear()) {
			$("#t_body td:last").css("cssText", "background-color: #b2b2b2")
		}	
		numberDay++;
		}
	}
}

$(document).ready(function(){

	initCalendar();

	$("#prev_year").click(function(){
		currentYear--;
		initCalendar();
	});

	$("#next_year").click(function(){
        	currentYear++;
        	initCalendar();
    	});

	$("#prev_month").click(function(){
		if(currentMonth == 0) {
			currentMonth = 11;
			currentYear--;
		} else {
			currentMonth--;
		}
		initCalendar();
	});

	$("#next_month").click(function(){
		if(currentMonth == 11) {
			currentMonth = 0;
			currentYear++;
		} else {
			currentMonth++;
		}
		initCalendar();
	});

});
