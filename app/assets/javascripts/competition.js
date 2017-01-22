// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  $('button').on('click', function(e){
    value = e.target.innerHTML
    $('#competition-name').val(value)
    $('form').submit()
  });
});
