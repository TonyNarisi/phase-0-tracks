$("#products-nav").click(function() {
  if ($(".drop-down-menu").is(":visible")) {
    $(".drop-down-menu").slideUp();
  }
  if ($("#products-list").is(":visible") === false) {
    $("#products-list").slideDown();
}});

$("#about-us-nav").click(function() {
  if ($(".drop-down-menu").is(":visible")) {
    $(".drop-down-menu").slideUp();
  }
  if ($("#about-us-list").is(":visible") === false) {
    $("#about-us-list").slideDown();
}});

$("#news-nav").click(function() {
  if ($(".drop-down-menu").is(":visible")) {
    $(".drop-down-menu").slideUp();
  }
  if ($("#news-list").is(":visible") === false) {
    $("#news-list").slideDown();
}});

$("#contact-nav").click(function() {
  if ($(".drop-down-menu").is(":visible")) {
    $(".drop-down-menu").slideUp();
  }
  if ($("#contact-list").is(":visible") === false) {
    $("#contact-list").slideDown();
}});

$("#body-text").click(function() {
  if ($(".drop-down-menu").is(":visible")) {
    $(".drop-down-menu").slideUp();
  }
});