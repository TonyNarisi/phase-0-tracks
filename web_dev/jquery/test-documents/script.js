// Hides first list item when mouse goes over the header
// $("#main-header").mouseover(function() {
//   $("#highlighted-id").hide();
// });

// Slowly reveals or hides navigation list, switching with each time the mouse moves over the header
// $("#main-header").mouseover(function() {
//   $("nav ul").toggle("slow");
// });

// Immediately hides the navigation list when the mouse leaves the area of the list or of the header
// $("nav").mouseleave(function() {
//   $("nav ul").hide();
// })

// Animates the paragraph from whatever properties it holds to the specified properties in the given time
$("button").click(function() {
  $("p").animate( {
    width: "-=200"
  }, 1000);
});

// Displays string of "Yawn, I'm up" and makes Nicolas Cage image bigger after mouse moves over image
$("#nicolas-cage").mouseover(function() {
  $("#yawn").fadeIn("200").delay(1000).fadeOut("200");
  $("#nicolas-cage").delay(500).animate( {
    width: "+=500"
  }, 1000);
});