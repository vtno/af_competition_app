var logError = function(XMLHttpRequest, textStatus, e) {
  console.warn(e)
}

var logSuccess = function(response) {
  if (response.status == 200) {
    console.log('success')
  }
}

var updateShow = function() {
  var checkbox = $('#show_score')
  var id = $('#show-score').data('id')
  var checked = checkbox.prop('checked')
  window.checkbox = checkbox

  $.ajax({
   type: "PUT",
   url: "/remote_api/competitions/" + id ,
   data: {
     show_rank: checked
   },
   success: logSuccess,
   error: logError
 })
}

$(document).on('turbolinks:load', function() {
  var showScore = $('#show_score')
  showScore.on('change', updateShow)
})
