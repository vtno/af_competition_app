$(document).ready(function(){
  $('.compet').on('click', function(e){
    e.preventDefault()
    $('.btn-secondary').css({
      'background-color': '#fff',
      'border-color': '#ccc'
    })
    $('#competition-name').val(e.target.innerHTML)
    $(e.target).css({ 
      'color': '#292b2c',
      'background-color': '#e6e6e6',
      'border-color': '#adadad'
    });
  });
});
