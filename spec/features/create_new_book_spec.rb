require "spec_helper"

feature "checking add a book" do

  scenario "creating a new book", :js, :selenium do
    book = attributes_for(:book) 
    visit root_path
    click_on "Add book"
    page.should have_content("Add a New Book")
    fill_in "book_name", with: book[:name]
    fill_in "book_author", with: book[:author]
    fill_in "book_isbn", with: book[:isbn]
    fill_in "book_editorial", with: book[:editorial]
    fill_in "book_year", with: book[:year]
    fill_in "book_pages", with: book[:pages]
    click_button "Create Book"
    page.should have_content(book[:name])
  end
end
