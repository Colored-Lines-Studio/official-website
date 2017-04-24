(function () {
  var App = {};

  App.inputFields = function () {
    return $('.input-field');
  };

  App.handleInputFieldClick = function () {
    if ( $(this).data('input-type') === 'radio' ) {
      $('[data-input-type="radio"]').removeClass('checked');
    }

    $(this).toggleClass('checked').siblings('input').trigger('click');
  };

  App.attachEvents = function () {
    App.inputFields().on('click', App.handleInputFieldClick);
  };

  App.init = function () {
    App.attachEvents();
  };

  $(document).on('turbolinks:load', App.init);
}());