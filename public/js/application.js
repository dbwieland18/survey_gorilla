$(document).ready(function() {
  $("#button").on("click", function( event ) {
    event.preventDefault();
    var newField = $("#answer-template").clone();
    newField.removeClass("template");
    newField.attr("id","");
    $(".answers").append(newField);
  });

});
