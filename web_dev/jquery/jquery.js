// Test that script is linked to html file
console.log("jquery.js is running.");

// Add Document Ready event to prevent script from running until page is loaded.

$(document).ready(function(){

  //Hide or show any links
  $("button").click(function(){
    $("a").toggle();
  });

  //Turn paragraph 1 pink on hover
  $("#p1").hover(function(){
    $(this).css("background", "pink");
  });

  //
  $("ul_block").click(function() {
    $("li:first-child").css("background-color", "yellow");
  });
});