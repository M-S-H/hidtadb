$(document).ready(function() {
	
	$('#drug-s').click(function() {	
		var contents;
		size = $('#drug-fields .addition').size();

		$.ajax({
			type: "GET",
			url: "/add_fields/drug/" + size,
			dataType: "text",
			success: function(data) {
				contents = data;
			},
			async: false
		});
		
		if (contents != "blank")
		{
			var obj = $(contents).hide()
			$('#drug-fields').prepend(obj);
			obj.fadeIn();
		}
	});


	$('#weapon-s').click(function() {	
		var contents;
		size = $('#weapon-fields .addition').size();

		$.ajax({
			type: "GET",
			url: "/add_fields/weapon/" + size,
			dataType: "text",
			success: function(data) {
				contents = data;
			},
			async: false
		});
		
		if (contents != "blank")
		{
			var obj = $(contents).hide()
			$('#weapon-fields').prepend(obj);
			obj.fadeIn();
		}
	});


	$('#sub').click(function() {	
		var contents;
		size = $('#subject-fields .addition').size();

		$.ajax({
			type: "GET",
			url: "/add_fields/subject/" + size,
			dataType: "text",
			success: function(data) {
				contents = data;
			},
			async: false
		});
		
		if (contents != "blank")
		{
			var obj = $(contents).hide()
			$('#subject-fields').prepend(obj);
			obj.fadeIn();
		}
	});


	$('#veh').click(function() {	
		var contents;
		size = $('#vehicle-fields .addition').size();

		$.ajax({
			type: "GET",
			url: "/add_fields/vehicle/" + size,
			dataType: "text",
			success: function(data) {
				contents = data;
			},
			async: false
		});
		
		if (contents != "blank")
		{
			var obj = $(contents).hide()
			$('#vehicle-fields').prepend(obj);
			obj.fadeIn();
		}
	});
})