$(document).on('turbolinks:load', function () {
  $('.slider').slick({
    autoplay: true,
    autoplaySpeed: 1000,
    vertical: true,
    slidesToShow: 1,
    cssEase: 'linear',
    infinite: true
  })
});
