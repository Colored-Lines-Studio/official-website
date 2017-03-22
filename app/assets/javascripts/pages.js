(function () {
  $(function () {
    var smoothScrollTrigger = document.querySelector('[data-smooth-scroll]'),
        smoothScrollAnchor = document.querySelector('#the-why');

    smoothScrollTrigger.addEventListener('click', function (e) {
      e.preventDefault();
      smoothScroll.animateScroll(smoothScrollAnchor, this, {
        speed: 1500
      });
    });

    new WOW().init();
  });
}());