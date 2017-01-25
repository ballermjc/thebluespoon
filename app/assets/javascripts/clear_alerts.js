$(document).on('turbolinks:load', function(){
  // alerts fade automatically after 5 seconds
  $(".alert").delay(5000).fadeOut("slow");
});
