
// Sample HTML form to create auto generating buttons
<div class="container">
<form action="/surveys" method="post"></p>
  <input type="text" name="possible[]" id="answer-template" class="template"/>
  <p><input type="text" name="title" placeholder="Survey Title"/></p>
  <p><input type="text" name="question" /></p>
  <div class="answers">
    <p><input type="text" name="possible[]" /><button id="button"> click me </button></p> // "possible[]" is interpreted by rack to generate an array of inputs
  </div>
  <p><input type="submit"/></p>
</form>
</div>

<button> click me </button>



$("#answer-template")
[<input type=​"text" name=​"possible[]​" id=​"answer-template" class=​"template">​]
var newField = $("#answer-template").clone();
undefined
newField
[<input type=​"text" name=​"possible[]​" id=​"answer-template" class=​"template">​]
newField.removeClass("template")
[<input type=​"text" name=​"possible[]​" id=​"answer-template" class>​]
newField.attr("id","")
[<input type=​"text" name=​"possible[]​" id class>​]
newField
[<input type=​"text" name=​"possible[]​" id class>​]
$("form")
[<form action=​"/​surveys" method=​"post">​…​</form>​]
$("form").append(newField)
[<form action=​"/​surveys" method=​"post">​…​</form>​]





// Add to application.css - this hides the question field with class 
.template {
    display: none;
}

// add to public/js/application.js

var newField = $("#answer-template").clone();
newField.removeClass("template")
newField.attr("id","")
newField
$("form")
$("form").append(newField)



