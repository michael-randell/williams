$(function() {
  contactSubmit()
});

var contactSubmit = function() {
  $('.form-group').bind("ajax:complete", function(event,xhr,status){
    $('.form-control').each(function(i, obj) {
      obj.value = ''
    });
  });
};
