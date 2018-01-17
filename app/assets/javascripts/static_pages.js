$(function() {
  $('.special.cards .image.dimmable').dimmer({
    on: 'hover'
  });

  $('.modal-button').click(function() {
    $('#' + $(this).data('modal')).modal('show');
  });









});
