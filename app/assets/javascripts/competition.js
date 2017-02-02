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

  $('.final_50').on('click', function () {
    $('.final_50_body').slideToggle();
  });

  $('.final_18').on('click', function () {
    $('.final_18_body').slideToggle();
  });

  $('.sixteen_final_50').on('click', function () {
    $('.sixteen_final_50_body').slideToggle();
  });

  $('.sixteen_final_18').on('click', function () {
    $('.sixteen_final_18_body').slideToggle();
  });

  $('.quarter_final_50').on('click', function () {
    $('.quarter_final_50_body').slideToggle();
  });
  $('.quarter_final_18').on('click', function () {
    $('.quarter_final_18_body').slideToggle();
  });

  $('.semi_final_50').on('click', function () {
    $('.semi_final_50_body').slideToggle();
  });
  $('.semi_final_18').on('click', function () {
    $('.semi_final_18_body').slideToggle();
  });
});
