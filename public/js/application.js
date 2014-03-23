var answer = '<li><input type="text" name="possible[]" placeholder="Answer"/><button class="delete">X</button></li>';

var question = '<li><input type="text" name="question" placeholder="Question"/><button class="delete">X</button><button id="add_answer">Add Answer</button><ul>' + answer + '</ul></li>';

$(document).ready(function() {

    $('survey > ol').append(question)

    $('#survey').on('click', '#add_question', function(event) {
        event.preventDefault();
        $($(this).siblings('ol')).append(question);
    });

    $('#survey').on('click', '#add_answer', function(event) {
        event.preventDefault();
        $($(this).siblings('ul')).append(answer);
    });

    $('#survey').on('click', '.delete', function(event) {
        event.preventDefault();
        $(this).parent().remove();
    });
});