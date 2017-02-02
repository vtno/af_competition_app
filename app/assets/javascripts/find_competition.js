$(document).ready(function(){
  $('#join').on('click', function(e){
    text = $('#target-number').val();
    if (text === '' || isNaN(parseInt(text)) || text.length > 2 ) {
      e.preventDefault();      
      window.setFlash('กรุณาตรวจสอบหมายเลขเบาะของท่าน')
      return false
    } else {
      return true
    }
  });

  $('.compet').on('click', function(e){
    e.preventDefault()
    $target = $(e.target)
    $('.btn-secondary').css({
      'background-color': '#fff',
      'border-color': '#ccc'
    })
    $('#competition-id').val($target.data('id'))
    $(e.target).css({ 
      'color': '#292b2c',
      'background-color': '#e6e6e6',
      'border-color': '#adadad'
    });
  });
});
