$(document).on("turbolinks:load", function() {
  $(".special.cards .image.dimmable").dimmer({
    on: "hover"
  });

  $(".modal-button").click(function() {
    $("#" + $(this).data("modal")).modal("show");
  });

  $(".ui.accordion").accordion({ exclusive: false });

  $(".ui.dropdown").dropdown();

  // Bouncing arrow bottom of full screen
  // Different arrow choices from Font Awesome
  // Fades away as you scroll down

  $(window).scroll(function() {
    $(".arrow").css("opacity", 1 - $(window).scrollTop() / 250);
    //250 is fade pixels
  });
});
