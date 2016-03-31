// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).on('click', '.js-menu-toggle', function () {
  $('.js-menu-target').slideToggle();
});

$(function () {
  $('.js-test-form').bind('submit', function () {
    disableSubmitButton('.js-test-form');
  });
})

function disableSubmitButton (form) {
  $submitButton = $(form).find('input[type="submit"]');  

  $submitButton.prop('disabled', true);
  $submitButton.attr('value', 'Gerando...');
}

function enableSubmitButton (form) {
  $submitButton = $(form).find('input[type="submit"]');  

  $submitButton.prop('disabled', false);
  $submitButton.attr('value', 'Gerar novamente');
}