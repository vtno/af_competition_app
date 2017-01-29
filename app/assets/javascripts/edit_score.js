$(document).on('turbolinks:load', function(){
  $('.competition_new').on('click', function(){
    toggleInputOff();
  });

  $('.games_edit').on('click', function(){
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
    $span.off();
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
    } else {
      updateScore($revertInput);
    }
    //reset state
    $revertParent = $revertInput.parent();
    revertData = $revertParent.attr('data-previous');
    $revertSpan = $("<span></span>").text(revertData);
    $revertSpan.on('click', function(e){
      $(e.target).parent().click();
    });
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

  function updateScore($input) {
    $row = $input.closest('tr')
    $cell = $input.closest('td')
    game_id = $row.data('id')
    round = $row.data('round')
    compet_id = $row.data('compet')
    position = $cell.data('position')
    $.ajax({ 
      type: "PUT",
      url: "/remote_api/games/" + game_id + "/score",
      data: 
        { 
          scores: { 
            score: $input.val(), 
            round: round, 
            position: position
          }, 
          competition_id: compet_id 
        },   
        success: function(response){
          toggleInputOff();
          $('.total_score').text(response.total_score)
          $cell.find('span').text(response.updated_score);
          $cell.siblings('.total-score').text(response.row_sum_score);
          if(response.range === 18) {
            $cell.siblings('.count-10').text(response.row_10_count);
            $cell.siblings('.count-9').text(response.row_9_count);
            $('.ten_count').text(response.ten_count);
            $('.nine_count').text(response.nine_count);
          } else {
            $cell.siblings('.count-x-10').text(response.x_count);
            $cell.siblings('.count-x').text(response.x_and_10_count);
          }
        }
    })
  }
  function setKeypress($input) {
    $input.keyup(function(e){
      if(e.keyCode === 13 || e.keyCode === 27){
        toggleInputOff();
      } else {
        return true;
      }
    })
    
  }

});
