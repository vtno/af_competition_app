$(document).on('turbolinks:load', function(){
  $('body').on('click', function(){
    if($('input').length === 0) {
      return;
    }
    toggleInputOff();
  });

  $('.score').on('click', function(e){
    e.stopPropagation();
    if ($(e.target).find('span').length === 0) {
      return;
    }
    toggleInputOff();
    toggleInputOn(e);
  });

  function toggleInputOn(e) {
    $cell = $(e.target);
    $span = $cell.find('span');
    previousScore = parseInt($span.text());
    $cell.attr('data-previous', previousScore);
    $span.remove();
    $input = $("<input type='text' maxlength=2 size=2 />");
    $input.val($cell.attr('data-previous'))
    $cell.append($input);
  }

  function toggleInputOff(){
    //check and sent data to rails server
    
    //reset state
    $revertInput = $('input').first();
    $revertParent = $revertInput.parent();
    revertData = $revertParent.attr('data-previous');
    $revertSpan = $("<span></span>").text(revertData);
    $revertInput.remove();
    $revertParent.append($revertSpan);
  }

});
