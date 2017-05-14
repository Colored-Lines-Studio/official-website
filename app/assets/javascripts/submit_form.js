(function () {
  var App = {};

  App.inputFields = function () {
    return $('.input-field');
  };

  App.typeOfWorkElem = function () {
    return $('[name*="mail_us[type_of_work]"]');
  };

  App.handleInputFieldClick = function () {
    if ( $(this).data('input-type') === 'radio' ) {
      $('[data-input-type="radio"]').removeClass('checked');
    }

    $(this).toggleClass('checked').siblings('input').trigger('click');
  };

  App.ensureTypeOfWorkIsSelected = function (e) {
    var typeOfWorkElem = document.querySelector('[name*="mail_us[type_of_work]"]'),
        selectedTypes = Array.prototype.slice.call($('[name*="mail_us[type_of_work]"]'))
                              .filter(function (elem) {
                                return $(elem).prop('checked');
                              }).length;

    if (!typeOfWorkElem) return false;

    if (selectedTypes < 1) {
      typeOfWorkElem.setCustomValidity('Please select a type of work');
    } else {
      typeOfWorkElem.setCustomValidity('');
    }
  };

  App.attachEvents = function () {
    App.inputFields().on('click', App.handleInputFieldClick);
    App.typeOfWorkElem().on('change', App.ensureTypeOfWorkIsSelected);
  };

  App.init = function () {
    App.attachEvents();
    // This is to add html 5 'required' behaviour to the checkboxes (multiple checkboxes)
    App.ensureTypeOfWorkIsSelected();
  };

  $(document).on('turbolinks:load', App.init);
}());