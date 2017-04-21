$(function () {
  new WOW({mobile: false}).init();
});

$(document).on('turbolinks:load', function () {
  var smoothScrollTrigger = document.querySelector('[data-smooth-scroll]'),
      smoothScrollAnchor = document.querySelector('#the-why');

  if (smoothScrollTrigger) {
    smoothScrollTrigger.addEventListener('click', function (e) {
      e.preventDefault();
      smoothScroll.animateScroll(smoothScrollAnchor, this, {
        speed: 1500
      });
    });
  }
});