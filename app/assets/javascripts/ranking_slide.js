$(document).on('turbolinks:load', function () {
  $('.slider').slick({
    autoplay: true,
    autoplaySpeed: 10000,
    vertical: true,
    slidesToShow: 1,
    cssEase: 'linear',
    infinite: true
  })
});
