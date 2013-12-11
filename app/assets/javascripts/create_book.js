$(document).ready(function(){
  $("#book-button").blur(function(){
  year = $("#book-button").val();
  if ( IsNumeric(year) ) {
    $("#book_year_error").text("Valid Year");
  }
  else{
    $("#book_year_error").text("Invalid Year");
  }
  });
});
