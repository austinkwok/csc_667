

function get_User_Id() {
	$.ajax({
		type: 'GET',
		url: '/users',
		dataType: 'json',
		data {id: user_id},
		error: function() {
			console.log(arguments);
		}
	});
	userId = user_id
}

function get_User_Name() {
	var userId = current_user.id;
	$("#user_name").append(userId);
}

function get_Today_Meal() {
	$("#today_meal").append();
}

function get_Recent_Activity() {
	$('#recent_activity').append();
}

function get_User_Friends() {
	$("#user_friends").append();
}

$(document).ready(function() {
	//get_User_Id();
	get_User_Name();
	get_Today_Meal();
	get_Recent_Activity();
	get_User_Friends();
}