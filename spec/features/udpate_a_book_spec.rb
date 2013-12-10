require "spec_helper"

feature "checking edit a book" do

  scenario "updating a existent book", :js, :selenium do
    book = create(:book) 
    visit book_path(book)
    click_on "Edit"
    page.should have_content("Editing Book")
    fill_in "book_name", with: "New book name"
    fill_in "book_editorial", with: "Editorial test"
    click_button "Update Book"
    page.should have_content("New book name")
    page.should have_content("Editorial test")
  end
end
