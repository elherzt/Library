describe ("BookYear", function(){
  it("should validate year to create a book", function(){
    loadFixtures("book_form.html");
    $("#book-year").val("something");
    $("#book-year").blur();
    expect($("#book_year_error")).toHaveText("Invalid Year");
  });
});
