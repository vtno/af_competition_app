// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('turbolinks:load', function () {
  $('.btn-compet').on('click', function (e) {
    value = e.target.innerHTML
    $('#competition-name').val(value)
    $('form').submit()
  });

  $('.delete').on('click', function () {
    if (!confirm('คุณแน่ใจที่จะทำการลบการแข่งขันนี้? คุณจะไม่สามารถกู้คืนมาได้อีก')) {
      return false
    }
  });

  $('#myTab li a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  })

  $('.qualification_18').on('click', function () {
    $('.qualification_18_body').slideToggle();
  });

  $('.qualification_50').on('click', function () {
    $('.qualification_50_body').slideToggle();
  });

  $('.qualification2_18').on('click', function () {
    $('.qualification2_18_body').slideToggle();
  });

  $('.qualification2_50').on('click', function () {
    $('.qualification2_50_body').slideToggle();
  });
});
