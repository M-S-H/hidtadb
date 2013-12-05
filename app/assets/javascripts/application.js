// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require additional-methods.js
//= require additional-methods.min.js
//= require jquery.validate.js
//= require jquery.validate.min.js
//= require twitter/bootstrap
//= require_tree .
//= require bootstrap-affix.js
//= require bootstrap-alert.js
//= require bootstrap-button.js
//= require bootstrap-carousel.js
//= require bootstrap-collapse.js
//= require bootstrap-dropdown.js
//= require bootstrap-modal.js
//= require bootstrap-popover.js
//= require bootstrap-scrollspy.js
//= require bootstrap-tab.js
//= require bootstrap-tooltip.js
//= require bootstrap-transition.js
//= require bootstrap-typeahead.js



$(function () {
  $("refresh_seizure").popover({ 
    html : true,
    title: "Do you really want to do this?",
    content: "<b>This will refresh this data and reset the 5 year time fram for sotoring data.</b>"
  });
});

$(function () {
  $("refresh_vehicle").popover({ 
    html : true,
    title: "Do you really want to do this?",
    content: "<b>This will refresh this data and reset the 5 year time fram for sotoring data.</b>"
  });
});

$(function () {
  $("refresh_subject").popover({ 
    html : true,
    title: "Do you really want to do this?",
    content: "<b>This will refresh this data and reset the 5 year time fram for sotoring data.</b>"
  });
});

$(function () {
	$("#new_subject").validate();
	jQuery.validator.addMethod(
      "textonly", 
      function(value, element)
      {
        valid = false;
        check = /[^-\.a-zA-Z\s\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02AE]/.test(value);
        if(check==false)
          valid = true;
        return this.optional(element) || valid;
      }, 
     jQuery.format("Please only enter letters, spaces, periods, or hyphens.")
   );
});

$(function () {
	$("#new_vehicle").validate();
	jQuery.validator.addMethod(
      "textonly", 
      function(value, element)
      {
        valid = false;
        check = /[^-\.a-zA-Z\s\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02AE]/.test(value);
        if(check==false)
          valid = true;
        return this.optional(element) || valid;
      }, 
     jQuery.format("Please only enter letters, spaces, periods, or hyphens.")
   );
	
});

$(function () {
	$("#new_siezure_report").validate();
	jQuery.validator.addMethod(
      "textonly", 
      function(value, element)
      {
        valid = false;
        check = /[^-\.a-zA-Z\s\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02AE]/.test(value);
        if(check==false)
          valid = true;
        return this.optional(element) || valid;
      }, 
     jQuery.format("Please only enter letters, spaces, periods, or hyphens.")
   );
});

// validate signup form on keyup and submit
/*$(function () {
	$("#new_subject").validate({
		rules: {
			subject_name: {
				required: true,
				minlength: 2
			},
			subject_ssn: {
				digits: true,
				minlength: 9
			},
			subject_gender: {
				required: true,
				digits: false
			},
			subject_zip: {
				digits: true,
				minlength: 5
			}
	});
});*/
/*$( document ).ready(function() 
{
	// validate subject form on keyup and submit
	$("#new_subject").validate({
		rules: {
			name: {
				required: true,
				minlength: 2
			},
			ssn: {
				required: true,
				minlength: 9
			}
		}
	});
}*/