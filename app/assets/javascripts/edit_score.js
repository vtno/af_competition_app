$(document).on('turbolinks:load', function(){
  $('.competition_new').on('click', function(){
    toggleInputOff();
  });

  $('.score span').on('click', function(e) {
    $(e.target).parent().click();
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
    setKeypress($input);
    $input.val($cell.attr('data-previous'))
    $cell.append($input);
  }

  function toggleInputOff(){
    $revertInput = $('input').first();  
    if ($revertInput.length === 0) {
      return;
    }  
    //check and sent data to rails server
    data = $revertInput.val()
    data = parseInt(data)
    if( isNaN(data)) {
      setFlash('กรุณาใส่ข้อมูลเป็นตัวเลข');
    }
    //reset state
    $revertParent = $revertInput.parent();
    revertData = $revertParent.attr('data-previous');
    $revertSpan = $("<span></span>").text(revertData);
    $revertInput.remove();
    $revertParent.append($revertSpan);
  }

  function setFlash(text){
    $flash = $("<div class='flash error'>"+ text + "</div>");
    $('body').prepend($flash);
    $flash.on('click', function(){
      $flash.remove(); 
    });
  }

  function setKeypress($input) {
    $input.keyup(function(e){
      if(e.keyCode === 13){
        // $.ajax({ 
        //   type: "get",
        //   url: "/"
        // })
      } else if(e.keyCode === 27){
        toggleInputOff();
      } 
      else {
        return true;
      }
    })
    
  }

});
