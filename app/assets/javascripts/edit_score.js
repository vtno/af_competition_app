$(document).on('turbolinks:load', function(){
  $('.competition_new').on('click', function(e){
    toggleInputOff($('input').first());
  });

  $('.games_edit').on('click', function(e){
    toggleInputOff($('input').first());
  });

  $('.players_score_card').on('click', function(e){
    toggleInputOff($('input').first());
  });

  $('.score span').on('click', function(e) {
    $(e.target).parent().click();
  });
  
  $('.score').on('click', function(e){
    e.stopPropagation();
    if ($(e.target).find('span').length === 0) {
      return;
    }

    toggleInputOff($('input').first());
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

  function toggleInputOff($revertInput){ 
    if ($revertInput.length === 0) {
      resetState($revertInput)
      return;
    }  
    //check and sent data to rails server
    data = $revertInput.val()
    if (data != 'x') {
      data = parseInt(data)
      if( isNaN(data)) {
        setFlash('กรุณาใส่ข้อมูลเป็นตัวเลข');
        return;
      }
    }
    updateScore($revertInput);
    resetState($revertInput)
  }

  function resetState($revertInput) {
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

  window.setFlash = function setFlash(text){
    $flash = $('.flash')
    $flash.off()
    $flash.remove()
    $flash = $("<div class='flash error'>"+ text + "</div>");
    $('body').prepend($flash);
    $flash.on('click', function(){
      $flash.remove(); 
    });
  }

  function updateScore($input) {
    if($input.val() === 0){
      return;
    }
    $row = $input.closest('tr')
    $cell = $input.closest('td')
    game_id = $row.data('id')
    round = $row.data('round')
    compet_id = $row.data('compet')
    position = $cell.data('position')
    $point = $('#point')
    point = 0
    pointPos = $point.data('position')
    if ($input.val() === 'x') {
      score = 11
    } else if ($input.parents().attr('id') === 'point') {
      score = 0 
      point = $input.val()
    } else {
      score = $input.val()
    }
    $.ajax({ 
      type: "PUT",
      url: "/remote_api/games/" + game_id + "/score",
      data: 
        { 
          scores: { 
            score: score, 
            round: round, 
            position: position,
            point: point,
            pointPos: pointPos
          }, 
          competition_id: compet_id 
        },   
        success: function(response){
          toggleInputOff($('input').first());
          $('#point').text(response.point)
          $('.total_score').text(response.total_score)
          if(response.updated_score === '11') {
            $cell.find('span').text('x');
          } else {
            $cell.find('span').text(response.updated_score);
          }
          $cell.siblings('.total-score').text(response.row_sum_score);
          if(response.range === 18) {
            $cell.siblings('.count-10').text(response.row_10_count);
            $cell.siblings('.count-9').text(response.row_9_count);
            $('.ten_count').text(response.ten_count);
            $('.nine_count').text(response.nine_count);
          } else {
            $cell.siblings('.count-x-10').text(response.row_x_and_10_count);
            $cell.siblings('.count-x').text(response.row_x_count);
          }
        }
    })
  }
  function setKeypress($input) {
    $input.keyup(function(e){
      if(e.keyCode === 13 || e.keyCode === 27){
        toggleInputOff($('input').first());
      } else {
        return true;
      }
    })
    
  }

});
