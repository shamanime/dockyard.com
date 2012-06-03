// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require rails.validations
//= require jquery-in-field-label
//
$(function() {
  $('input, textarea').inFieldLabel();
  spam_filter = $('<input type="hidden" name="contact[js_check]" />');
  spam_filter.val('true');
  $('form#new_contact').append(spam_filter);
});

clientSideValidations.callbacks.element.fail = function (element, message, callback) {
  callback();
  if (element.data('valid') !== false) {
    element.parent().find('.error').hide().slideDown(1000);
  }
};

clientSideValidations.callbacks.form.pass = function (form) {
  form.find('input:submit').attr('value', 'Sending...').attr('disabled', 'disabled');
}

clientSideValidations.callbacks.element.pass = function (element, callback) {
  // Take note how we're passing the callback to the hide()
  // method so it is run after the animation is complete.
  element.parent().find('.error').slideUp(750);
};

