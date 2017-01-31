$(document).on('turbolinks:load', function(){
  $('.set-button').on('click', function(e){
    e.preventDefault()
    $('.round').css({
      'display':'none'
    })
    round_number = $(e.target).data('round')
    query = ".round_" + round_number
    $(query).css({
      'display' : 'table-row'
    })
    $('#round').text(round_number)
  });

  $('.select-score').on('change', function(e){
     if ($(e.target).val() === 'x') {
      score = 11
     } else {
      score = $(e.target).val()
     }
     game_id = $(e.target).closest('.game-row').data('id')
     round = $(e.target).closest('.game-row').data('round')
     position = $(e.target).data('position')
     compet_id = $('.game-row').data('compet-id')
     $.ajax({ 
      type: "PUT",
      url: "/remote_api/games/" + game_id + "/score",
      data: 
        { 
          scores: { 
            score: score, 
            round: round, 
            position: position
          }, 
          competition_id: compet_id 
        },   
        success: function(response){
          $(e.target).parents().siblings('.total-score').text(response.row_sum_score)
          $(e.target).parents().siblings('.total-score').text(response.row_sum_score)
          if(response.range === 18) {
            $(e.target).parents().siblings('.count-10').text(response.row_10_count);
            $(e.target).parents().siblings('.count-9').text(response.row_9_count);
          } else {
            $(e.target).parents().siblings('.count-x-10').text(response.row_x_and_10_count);
            $(e.target).parents().siblings('.count-x').text(response.row_x_count);
          }
        }
    })
  });
});
