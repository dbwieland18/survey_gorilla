$(document).ready(function() {
    $("#add_answer").on("click", function(event) {
        event.preventDefault();
        var newField = $("#answer-template").clone();
        newField.removeClass("template");
        newField.attr("id", "");
        $(".answers").append(newField);
    });

});