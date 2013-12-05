$(document).ready(function() {

	var minus = $('<div class="add" id="remove"><img height="15px" width="15px" src="/assets/remove.png"><b>Remove</b></div>');
	
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
			minus.appendTo(obj);
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
			minus.appendTo(obj);
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
			minus.appendTo(obj);
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
			minus.appendTo(obj);
			$('#vehicle-fields').prepend(obj);
			obj.fadeIn();
		}
	});


	$('#page').on('click', '#remove', function() {
		$(this).parent().remove();
	});
})