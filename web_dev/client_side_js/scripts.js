console.log("Scripts running!");

var paragraphs = document.getElementsByClassName('content');

function addBlueBorder(event) {
  for (var i = 0; i < paragraphs.length; i++) {
  paragraphs[i].style.border = "10px solid blue";
  };
}

var header = document.getElementById("firstHeader");

header.addEventListener("click", addBlueBorder);